module loader_mesh 
 	#(parameter ADDRESS_SIZE=10, parameter DATA_SIZE=8, parameter NB_TILES=4)
	(CLK, RESET, ADDRESS, SELECT_TILE, ADDRESS_TILE);

	//inputs
	input CLK;
	input RESET;
	//input SELECT_MESH;
	input [ADDRESS_SIZE-1 : 0] ADDRESS;

	//outputs
    output reg [NB_TILES-1 : 0] SELECT_TILE;
    output reg [ADDRESS_SIZE-$clog2(NB_TILES)-1 : 0] ADDRESS_TILE;


   //VECTOR that will be shifted and will be used in SELECT_LEVEL_D    
    reg [NB_TILES-1:0] fill_nb_tiles_one=1;

    //states activation for address 
    reg address_state;
    integer counter = 0;

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

	always @ (posedge CLK) begin
		if(RESET==1'b0) begin
			address_state<=1'b0;
            counter = 0 ;
		end
	  if(RESET==1'b1) begin
			if (counter ==0) begin
				address_state<=1'b0;
                counter = counter + 1;
			end
            else if (counter ==1) begin 
                address_state<=1'b1;
                counter = counter + 1;
            end
             else if (counter ==3) begin 
                address_state<=1'b0;
                counter = 0;
            end
			else begin
				address_state<=1'b1;
                counter = counter + 1;
			end
		end
	end

	//Filling  address for level down
	always @(address_state)
	begin : loop1
		integer tile_i;

		//ADDRESS_tile PARAMETERIZATION
		if (address_state==1'b1) begin
			ADDRESS_TILE <= ADDRESS[ADDRESS_SIZE-$clog2(NB_TILES)-1 : 0];

			tile_i = decimal(ADDRESS[ADDRESS_SIZE-1 : ADDRESS_SIZE-$clog2(NB_TILES)]); //0011 = 3
			if(tile_i < NB_TILES) begin
				SELECT_TILE<=(fill_nb_tiles_one<<tile_i); //3 shift left   00001000
			end
			else begin
				SELECT_TILE[NB_TILES-1:0]<=0;
			end

		end

		if (address_state==1'b0) begin
			SELECT_TILE[NB_TILES-1:0]<=0;				
		end
		
	end


endmodule
