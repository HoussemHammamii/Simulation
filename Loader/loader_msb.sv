`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2021 10:20:32 AM
// Design Name: 
// Module Name: loader
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module loader_msb 
	#(
		parameter ADDRESS_SIZE=10, 
		parameter DATA_SIZE=8,
		parameter N_SIZE = 2,
		parameter NB_MSB = {8'd0, 8'd0, 8'd2, 8'd3},
		parameter STROBE = 67,
		parameter NB_STROBE = {8'd0,8'd0,8'd8,8'd17},
		parameter remainder = {8'd0,8'd0,8'd0,8'd1}
	)
	(CLK, RESET, ENABLE, ADDRESS, STROBE_MSB_OUT);
	input CLK;
	input RESET;
	input ENABLE;
	input [ADDRESS_SIZE-1:0] ADDRESS;
	output [STROBE-1:0] STROBE_MSB_OUT;
	
	integer word_index;
	integer output_offset;
	localparam lsb = {NB_MSB[0+:8]*NB_STROBE[0+:8] + NB_MSB[8+:8]*NB_STROBE[8+:8] + NB_MSB[16+:8]*NB_STROBE[16+:8], NB_MSB[0+:8]*NB_STROBE[0+:8] + NB_MSB[8+:8]*NB_STROBE[8+:8], NB_MSB[0+:8]*NB_STROBE[0+:8], 8'd0};
	localparam msb = {NB_MSB[24+:8]*NB_STROBE[24+:8], NB_MSB[16+:8]*NB_STROBE[16+:8], NB_MSB[8+:8]*NB_STROBE[8+:8], NB_MSB[0+:8]*NB_STROBE[0+:8]};
	localparam word_offset = {(NB_STROBE[16+:8]/DATA_SIZE)*NB_MSB[16+:8] + (NB_STROBE[8+:8]/DATA_SIZE)*NB_MSB[8+:8] + (NB_STROBE[0+:8]/DATA_SIZE)*NB_MSB[0+:8], (NB_STROBE[8+:8]/DATA_SIZE)*NB_MSB[8+:8] + (NB_STROBE[0+:8]/DATA_SIZE)*NB_MSB[0+:8], (NB_STROBE[0+:8]/DATA_SIZE)*NB_MSB[0+:8],8'b0} ;
	localparam word_remainder_offset = {((remainder[16+:8]== 8'b0) ? 8'b0 : NB_MSB[16+:8] * 8'b1) + ((remainder[8+:8]== 8'b0) ? 8'b0 : NB_MSB[8+:8] * 8'b1) + ((remainder[0+:8]== 8'b0) ? 8'b0 : NB_MSB[0+:8] * 8'b1), ((remainder[8+:8]== 8'b0) ? 8'b0 : NB_MSB[8+:8] * 8'b1) + ((remainder[0+:8]== 8'b0) ? 8'b0 : NB_MSB[0+:8] * 8'b1), (remainder[0+:8]== 8'b0) ? 8'b0 : NB_MSB[0+:8] * 8'b1, 8'b0};
	function automatic integer decimal;
	
		input [ADDRESS_SIZE-1:0] binary;
		integer index;
		integer temp;
	begin : convBlock	
		for(index=0;index<ADDRESS_SIZE;index=index+1) begin
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
	
	genvar i ;
	
	generate
		for (i = 0 ; i < N_SIZE ; i = i+1 ) begin 
		    if (remainder[i*8+:8] == 8'd0) begin
		        wire [ADDRESS_SIZE-1:0] ADDRESS_BUS;
		        wire select;
		        selector #(.ADDRESS_SIZE(ADDRESS_SIZE), .DATA_SIZE(DATA_SIZE), .NB_WORDS(NB_MSB[8*i+:8]*NB_STROBE[8*i+:8]/DATA_SIZE), .NB_SHIFTED_WORDS(word_offset[8*i+:8] + word_remainder_offset[8*i+:8])) selector (.CLK(CLK), .RESET(RESET), .ENABLE(ENABLE),.SELECT(select), .ADDRESS_INPUT(ADDRESS), .ADDRESS_OUTPUT(ADDRESS_BUS));
				loader_single_msb_without_remainder #(.ADDRESS_SIZE(ADDRESS_SIZE), .DATA_SIZE(DATA_SIZE), .NB_MSB(NB_MSB[i*8+:8]), .NB_STROBE_IN_MSB(NB_STROBE[i*8+:8])) Loader (.CLK(CLK), .RESET(RESET), .ENABLE(select), .ADDRESS(ADDRESS_BUS), .STROBE_MSB_OUT(STROBE_MSB_OUT[lsb[8*i+:8]+:msb[8*i+:8]]));
			end
			else begin
			    wire [ADDRESS_SIZE-1:0] ADDRESS_BUS;
			    wire select;
		        selector #(.ADDRESS_SIZE(ADDRESS_SIZE), .DATA_SIZE(DATA_SIZE), .NB_WORDS(NB_MSB[8*i+:8]*((NB_STROBE[8*i+:8]/DATA_SIZE)+1)), .NB_SHIFTED_WORDS(word_offset[8*i+:8] + word_remainder_offset[8*i+:8])) selector (.CLK(CLK), .RESET(RESET), .ENABLE(ENABLE), .SELECT(select), .ADDRESS_INPUT(ADDRESS), .ADDRESS_OUTPUT(ADDRESS_BUS));
				loader_single_msb_with_remainder  #(.ADDRESS_SIZE(ADDRESS_SIZE), .DATA_SIZE(DATA_SIZE), .NB_MSB(NB_MSB[i*8+:8]), .NB_STROBE_IN_MSB(NB_STROBE[i*8+:8]), .REMAINDER(remainder[i*8+:8])) Loader (.CLK(CLK), .RESET(RESET), .ENABLE(select), .ADDRESS(ADDRESS_BUS), .STROBE_MSB_OUT(STROBE_MSB_OUT[lsb[8*i+:8]+:msb[8*i+:8]]));
			end
		end
		endgenerate;
endmodule
	

module loader_single_msb_without_remainder
	#(
		parameter ADDRESS_SIZE=10, 
		parameter DATA_SIZE=8,
		parameter NB_MSB=8'd3,
		parameter NB_STROBE_IN_MSB=8'd16
	)
	(CLK,RESET,ENABLE, ADDRESS, STROBE_MSB_OUT);
	
	input CLK;
	input RESET;
	input ENABLE;
	input [ADDRESS_SIZE-1:0] ADDRESS;
	output reg [(NB_MSB*NB_STROBE_IN_MSB)-1:0] STROBE_MSB_OUT;
	parameter number_of_strobes = (NB_MSB*NB_STROBE_IN_MSB);
	parameter [DATA_SIZE-1:0] fill_fully_one= {DATA_SIZE{1'b1}};
	parameter [number_of_strobes-1:0] fill_msb_zero= {number_of_strobes{1'b0}};
	
	integer word_index;
	integer output_offset;
	
	function automatic integer decimal;
	
		input [ADDRESS_SIZE-1:0] binary;
		integer index;
		integer temp;
	begin : convBlock	
		for(index=0;index<ADDRESS_SIZE;index=index+1) begin
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
	
	always @(posedge CLK)
	begin
		if (RESET==1'b0) begin
			STROBE_MSB_OUT[number_of_strobes-1:0] <= fill_msb_zero;
		end
    end
    always @(ENABLE)		
    begin
			if (ENABLE==1'b1) begin
				word_index = decimal(ADDRESS[ADDRESS_SIZE-1:0]);
				output_offset = word_index * DATA_SIZE;
				STROBE_MSB_OUT[output_offset+:DATA_SIZE] <= fill_fully_one;
			end
			else begin
				STROBE_MSB_OUT[number_of_strobes-1:0] <= fill_msb_zero;
			end
		end
endmodule

module loader_single_msb_with_remainder
	#(
		parameter ADDRESS_SIZE = 10, 
		parameter DATA_SIZE = 8,
		parameter NB_MSB = 8'd3,
		parameter NB_STROBE_IN_MSB = 8'd15,
		parameter REMAINDER = 8'd3
	)
	(CLK,RESET,ENABLE, ADDRESS, STROBE_MSB_OUT);
	
	input CLK;
	input RESET;
	input ENABLE;
	input [ADDRESS_SIZE-1:0] ADDRESS;
	output reg [(NB_MSB*NB_STROBE_IN_MSB)-1:0] STROBE_MSB_OUT;
	parameter number_of_strobes = (NB_MSB*NB_STROBE_IN_MSB);
	parameter [DATA_SIZE-1:0] fill_fully_one= {DATA_SIZE{1'b1}};
	parameter [number_of_strobes-1:0] fill_msb_zero= {number_of_strobes{1'b0}};
	parameter [REMAINDER-1:0] fill_remainder_one = {REMAINDER{1'b1}};
	
	integer word_index;
	integer msb_index;
	integer output_offset;
	integer is_remainder;
	
	function automatic integer decimal;
	
		input [ADDRESS_SIZE-1:0] binary;
		integer index;
		integer temp;
	begin : convBlock	
		for(index=0;index<ADDRESS_SIZE;index=index+1) begin
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
	
	always @(posedge CLK)
	begin
		if (RESET==1'b0) begin
			STROBE_MSB_OUT[number_of_strobes-1:0] <= fill_msb_zero;
		end
    end
    always @(ENABLE)		
    begin
			if (ENABLE==1'b1) begin
				word_index = decimal(ADDRESS[ADDRESS_SIZE-1:0]) + 1;
				msb_index = (word_index-1) / ((NB_STROBE_IN_MSB/DATA_SIZE) + 1) + 1;
				is_remainder = word_index % ((NB_STROBE_IN_MSB/DATA_SIZE) + 1);
				output_offset = ((word_index -msb_index) * DATA_SIZE) + (msb_index - 1) *REMAINDER;
				if (is_remainder == 0 ) begin 
					STROBE_MSB_OUT[output_offset+:REMAINDER] <= fill_remainder_one;
				end 
				else begin 
					STROBE_MSB_OUT[output_offset+:DATA_SIZE] <= fill_fully_one;
				end
			end
			else begin
				STROBE_MSB_OUT[number_of_strobes-1:0] <= fill_msb_zero;
			end
		end
endmodule

module selector 
#( 
parameter ADDRESS_SIZE= 8'd10,
parameter DATA_SIZE = 8'd10,
parameter NB_WORDS = 8'd9,
parameter NB_SHIFTED_WORDS = 8'd10
)
(CLK,RESET,ENABLE,SELECT,ADDRESS_INPUT,ADDRESS_OUTPUT);

input CLK;
input RESET;
input ENABLE;
input [ADDRESS_SIZE-1:0] ADDRESS_INPUT;
output reg [ADDRESS_SIZE-1:0] ADDRESS_OUTPUT;
output reg SELECT ;
localparam [ADDRESS_SIZE-1:0] fill_address_zero = {ADDRESS_SIZE{1'b0}};

always @(posedge CLK)
    begin
    if (RESET==1'b0) begin
        ADDRESS_OUTPUT <= fill_address_zero;
    end
end
always @(ENABLE)
begin
    if (ENABLE == 1'b1) begin 
        if ( NB_SHIFTED_WORDS <= ADDRESS_INPUT) begin
           if (ADDRESS_INPUT < NB_SHIFTED_WORDS + NB_WORDS) begin
            	ADDRESS_OUTPUT <= ADDRESS_INPUT - NB_SHIFTED_WORDS;
            	SELECT <= 1'b1;
           end
           else begin
           	ADDRESS_OUTPUT <= fill_address_zero;
            	SELECT <= 1'b0;
           end
        end
        else 
        begin
            ADDRESS_OUTPUT <= fill_address_zero;
            SELECT <= 1'b0;
        end
    end
    else 
    begin
        ADDRESS_OUTPUT <= fill_address_zero;
        SELECT <= 1'b0;
    end
    end
endmodule	
	
