module msbGeneric 
#(
	parameter NB_INPUTS=40, 
	parameter NB_OUTPUTS=8, 
	parameter DATA_SIZE=8, 
	parameter STROBE_SIZE=48
)

(
	DATA, 
	STROBE, 
	INPUTS, 
	OUTPUTS
);

	input [DATA_SIZE-1:0] DATA;
	input [STROBE_SIZE-1:0] STROBE;
	input [NB_INPUTS-1:0] INPUTS;
	output [NB_OUTPUTS-1:0] OUTPUTS;
		

	wire [STROBE_SIZE-1:0] SRAM_MSB;
	parameter division=STROBE_SIZE/DATA_SIZE;
	parameter remainder=STROBE_SIZE%DATA_SIZE;

	if(STROBE_SIZE>DATA_SIZE)
	begin
		genvar j;
		for (j=0;j<division;j=j+1)
		begin
			genvar k;

	
			for (k=0;k<DATA_SIZE;k=k+1)
			begin
				
				sram sram_x (
		  		.d(DATA[k]), 
		  		.nq(SRAM_MSB[DATA_SIZE*j+k]),
		  		.strobe(STROBE[DATA_SIZE*j+k]));
				
			end
		end
		genvar k;
		for(k=0;k<remainder;k=k+1)
		begin
			sram sram_x (
		  		.d(DATA[k]), 
		  		.nq(SRAM_MSB[DATA_SIZE*division+k]),
		  		.strobe(STROBE[DATA_SIZE*division+k]));
				
			
		end
	end
	else 
		begin
		genvar j;
		for(j=0;j<DATA_SIZE;j=j+1)
			begin
				sram sram_x (
		  		.d(DATA[j]), 
		  		.nq(SRAM_MSB[j]),
		  		.strobe(STROBE[j]));
			end
			

		end

		

	parameter selectorSize=$clog2(NB_INPUTS);
	parameter muxSize=NB_INPUTS;


	genvar i;
	for (i=0;i<NB_OUTPUTS;i=i+1)
	begin
	   if(selectorSize == 0) begin
	       muxGeneric2 #(.muxSize(muxSize)) mux_x (
			.selector(SRAM_MSB[i:i]), 
			.d(INPUTS), 
			.Q(OUTPUTS[i])
		);
	   end
	   else begin
            muxGeneric2 #(.muxSize(muxSize)) mux_x (
                .selector(SRAM_MSB[(selectorSize*(i+1))-1:selectorSize*i]), 
                .d(INPUTS), 
                .Q(OUTPUTS[i])
            );
		end
	end


endmodule
