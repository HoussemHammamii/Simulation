module bleGeneric 
# (
    parameter NB_INPUTS=4, 
    parameter DATA_SIZE=8,
    parameter STROBE_SIZE=17
) 
(
  input [NB_INPUTS-1:0] INPUTS, 
  input [DATA_SIZE-1:0] DATA, 
  input [NB_INPUTS**2:0] STROBE, 
  input CLK, 
  output OUTPUT
 );
	//parameter STROBE_SIZE=NB_INPUTS**2+1;
	wire [NB_INPUTS**2:0] Q_inter;
	wire lut_output;
	wire ff_out;
	genvar j;
	
	
	
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
		  		.nq(Q_inter[DATA_SIZE*j+k]),
		  		.strobe(STROBE[DATA_SIZE*j+k]));
				
			end
		end
		genvar k;
		for(k=0;k<remainder;k=k+1)
		begin
			sram sram_x (
		  		.d(DATA[k]), 
		  		.nq(Q_inter[DATA_SIZE*division+k]),
		  		.strobe(STROBE[DATA_SIZE*division+k]));
				
			
		end
	end
	else 
		begin
		genvar j;
		for(j=0;j<STROBE_SIZE;j=j+1)
			begin
				sram sram_x (
		  		.d(DATA[j]), 
		  		.nq(Q_inter[j]),
		  		.strobe(STROBE[j]));
			end
			

		end


	parameter muxSize=NB_INPUTS**2;

  muxGeneric2 #(.muxSize(muxSize)) 
  muxS(.selector(INPUTS[NB_INPUTS-1:0]),.d(Q_inter[muxSize-1:0]),.Q(lut_output));

	DFF   flip_flop_clb (.clk(CLK), .d(lut_output), .q(ff_out));

	mux2 mx_out (.cmd(Q_inter[NB_INPUTS**2]),.i0(lut_output),.i1(ff_out), .Q(OUTPUT));
	
endmodule 