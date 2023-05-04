module loader_tile 
 	#(parameter ADDRESS_SIZE=10, parameter DATA_SIZE=8, parameter NB_ELEMENTS=2)
	(CLK, RESET, SELECT, ADDRESS, SELECT_SB_OR_CLUSTER, ADDRESS_SB_OR_CLUSTER);

	//inputs
	input CLK;
	input RESET;
	input SELECT;
	input [ADDRESS_SIZE-1 : 0] ADDRESS;

	//outputs
    output reg [NB_ELEMENTS-1 : 0] SELECT_SB_OR_CLUSTER;
    output reg [ADDRESS_SIZE-$clog2(NB_ELEMENTS)-1 : 0] ADDRESS_SB_OR_CLUSTER;


   //VECTOR that will be shifted and will be used in SELECT_LEVEL_D    
    reg [NB_ELEMENTS-1:0] fill_nb_elements_one=1;

    //states activation for address 
    reg address_state;


	// CONVERTING A BINARY TO THE CORRESPONDING INTEGER VALUE 
    function automatic integer decimal;
	
		input [ADDRESS_SIZE-1:0] binary;
		integer index;
		integer temp;
		begin : convBlock	
			for(index=0;index<ADDRESS_SIZE;index=index+1)
			begin
				if(index==0) begin
					temp=(2**index)*binary[index];
				end
				else begin
					temp= temp+(2**index)*binary[index];
				end
				decimal=temp;
			end
	
		end
 	endfunction

 	//Set up state for address_state

	always @(posedge CLK) begin
	if (RESET==1'b0) begin
		address_state<=1'b0;
	end
	  if(RESET==1'b1) begin
			if(address_state==1'b0) begin
				address_state<=1'b1;
			end
			else begin
				address_state<=1'b0;
			end
	  end
	end

	//Filling  address for level down
	always @(SELECT)
	begin : loop1
		integer element_i;

		//ADDRESS PARAMETERIZATION
		if (SELECT==1'b1) begin

			if(NB_ELEMENTS == 1) begin
				SELECT_SB_OR_CLUSTER<=(fill_nb_elements_one<<0);
				ADDRESS_SB_OR_CLUSTER <= ADDRESS[ADDRESS_SIZE-2 : 0];
			end
			else begin
				ADDRESS_SB_OR_CLUSTER <= ADDRESS[ADDRESS_SIZE-$clog2(NB_ELEMENTS)-1 : 0];
				element_i = decimal(ADDRESS[ADDRESS_SIZE-1 : ADDRESS_SIZE-1]);
				if(element_i < NB_ELEMENTS) begin
					SELECT_SB_OR_CLUSTER<=(fill_nb_elements_one<<element_i); //3 shift left   00001000
				end
				else begin
					SELECT_SB_OR_CLUSTER[NB_ELEMENTS-1:0]<=0;
				end

			end
		end
		if (SELECT==1'b0) begin
			SELECT_SB_OR_CLUSTER[NB_ELEMENTS-1:0]<=0;				
		end
		
	end


endmodule
