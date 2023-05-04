
module loader_type2_addressSize_9 
(
   input   CLK
,  input   RESET
,  input   SELECT_LEVEL
,  input  [8:0]  ADDRESS
,  output [5:0]  ADDRESS_LEVEL_D
,  output [3:0]  SELECT_LEVEL_D
,  output [63:0]  STROBE_DMSB
,  output [31:0]  STROBE_UMSB

);
parameter ADDRESS_SIZE = 9;
parameter DATA_SIZE = 8;
parameter HAS_DMSBOUT = 0;
parameter NB_SLAVES = 4;
parameter SIZE_STROBE_DMSB = 64;
parameter SIZE_STROBE_DMSBOUT = 0;
parameter SIZE_STROBE_UMSB = 32;
parameter N_SIZE_DMSB = 1;
parameter N_SIZE_UMSB = 1;
parameter N_SIZE_DMSBOUT = 0;
parameter NB_DMSB = {8'd0,8'd0,8'd0,8'd16};
parameter NB_STROBE_DMSB = {8'd0,8'd0,8'd0,8'd4};
parameter remainder_DMSB = {8'd0,8'd0,8'd0,8'd4};
parameter NB_DMSBOUT = {8'd0,8'd0,8'd0,8'd0};
parameter NB_STROBE_DMSBOUT = {8'd0,8'd0,8'd0,8'd0};
parameter remainder_DMSBOUT = {8'd0,8'd0,8'd0,8'd0};
parameter NB_UMSB = {8'd0,8'd0,8'd0,8'd4};
parameter NB_STROBE_UMSB = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_UMSB = {8'd0,8'd0,8'd0,8'd0};


loader_type2 #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .HAS_DMSBOUT ( HAS_DMSBOUT )
,  .NB_SLAVES ( NB_SLAVES )
,  .SIZE_STROBE_DMSB ( SIZE_STROBE_DMSB )
,  .SIZE_STROBE_DMSBOUT ( SIZE_STROBE_DMSBOUT )
,  .SIZE_STROBE_UMSB ( SIZE_STROBE_UMSB )
,  .N_SIZE_DMSB ( N_SIZE_DMSB )
,  .N_SIZE_UMSB ( N_SIZE_UMSB )
,  .N_SIZE_DMSBOUT ( N_SIZE_DMSBOUT )
,  .NB_DMSB ( NB_DMSB )
,  .NB_STROBE_DMSB ( NB_STROBE_DMSB )
,  .remainder_DMSB ( remainder_DMSB )
,  .NB_DMSBOUT ( NB_DMSBOUT )
,  .NB_STROBE_DMSBOUT ( NB_STROBE_DMSBOUT )
,  .remainder_DMSBOUT ( remainder_DMSBOUT )
,  .NB_UMSB ( NB_UMSB )
,  .NB_STROBE_UMSB ( NB_STROBE_UMSB )
,  .remainder_UMSB ( remainder_UMSB )
)
loader_type2_addresssize_9 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT_LEVEL ( SELECT_LEVEL )
,  .STROBE_DMSB ( STROBE_DMSB )
,  .STROBE_UMSB ( STROBE_UMSB )
,  .SELECT_LEVEL_D ( SELECT_LEVEL_D )
,  .ADDRESS_LEVEL_D ( ADDRESS_LEVEL_D )

);
endmodule

module UMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
umsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_1_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_4 
(
   input  [7:0]  DATA
,  input  [0:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [3:0]  STROBE

);
parameter NB_INPUTS = 1;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 4;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_1_data_size_8_nb_outputs_4_strobe_size_4 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module loader_0_addressSize_6 
(
   input   CLK
,  input   RESET
,  input   SELECT_LEVEL
,  input  [5:0]  ADDRESS
,  output [67:0]  STROBE_BLE
,  output [59:0]  STROBE_DMSB
,  output [7:0]  STROBE_DMSBOUT
,  output [19:0]  STROBE_UMSB

);
parameter ADDRESS_SIZE = 6;
parameter DATA_SIZE = 8;
parameter HAS_DMSBOUT = 1;
parameter NB_SLAVES = 4;
parameter SIZE_STROBE_BLE = 68;
parameter SIZE_STROBE_DMSB = 60;
parameter SIZE_STROBE_DMSBOUT = 8;
parameter SIZE_STROBE_UMSB = 20;
parameter N_SIZE_DMSB = 1;
parameter N_SIZE_UMSB = 1;
parameter N_SIZE_DMSBOUT = 1;
parameter NB_DMSB = {8'd0,8'd0,8'd0,8'd4};
parameter NB_STROBE_DMSB = {8'd0,8'd0,8'd0,8'd15};
parameter remainder_DMSB = {8'd0,8'd0,8'd0,8'd7};
parameter NB_DMSBOUT = {8'd0,8'd0,8'd0,8'd1};
parameter NB_STROBE_DMSBOUT = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_DMSBOUT = {8'd0,8'd0,8'd0,8'd0};
parameter NB_UMSB = {8'd0,8'd0,8'd0,8'd1};
parameter NB_STROBE_UMSB = {8'd0,8'd0,8'd0,8'd20};
parameter remainder_UMSB = {8'd0,8'd0,8'd0,8'd4};


loader_0 #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .HAS_DMSBOUT ( HAS_DMSBOUT )
,  .NB_SLAVES ( NB_SLAVES )
,  .SIZE_STROBE_BLE ( SIZE_STROBE_BLE )
,  .SIZE_STROBE_DMSB ( SIZE_STROBE_DMSB )
,  .SIZE_STROBE_DMSBOUT ( SIZE_STROBE_DMSBOUT )
,  .SIZE_STROBE_UMSB ( SIZE_STROBE_UMSB )
,  .N_SIZE_DMSB ( N_SIZE_DMSB )
,  .N_SIZE_UMSB ( N_SIZE_UMSB )
,  .N_SIZE_DMSBOUT ( N_SIZE_DMSBOUT )
,  .NB_DMSB ( NB_DMSB )
,  .NB_STROBE_DMSB ( NB_STROBE_DMSB )
,  .remainder_DMSB ( remainder_DMSB )
,  .NB_DMSBOUT ( NB_DMSBOUT )
,  .NB_STROBE_DMSBOUT ( NB_STROBE_DMSBOUT )
,  .remainder_DMSBOUT ( remainder_DMSBOUT )
,  .NB_UMSB ( NB_UMSB )
,  .NB_STROBE_UMSB ( NB_STROBE_UMSB )
,  .remainder_UMSB ( remainder_UMSB )
)
loader_0_addresssize_6 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT_LEVEL ( SELECT_LEVEL )
,  .STROBE_BLE ( STROBE_BLE )
,  .STROBE_DMSB ( STROBE_DMSB )
,  .STROBE_DMSBOUT ( STROBE_DMSBOUT )
,  .STROBE_UMSB ( STROBE_UMSB )

);
endmodule

module UMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
umsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_1_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_4 
(
   input  [7:0]  DATA
,  input  [0:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [3:0]  STROBE

);
parameter NB_INPUTS = 1;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 4;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_1_data_size_8_nb_outputs_4_strobe_size_4 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module UMSB_NB_INPUTS_20_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_20 
(
   input  [7:0]  DATA
,  input  [19:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [19:0]  STROBE

);
parameter NB_INPUTS = 20;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 20;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
umsb_nb_inputs_20_data_size_8_nb_outputs_4_strobe_size_20 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_5_DATA_SIZE_8_NB_OUTPUTS_5_STROBE_SIZE_15 
(
   input  [7:0]  DATA
,  input  [4:0]  INPUTS
,  output [4:0]  OUTPUTS
,  input  [14:0]  STROBE

);
parameter NB_INPUTS = 5;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 5;
parameter STROBE_SIZE = 15;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_5_data_size_8_nb_outputs_5_strobe_size_15 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module BLE_NB_INPUTS_4_DATA_SIZE_8 
(
   input   CLK
,  output  OUTPUT
,  input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  input  [16:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;


bleGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
)
ble_nb_inputs_4_data_size_8 (
   .CLK ( CLK )
,  .OUTPUT ( OUTPUT )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module loader_sb_corner_boundary_addS_9_strDL2_80_strDL1_32_strU_32 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [8:0]  ADDRESS
,  output [31:0]  STROBE_DMSBL1
,  output [79:0]  STROBE_DMSBL2
,  output [7:0]  STROBE_DMSBOUT
,  output [31:0]  STROBE_UMSB

);
parameter ADDRESS_SIZE = 9;
parameter DATA_SIZE = 8;
parameter SIZE_STROBE_DMSBOUT = 8;
parameter SIZE_STROBE_DMSBL2 = 80;
parameter SIZE_STROBE_DMSBL1 = 32;
parameter SIZE_STROBE_UMSB = 32;
parameter N_SIZE_DMSBL2 = 2;
parameter N_SIZE_DMSBL1 = 1;
parameter N_SIZE_UMSB = 1;
parameter N_SIZE_DMSBOUT = 1;
parameter NB_ELEMENTS = 4;
parameter NB_DMSBL2 = {8'd0,8'd0,8'd8,8'd4};
parameter NB_STROBE_DMSBL2 = {8'd0,8'd0,8'd6,8'd8};
parameter remainder_DMSBL2 = {8'd0,8'd0,8'd6,8'd0};
parameter NB_DMSBL1 = {8'd0,8'd0,8'd0,8'd16};
parameter NB_STROBE_DMSBL1 = {8'd0,8'd0,8'd0,8'd2};
parameter remainder_DMSBL1 = {8'd0,8'd0,8'd0,8'd2};
parameter NB_UMSB = {8'd0,8'd0,8'd0,8'd4};
parameter NB_STROBE_UMSB = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_UMSB = {8'd0,8'd0,8'd0,8'd0};
parameter NB_DMSBOUT = {8'd0,8'd0,8'd0,8'd1};
parameter NB_STROBE_DMSBOUT = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_DMSBOUT = {8'd0,8'd0,8'd0,8'd0};


loader_sb_corner_boundary #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .SIZE_STROBE_DMSBOUT ( SIZE_STROBE_DMSBOUT )
,  .SIZE_STROBE_DMSBL2 ( SIZE_STROBE_DMSBL2 )
,  .SIZE_STROBE_DMSBL1 ( SIZE_STROBE_DMSBL1 )
,  .SIZE_STROBE_UMSB ( SIZE_STROBE_UMSB )
,  .N_SIZE_DMSBL2 ( N_SIZE_DMSBL2 )
,  .N_SIZE_DMSBL1 ( N_SIZE_DMSBL1 )
,  .N_SIZE_UMSB ( N_SIZE_UMSB )
,  .N_SIZE_DMSBOUT ( N_SIZE_DMSBOUT )
,  .NB_ELEMENTS ( NB_ELEMENTS )
,  .NB_DMSBL2 ( NB_DMSBL2 )
,  .NB_STROBE_DMSBL2 ( NB_STROBE_DMSBL2 )
,  .remainder_DMSBL2 ( remainder_DMSBL2 )
,  .NB_DMSBL1 ( NB_DMSBL1 )
,  .NB_STROBE_DMSBL1 ( NB_STROBE_DMSBL1 )
,  .remainder_DMSBL1 ( remainder_DMSBL1 )
,  .NB_UMSB ( NB_UMSB )
,  .NB_STROBE_UMSB ( NB_STROBE_UMSB )
,  .remainder_UMSB ( remainder_UMSB )
,  .NB_DMSBOUT ( NB_DMSBOUT )
,  .NB_STROBE_DMSBOUT ( NB_STROBE_DMSBOUT )
,  .remainder_DMSBOUT ( remainder_DMSBOUT )
)
loader_sb_corner_boundary_adds_9_strdl2_80_strdl1_32_stru_32 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .STROBE_DMSBL2 ( STROBE_DMSBL2 )
,  .STROBE_DMSBL1 ( STROBE_DMSBL1 )
,  .STROBE_DMSBOUT ( STROBE_DMSBOUT )
,  .STROBE_UMSB ( STROBE_UMSB )

);
endmodule

module DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_3_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_6 
(
   input  [7:0]  DATA
,  input  [2:0]  INPUTS
,  output [2:0]  OUTPUTS
,  input  [5:0]  STROBE

);
parameter NB_INPUTS = 3;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 3;
parameter STROBE_SIZE = 6;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_3_data_size_8_nb_outputs_3_strobe_size_6 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module UMSB_NB_INPUTS_3_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [2:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 3;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
umsb_nb_inputs_3_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_2_STROBE_SIZE_2 
(
   input  [7:0]  DATA
,  input  [1:0]  INPUTS
,  output [1:0]  OUTPUTS
,  input  [1:0]  STROBE

);
parameter NB_INPUTS = 2;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 2;
parameter STROBE_SIZE = 2;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_2_data_size_8_nb_outputs_2_strobe_size_2 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_16_DATA_SIZE_8_NB_OUTPUTS_2_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [15:0]  INPUTS
,  output [1:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 16;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 2;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_16_data_size_8_nb_outputs_2_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module loader_tile_addS_10_dataS_8_nbE_1 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [9:0]  ADDRESS
,  output [8:0]  ADDRESS_SB_OR_CLUSTER
,  output [0:0]  SELECT_SB_OR_CLUSTER

);
parameter ADDRESS_SIZE = 10;
parameter DATA_SIZE = 8;
parameter NB_ELEMENTS = 1;


loader_tile #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_ELEMENTS ( NB_ELEMENTS )
)
loader_tile_adds_10_datas_8_nbe_1 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .ADDRESS_SB_OR_CLUSTER ( ADDRESS_SB_OR_CLUSTER )
,  .SELECT_SB_OR_CLUSTER ( SELECT_SB_OR_CLUSTER )

);
endmodule

module loader_sb_corner_boundary_addS_9_strDL2_124_strDL1_48_strU_32 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [8:0]  ADDRESS
,  output [47:0]  STROBE_DMSBL1
,  output [123:0]  STROBE_DMSBL2
,  output [7:0]  STROBE_DMSBOUT
,  output [31:0]  STROBE_UMSB

);
parameter ADDRESS_SIZE = 9;
parameter DATA_SIZE = 8;
parameter SIZE_STROBE_DMSBOUT = 8;
parameter SIZE_STROBE_DMSBL2 = 124;
parameter SIZE_STROBE_DMSBL1 = 48;
parameter SIZE_STROBE_UMSB = 32;
parameter N_SIZE_DMSBL2 = 2;
parameter N_SIZE_DMSBL1 = 1;
parameter N_SIZE_UMSB = 1;
parameter N_SIZE_DMSBOUT = 1;
parameter NB_ELEMENTS = 4;
parameter NB_DMSBL2 = {8'd0,8'd0,8'd8,8'd4};
parameter NB_STROBE_DMSBL2 = {8'd0,8'd0,8'd8,8'd15};
parameter remainder_DMSBL2 = {8'd0,8'd0,8'd0,8'd7};
parameter NB_DMSBL1 = {8'd0,8'd0,8'd0,8'd16};
parameter NB_STROBE_DMSBL1 = {8'd0,8'd0,8'd0,8'd3};
parameter remainder_DMSBL1 = {8'd0,8'd0,8'd0,8'd3};
parameter NB_UMSB = {8'd0,8'd0,8'd0,8'd4};
parameter NB_STROBE_UMSB = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_UMSB = {8'd0,8'd0,8'd0,8'd0};
parameter NB_DMSBOUT = {8'd0,8'd0,8'd0,8'd1};
parameter NB_STROBE_DMSBOUT = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_DMSBOUT = {8'd0,8'd0,8'd0,8'd0};


loader_sb_corner_boundary #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .SIZE_STROBE_DMSBOUT ( SIZE_STROBE_DMSBOUT )
,  .SIZE_STROBE_DMSBL2 ( SIZE_STROBE_DMSBL2 )
,  .SIZE_STROBE_DMSBL1 ( SIZE_STROBE_DMSBL1 )
,  .SIZE_STROBE_UMSB ( SIZE_STROBE_UMSB )
,  .N_SIZE_DMSBL2 ( N_SIZE_DMSBL2 )
,  .N_SIZE_DMSBL1 ( N_SIZE_DMSBL1 )
,  .N_SIZE_UMSB ( N_SIZE_UMSB )
,  .N_SIZE_DMSBOUT ( N_SIZE_DMSBOUT )
,  .NB_ELEMENTS ( NB_ELEMENTS )
,  .NB_DMSBL2 ( NB_DMSBL2 )
,  .NB_STROBE_DMSBL2 ( NB_STROBE_DMSBL2 )
,  .remainder_DMSBL2 ( remainder_DMSBL2 )
,  .NB_DMSBL1 ( NB_DMSBL1 )
,  .NB_STROBE_DMSBL1 ( NB_STROBE_DMSBL1 )
,  .remainder_DMSBL1 ( remainder_DMSBL1 )
,  .NB_UMSB ( NB_UMSB )
,  .NB_STROBE_UMSB ( NB_STROBE_UMSB )
,  .remainder_UMSB ( remainder_UMSB )
,  .NB_DMSBOUT ( NB_DMSBOUT )
,  .NB_STROBE_DMSBOUT ( NB_STROBE_DMSBOUT )
,  .remainder_DMSBOUT ( remainder_DMSBOUT )
)
loader_sb_corner_boundary_adds_9_strdl2_124_strdl1_48_stru_32 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .STROBE_DMSBL2 ( STROBE_DMSBL2 )
,  .STROBE_DMSBL1 ( STROBE_DMSBL1 )
,  .STROBE_DMSBOUT ( STROBE_DMSBOUT )
,  .STROBE_UMSB ( STROBE_UMSB )

);
endmodule

module DMSB_NB_INPUTS_5_DATA_SIZE_8_NB_OUTPUTS_5_STROBE_SIZE_15 
(
   input  [7:0]  DATA
,  input  [4:0]  INPUTS
,  output [4:0]  OUTPUTS
,  input  [14:0]  STROBE

);
parameter NB_INPUTS = 5;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 5;
parameter STROBE_SIZE = 15;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_5_data_size_8_nb_outputs_5_strobe_size_15 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module UMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
umsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 
(
   input  [7:0]  DATA
,  input  [1:0]  INPUTS
,  output [2:0]  OUTPUTS
,  input  [2:0]  STROBE

);
parameter NB_INPUTS = 2;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 3;
parameter STROBE_SIZE = 3;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_2_data_size_8_nb_outputs_3_strobe_size_3 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_16_DATA_SIZE_8_NB_OUTPUTS_2_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [15:0]  INPUTS
,  output [1:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 16;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 2;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_16_data_size_8_nb_outputs_2_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module UMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
umsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_1_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_4 
(
   input  [7:0]  DATA
,  input  [0:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [3:0]  STROBE

);
parameter NB_INPUTS = 1;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 4;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_1_data_size_8_nb_outputs_4_strobe_size_4 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module loader_tile_addS_10_dataS_8_nbE_2 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [9:0]  ADDRESS
,  output [8:0]  ADDRESS_SB_OR_CLUSTER
,  output [1:0]  SELECT_SB_OR_CLUSTER

);
parameter ADDRESS_SIZE = 10;
parameter DATA_SIZE = 8;
parameter NB_ELEMENTS = 2;


loader_tile #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_ELEMENTS ( NB_ELEMENTS )
)
loader_tile_adds_10_datas_8_nbe_2 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .ADDRESS_SB_OR_CLUSTER ( ADDRESS_SB_OR_CLUSTER )
,  .SELECT_SB_OR_CLUSTER ( SELECT_SB_OR_CLUSTER )

);
endmodule

module loader_sb_corner_boundary_addS_9_strDL2_80_strDL1_32_strU_32 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [8:0]  ADDRESS
,  output [31:0]  STROBE_DMSBL1
,  output [79:0]  STROBE_DMSBL2
,  output [7:0]  STROBE_DMSBOUT
,  output [31:0]  STROBE_UMSB

);
parameter ADDRESS_SIZE = 9;
parameter DATA_SIZE = 8;
parameter SIZE_STROBE_DMSBOUT = 8;
parameter SIZE_STROBE_DMSBL2 = 80;
parameter SIZE_STROBE_DMSBL1 = 32;
parameter SIZE_STROBE_UMSB = 32;
parameter N_SIZE_DMSBL2 = 2;
parameter N_SIZE_DMSBL1 = 1;
parameter N_SIZE_UMSB = 1;
parameter N_SIZE_DMSBOUT = 1;
parameter NB_ELEMENTS = 4;
parameter NB_DMSBL2 = {8'd0,8'd0,8'd8,8'd4};
parameter NB_STROBE_DMSBL2 = {8'd0,8'd0,8'd6,8'd8};
parameter remainder_DMSBL2 = {8'd0,8'd0,8'd6,8'd0};
parameter NB_DMSBL1 = {8'd0,8'd0,8'd0,8'd16};
parameter NB_STROBE_DMSBL1 = {8'd0,8'd0,8'd0,8'd2};
parameter remainder_DMSBL1 = {8'd0,8'd0,8'd0,8'd2};
parameter NB_UMSB = {8'd0,8'd0,8'd0,8'd4};
parameter NB_STROBE_UMSB = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_UMSB = {8'd0,8'd0,8'd0,8'd0};
parameter NB_DMSBOUT = {8'd0,8'd0,8'd0,8'd1};
parameter NB_STROBE_DMSBOUT = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_DMSBOUT = {8'd0,8'd0,8'd0,8'd0};


loader_sb_corner_boundary #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .SIZE_STROBE_DMSBOUT ( SIZE_STROBE_DMSBOUT )
,  .SIZE_STROBE_DMSBL2 ( SIZE_STROBE_DMSBL2 )
,  .SIZE_STROBE_DMSBL1 ( SIZE_STROBE_DMSBL1 )
,  .SIZE_STROBE_UMSB ( SIZE_STROBE_UMSB )
,  .N_SIZE_DMSBL2 ( N_SIZE_DMSBL2 )
,  .N_SIZE_DMSBL1 ( N_SIZE_DMSBL1 )
,  .N_SIZE_UMSB ( N_SIZE_UMSB )
,  .N_SIZE_DMSBOUT ( N_SIZE_DMSBOUT )
,  .NB_ELEMENTS ( NB_ELEMENTS )
,  .NB_DMSBL2 ( NB_DMSBL2 )
,  .NB_STROBE_DMSBL2 ( NB_STROBE_DMSBL2 )
,  .remainder_DMSBL2 ( remainder_DMSBL2 )
,  .NB_DMSBL1 ( NB_DMSBL1 )
,  .NB_STROBE_DMSBL1 ( NB_STROBE_DMSBL1 )
,  .remainder_DMSBL1 ( remainder_DMSBL1 )
,  .NB_UMSB ( NB_UMSB )
,  .NB_STROBE_UMSB ( NB_STROBE_UMSB )
,  .remainder_UMSB ( remainder_UMSB )
,  .NB_DMSBOUT ( NB_DMSBOUT )
,  .NB_STROBE_DMSBOUT ( NB_STROBE_DMSBOUT )
,  .remainder_DMSBOUT ( remainder_DMSBOUT )
)
loader_sb_corner_boundary_adds_9_strdl2_80_strdl1_32_stru_32 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .STROBE_DMSBL2 ( STROBE_DMSBL2 )
,  .STROBE_DMSBL1 ( STROBE_DMSBL1 )
,  .STROBE_DMSBOUT ( STROBE_DMSBOUT )
,  .STROBE_UMSB ( STROBE_UMSB )

);
endmodule

module DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_3_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_6 
(
   input  [7:0]  DATA
,  input  [2:0]  INPUTS
,  output [2:0]  OUTPUTS
,  input  [5:0]  STROBE

);
parameter NB_INPUTS = 3;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 3;
parameter STROBE_SIZE = 6;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_3_data_size_8_nb_outputs_3_strobe_size_6 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module UMSB_NB_INPUTS_3_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [2:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 3;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
umsb_nb_inputs_3_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_2_STROBE_SIZE_2 
(
   input  [7:0]  DATA
,  input  [1:0]  INPUTS
,  output [1:0]  OUTPUTS
,  input  [1:0]  STROBE

);
parameter NB_INPUTS = 2;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 2;
parameter STROBE_SIZE = 2;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_2_data_size_8_nb_outputs_2_strobe_size_2 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_16_DATA_SIZE_8_NB_OUTPUTS_2_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [15:0]  INPUTS
,  output [1:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 16;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 2;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_16_data_size_8_nb_outputs_2_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module loader_tile_addS_10_dataS_8_nbE_2 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [9:0]  ADDRESS
,  output [8:0]  ADDRESS_SB_OR_CLUSTER
,  output [1:0]  SELECT_SB_OR_CLUSTER

);
parameter ADDRESS_SIZE = 10;
parameter DATA_SIZE = 8;
parameter NB_ELEMENTS = 2;


loader_tile #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_ELEMENTS ( NB_ELEMENTS )
)
loader_tile_adds_10_datas_8_nbe_2 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .ADDRESS_SB_OR_CLUSTER ( ADDRESS_SB_OR_CLUSTER )
,  .SELECT_SB_OR_CLUSTER ( SELECT_SB_OR_CLUSTER )

);
endmodule

module loader_sb_corner_boundary_addS_9_strDL2_124_strDL1_48_strU_32 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [8:0]  ADDRESS
,  output [47:0]  STROBE_DMSBL1
,  output [123:0]  STROBE_DMSBL2
,  output [7:0]  STROBE_DMSBOUT
,  output [31:0]  STROBE_UMSB

);
parameter ADDRESS_SIZE = 9;
parameter DATA_SIZE = 8;
parameter SIZE_STROBE_DMSBOUT = 8;
parameter SIZE_STROBE_DMSBL2 = 124;
parameter SIZE_STROBE_DMSBL1 = 48;
parameter SIZE_STROBE_UMSB = 32;
parameter N_SIZE_DMSBL2 = 2;
parameter N_SIZE_DMSBL1 = 1;
parameter N_SIZE_UMSB = 1;
parameter N_SIZE_DMSBOUT = 1;
parameter NB_ELEMENTS = 4;
parameter NB_DMSBL2 = {8'd0,8'd0,8'd8,8'd4};
parameter NB_STROBE_DMSBL2 = {8'd0,8'd0,8'd8,8'd15};
parameter remainder_DMSBL2 = {8'd0,8'd0,8'd0,8'd7};
parameter NB_DMSBL1 = {8'd0,8'd0,8'd0,8'd16};
parameter NB_STROBE_DMSBL1 = {8'd0,8'd0,8'd0,8'd3};
parameter remainder_DMSBL1 = {8'd0,8'd0,8'd0,8'd3};
parameter NB_UMSB = {8'd0,8'd0,8'd0,8'd4};
parameter NB_STROBE_UMSB = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_UMSB = {8'd0,8'd0,8'd0,8'd0};
parameter NB_DMSBOUT = {8'd0,8'd0,8'd0,8'd1};
parameter NB_STROBE_DMSBOUT = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_DMSBOUT = {8'd0,8'd0,8'd0,8'd0};


loader_sb_corner_boundary #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .SIZE_STROBE_DMSBOUT ( SIZE_STROBE_DMSBOUT )
,  .SIZE_STROBE_DMSBL2 ( SIZE_STROBE_DMSBL2 )
,  .SIZE_STROBE_DMSBL1 ( SIZE_STROBE_DMSBL1 )
,  .SIZE_STROBE_UMSB ( SIZE_STROBE_UMSB )
,  .N_SIZE_DMSBL2 ( N_SIZE_DMSBL2 )
,  .N_SIZE_DMSBL1 ( N_SIZE_DMSBL1 )
,  .N_SIZE_UMSB ( N_SIZE_UMSB )
,  .N_SIZE_DMSBOUT ( N_SIZE_DMSBOUT )
,  .NB_ELEMENTS ( NB_ELEMENTS )
,  .NB_DMSBL2 ( NB_DMSBL2 )
,  .NB_STROBE_DMSBL2 ( NB_STROBE_DMSBL2 )
,  .remainder_DMSBL2 ( remainder_DMSBL2 )
,  .NB_DMSBL1 ( NB_DMSBL1 )
,  .NB_STROBE_DMSBL1 ( NB_STROBE_DMSBL1 )
,  .remainder_DMSBL1 ( remainder_DMSBL1 )
,  .NB_UMSB ( NB_UMSB )
,  .NB_STROBE_UMSB ( NB_STROBE_UMSB )
,  .remainder_UMSB ( remainder_UMSB )
,  .NB_DMSBOUT ( NB_DMSBOUT )
,  .NB_STROBE_DMSBOUT ( NB_STROBE_DMSBOUT )
,  .remainder_DMSBOUT ( remainder_DMSBOUT )
)
loader_sb_corner_boundary_adds_9_strdl2_124_strdl1_48_stru_32 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .STROBE_DMSBL2 ( STROBE_DMSBL2 )
,  .STROBE_DMSBL1 ( STROBE_DMSBL1 )
,  .STROBE_DMSBOUT ( STROBE_DMSBOUT )
,  .STROBE_UMSB ( STROBE_UMSB )

);
endmodule

module DMSB_NB_INPUTS_5_DATA_SIZE_8_NB_OUTPUTS_5_STROBE_SIZE_15 
(
   input  [7:0]  DATA
,  input  [4:0]  INPUTS
,  output [4:0]  OUTPUTS
,  input  [14:0]  STROBE

);
parameter NB_INPUTS = 5;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 5;
parameter STROBE_SIZE = 15;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_5_data_size_8_nb_outputs_5_strobe_size_15 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module UMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
umsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 
(
   input  [7:0]  DATA
,  input  [1:0]  INPUTS
,  output [2:0]  OUTPUTS
,  input  [2:0]  STROBE

);
parameter NB_INPUTS = 2;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 3;
parameter STROBE_SIZE = 3;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_2_data_size_8_nb_outputs_3_strobe_size_3 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_16_DATA_SIZE_8_NB_OUTPUTS_2_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [15:0]  INPUTS
,  output [1:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 16;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 2;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_16_data_size_8_nb_outputs_2_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module loader_tile_addS_10_dataS_8_nbE_1 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [9:0]  ADDRESS
,  output [8:0]  ADDRESS_SB_OR_CLUSTER
,  output [0:0]  SELECT_SB_OR_CLUSTER

);
parameter ADDRESS_SIZE = 10;
parameter DATA_SIZE = 8;
parameter NB_ELEMENTS = 1;


loader_tile #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_ELEMENTS ( NB_ELEMENTS )
)
loader_tile_adds_10_datas_8_nbe_1 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .ADDRESS_SB_OR_CLUSTER ( ADDRESS_SB_OR_CLUSTER )
,  .SELECT_SB_OR_CLUSTER ( SELECT_SB_OR_CLUSTER )

);
endmodule

module loader_sb_internal_addS_9_strDL2_192_strDL1_64_strU_32 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [8:0]  ADDRESS
,  output [63:0]  STROBE_DMSBL1
,  output [191:0]  STROBE_DMSBL2
,  output [31:0]  STROBE_UMSB

);
parameter ADDRESS_SIZE = 9;
parameter DATA_SIZE = 8;
parameter SIZE_STROBE_DMSBL2 = 192;
parameter SIZE_STROBE_DMSBL1 = 64;
parameter SIZE_STROBE_UMSB = 32;
parameter N_SIZE_DMSBL2 = 2;
parameter N_SIZE_DMSBL1 = 1;
parameter N_SIZE_UMSB = 1;
parameter NB_ELEMENTS = 3;
parameter NB_DMSBL2 = {8'd0,8'd0,8'd8,8'd4};
parameter NB_STROBE_DMSBL2 = {8'd0,8'd0,8'd15,8'd18};
parameter remainder_DMSBL2 = {8'd0,8'd0,8'd7,8'd2};
parameter NB_DMSBL1 = {8'd0,8'd0,8'd0,8'd16};
parameter NB_STROBE_DMSBL1 = {8'd0,8'd0,8'd0,8'd4};
parameter remainder_DMSBL1 = {8'd0,8'd0,8'd0,8'd4};
parameter NB_UMSB = {8'd0,8'd0,8'd0,8'd4};
parameter NB_STROBE_UMSB = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_UMSB = {8'd0,8'd0,8'd0,8'd0};


loader_sb_internal #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .SIZE_STROBE_DMSBL2 ( SIZE_STROBE_DMSBL2 )
,  .SIZE_STROBE_DMSBL1 ( SIZE_STROBE_DMSBL1 )
,  .SIZE_STROBE_UMSB ( SIZE_STROBE_UMSB )
,  .N_SIZE_DMSBL2 ( N_SIZE_DMSBL2 )
,  .N_SIZE_DMSBL1 ( N_SIZE_DMSBL1 )
,  .N_SIZE_UMSB ( N_SIZE_UMSB )
,  .NB_ELEMENTS ( NB_ELEMENTS )
,  .NB_DMSBL2 ( NB_DMSBL2 )
,  .NB_STROBE_DMSBL2 ( NB_STROBE_DMSBL2 )
,  .remainder_DMSBL2 ( remainder_DMSBL2 )
,  .NB_DMSBL1 ( NB_DMSBL1 )
,  .NB_STROBE_DMSBL1 ( NB_STROBE_DMSBL1 )
,  .remainder_DMSBL1 ( remainder_DMSBL1 )
,  .NB_UMSB ( NB_UMSB )
,  .NB_STROBE_UMSB ( NB_STROBE_UMSB )
,  .remainder_UMSB ( remainder_UMSB )
)
loader_sb_internal_adds_9_strdl2_192_strdl1_64_stru_32 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .STROBE_DMSBL2 ( STROBE_DMSBL2 )
,  .STROBE_DMSBL1 ( STROBE_DMSBL1 )
,  .STROBE_UMSB ( STROBE_UMSB )

);
endmodule

module DMSB_NB_INPUTS_6_DATA_SIZE_8_NB_OUTPUTS_6_STROBE_SIZE_18 
(
   input  [7:0]  DATA
,  input  [5:0]  INPUTS
,  output [5:0]  OUTPUTS
,  input  [17:0]  STROBE

);
parameter NB_INPUTS = 6;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 6;
parameter STROBE_SIZE = 18;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_6_data_size_8_nb_outputs_6_strobe_size_18 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_5_DATA_SIZE_8_NB_OUTPUTS_5_STROBE_SIZE_15 
(
   input  [7:0]  DATA
,  input  [4:0]  INPUTS
,  output [4:0]  OUTPUTS
,  input  [14:0]  STROBE

);
parameter NB_INPUTS = 5;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 5;
parameter STROBE_SIZE = 15;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_5_data_size_8_nb_outputs_5_strobe_size_15 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module UMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
umsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_4 
(
   input  [7:0]  DATA
,  input  [1:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [3:0]  STROBE

);
parameter NB_INPUTS = 2;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 4;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_2_data_size_8_nb_outputs_4_strobe_size_4 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module loader_tile_addS_10_dataS_8_nbE_2 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [9:0]  ADDRESS
,  output [8:0]  ADDRESS_SB_OR_CLUSTER
,  output [1:0]  SELECT_SB_OR_CLUSTER

);
parameter ADDRESS_SIZE = 10;
parameter DATA_SIZE = 8;
parameter NB_ELEMENTS = 2;


loader_tile #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_ELEMENTS ( NB_ELEMENTS )
)
loader_tile_adds_10_datas_8_nbe_2 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .ADDRESS_SB_OR_CLUSTER ( ADDRESS_SB_OR_CLUSTER )
,  .SELECT_SB_OR_CLUSTER ( SELECT_SB_OR_CLUSTER )

);
endmodule

module loader_sb_corner_boundary_addS_9_strDL2_124_strDL1_48_strU_32 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [8:0]  ADDRESS
,  output [47:0]  STROBE_DMSBL1
,  output [123:0]  STROBE_DMSBL2
,  output [7:0]  STROBE_DMSBOUT
,  output [31:0]  STROBE_UMSB

);
parameter ADDRESS_SIZE = 9;
parameter DATA_SIZE = 8;
parameter SIZE_STROBE_DMSBOUT = 8;
parameter SIZE_STROBE_DMSBL2 = 124;
parameter SIZE_STROBE_DMSBL1 = 48;
parameter SIZE_STROBE_UMSB = 32;
parameter N_SIZE_DMSBL2 = 2;
parameter N_SIZE_DMSBL1 = 1;
parameter N_SIZE_UMSB = 1;
parameter N_SIZE_DMSBOUT = 1;
parameter NB_ELEMENTS = 4;
parameter NB_DMSBL2 = {8'd0,8'd0,8'd8,8'd4};
parameter NB_STROBE_DMSBL2 = {8'd0,8'd0,8'd8,8'd15};
parameter remainder_DMSBL2 = {8'd0,8'd0,8'd0,8'd7};
parameter NB_DMSBL1 = {8'd0,8'd0,8'd0,8'd16};
parameter NB_STROBE_DMSBL1 = {8'd0,8'd0,8'd0,8'd3};
parameter remainder_DMSBL1 = {8'd0,8'd0,8'd0,8'd3};
parameter NB_UMSB = {8'd0,8'd0,8'd0,8'd4};
parameter NB_STROBE_UMSB = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_UMSB = {8'd0,8'd0,8'd0,8'd0};
parameter NB_DMSBOUT = {8'd0,8'd0,8'd0,8'd1};
parameter NB_STROBE_DMSBOUT = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_DMSBOUT = {8'd0,8'd0,8'd0,8'd0};


loader_sb_corner_boundary #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .SIZE_STROBE_DMSBOUT ( SIZE_STROBE_DMSBOUT )
,  .SIZE_STROBE_DMSBL2 ( SIZE_STROBE_DMSBL2 )
,  .SIZE_STROBE_DMSBL1 ( SIZE_STROBE_DMSBL1 )
,  .SIZE_STROBE_UMSB ( SIZE_STROBE_UMSB )
,  .N_SIZE_DMSBL2 ( N_SIZE_DMSBL2 )
,  .N_SIZE_DMSBL1 ( N_SIZE_DMSBL1 )
,  .N_SIZE_UMSB ( N_SIZE_UMSB )
,  .N_SIZE_DMSBOUT ( N_SIZE_DMSBOUT )
,  .NB_ELEMENTS ( NB_ELEMENTS )
,  .NB_DMSBL2 ( NB_DMSBL2 )
,  .NB_STROBE_DMSBL2 ( NB_STROBE_DMSBL2 )
,  .remainder_DMSBL2 ( remainder_DMSBL2 )
,  .NB_DMSBL1 ( NB_DMSBL1 )
,  .NB_STROBE_DMSBL1 ( NB_STROBE_DMSBL1 )
,  .remainder_DMSBL1 ( remainder_DMSBL1 )
,  .NB_UMSB ( NB_UMSB )
,  .NB_STROBE_UMSB ( NB_STROBE_UMSB )
,  .remainder_UMSB ( remainder_UMSB )
,  .NB_DMSBOUT ( NB_DMSBOUT )
,  .NB_STROBE_DMSBOUT ( NB_STROBE_DMSBOUT )
,  .remainder_DMSBOUT ( remainder_DMSBOUT )
)
loader_sb_corner_boundary_adds_9_strdl2_124_strdl1_48_stru_32 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .STROBE_DMSBL2 ( STROBE_DMSBL2 )
,  .STROBE_DMSBL1 ( STROBE_DMSBL1 )
,  .STROBE_DMSBOUT ( STROBE_DMSBOUT )
,  .STROBE_UMSB ( STROBE_UMSB )

);
endmodule

module DMSB_NB_INPUTS_5_DATA_SIZE_8_NB_OUTPUTS_5_STROBE_SIZE_15 
(
   input  [7:0]  DATA
,  input  [4:0]  INPUTS
,  output [4:0]  OUTPUTS
,  input  [14:0]  STROBE

);
parameter NB_INPUTS = 5;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 5;
parameter STROBE_SIZE = 15;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_5_data_size_8_nb_outputs_5_strobe_size_15 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module UMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
umsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 
(
   input  [7:0]  DATA
,  input  [1:0]  INPUTS
,  output [2:0]  OUTPUTS
,  input  [2:0]  STROBE

);
parameter NB_INPUTS = 2;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 3;
parameter STROBE_SIZE = 3;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_2_data_size_8_nb_outputs_3_strobe_size_3 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_16_DATA_SIZE_8_NB_OUTPUTS_2_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [15:0]  INPUTS
,  output [1:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 16;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 2;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_16_data_size_8_nb_outputs_2_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module loader_tile_addS_10_dataS_8_nbE_2 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [9:0]  ADDRESS
,  output [8:0]  ADDRESS_SB_OR_CLUSTER
,  output [1:0]  SELECT_SB_OR_CLUSTER

);
parameter ADDRESS_SIZE = 10;
parameter DATA_SIZE = 8;
parameter NB_ELEMENTS = 2;


loader_tile #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_ELEMENTS ( NB_ELEMENTS )
)
loader_tile_adds_10_datas_8_nbe_2 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .ADDRESS_SB_OR_CLUSTER ( ADDRESS_SB_OR_CLUSTER )
,  .SELECT_SB_OR_CLUSTER ( SELECT_SB_OR_CLUSTER )

);
endmodule

module loader_sb_corner_boundary_addS_9_strDL2_80_strDL1_32_strU_32 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [8:0]  ADDRESS
,  output [31:0]  STROBE_DMSBL1
,  output [79:0]  STROBE_DMSBL2
,  output [7:0]  STROBE_DMSBOUT
,  output [31:0]  STROBE_UMSB

);
parameter ADDRESS_SIZE = 9;
parameter DATA_SIZE = 8;
parameter SIZE_STROBE_DMSBOUT = 8;
parameter SIZE_STROBE_DMSBL2 = 80;
parameter SIZE_STROBE_DMSBL1 = 32;
parameter SIZE_STROBE_UMSB = 32;
parameter N_SIZE_DMSBL2 = 2;
parameter N_SIZE_DMSBL1 = 1;
parameter N_SIZE_UMSB = 1;
parameter N_SIZE_DMSBOUT = 1;
parameter NB_ELEMENTS = 4;
parameter NB_DMSBL2 = {8'd0,8'd0,8'd8,8'd4};
parameter NB_STROBE_DMSBL2 = {8'd0,8'd0,8'd6,8'd8};
parameter remainder_DMSBL2 = {8'd0,8'd0,8'd6,8'd0};
parameter NB_DMSBL1 = {8'd0,8'd0,8'd0,8'd16};
parameter NB_STROBE_DMSBL1 = {8'd0,8'd0,8'd0,8'd2};
parameter remainder_DMSBL1 = {8'd0,8'd0,8'd0,8'd2};
parameter NB_UMSB = {8'd0,8'd0,8'd0,8'd4};
parameter NB_STROBE_UMSB = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_UMSB = {8'd0,8'd0,8'd0,8'd0};
parameter NB_DMSBOUT = {8'd0,8'd0,8'd0,8'd1};
parameter NB_STROBE_DMSBOUT = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_DMSBOUT = {8'd0,8'd0,8'd0,8'd0};


loader_sb_corner_boundary #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .SIZE_STROBE_DMSBOUT ( SIZE_STROBE_DMSBOUT )
,  .SIZE_STROBE_DMSBL2 ( SIZE_STROBE_DMSBL2 )
,  .SIZE_STROBE_DMSBL1 ( SIZE_STROBE_DMSBL1 )
,  .SIZE_STROBE_UMSB ( SIZE_STROBE_UMSB )
,  .N_SIZE_DMSBL2 ( N_SIZE_DMSBL2 )
,  .N_SIZE_DMSBL1 ( N_SIZE_DMSBL1 )
,  .N_SIZE_UMSB ( N_SIZE_UMSB )
,  .N_SIZE_DMSBOUT ( N_SIZE_DMSBOUT )
,  .NB_ELEMENTS ( NB_ELEMENTS )
,  .NB_DMSBL2 ( NB_DMSBL2 )
,  .NB_STROBE_DMSBL2 ( NB_STROBE_DMSBL2 )
,  .remainder_DMSBL2 ( remainder_DMSBL2 )
,  .NB_DMSBL1 ( NB_DMSBL1 )
,  .NB_STROBE_DMSBL1 ( NB_STROBE_DMSBL1 )
,  .remainder_DMSBL1 ( remainder_DMSBL1 )
,  .NB_UMSB ( NB_UMSB )
,  .NB_STROBE_UMSB ( NB_STROBE_UMSB )
,  .remainder_UMSB ( remainder_UMSB )
,  .NB_DMSBOUT ( NB_DMSBOUT )
,  .NB_STROBE_DMSBOUT ( NB_STROBE_DMSBOUT )
,  .remainder_DMSBOUT ( remainder_DMSBOUT )
)
loader_sb_corner_boundary_adds_9_strdl2_80_strdl1_32_stru_32 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .STROBE_DMSBL2 ( STROBE_DMSBL2 )
,  .STROBE_DMSBL1 ( STROBE_DMSBL1 )
,  .STROBE_DMSBOUT ( STROBE_DMSBOUT )
,  .STROBE_UMSB ( STROBE_UMSB )

);
endmodule

module DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_3_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_6 
(
   input  [7:0]  DATA
,  input  [2:0]  INPUTS
,  output [2:0]  OUTPUTS
,  input  [5:0]  STROBE

);
parameter NB_INPUTS = 3;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 3;
parameter STROBE_SIZE = 6;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_3_data_size_8_nb_outputs_3_strobe_size_6 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module UMSB_NB_INPUTS_3_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [2:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 3;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
umsb_nb_inputs_3_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_2_STROBE_SIZE_2 
(
   input  [7:0]  DATA
,  input  [1:0]  INPUTS
,  output [1:0]  OUTPUTS
,  input  [1:0]  STROBE

);
parameter NB_INPUTS = 2;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 2;
parameter STROBE_SIZE = 2;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_2_data_size_8_nb_outputs_2_strobe_size_2 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_16_DATA_SIZE_8_NB_OUTPUTS_2_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [15:0]  INPUTS
,  output [1:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 16;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 2;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_16_data_size_8_nb_outputs_2_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module loader_tile_addS_10_dataS_8_nbE_1 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [9:0]  ADDRESS
,  output [8:0]  ADDRESS_SB_OR_CLUSTER
,  output [0:0]  SELECT_SB_OR_CLUSTER

);
parameter ADDRESS_SIZE = 10;
parameter DATA_SIZE = 8;
parameter NB_ELEMENTS = 1;


loader_tile #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_ELEMENTS ( NB_ELEMENTS )
)
loader_tile_adds_10_datas_8_nbe_1 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .ADDRESS_SB_OR_CLUSTER ( ADDRESS_SB_OR_CLUSTER )
,  .SELECT_SB_OR_CLUSTER ( SELECT_SB_OR_CLUSTER )

);
endmodule

module loader_sb_corner_boundary_addS_9_strDL2_124_strDL1_48_strU_32 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [8:0]  ADDRESS
,  output [47:0]  STROBE_DMSBL1
,  output [123:0]  STROBE_DMSBL2
,  output [7:0]  STROBE_DMSBOUT
,  output [31:0]  STROBE_UMSB

);
parameter ADDRESS_SIZE = 9;
parameter DATA_SIZE = 8;
parameter SIZE_STROBE_DMSBOUT = 8;
parameter SIZE_STROBE_DMSBL2 = 124;
parameter SIZE_STROBE_DMSBL1 = 48;
parameter SIZE_STROBE_UMSB = 32;
parameter N_SIZE_DMSBL2 = 2;
parameter N_SIZE_DMSBL1 = 1;
parameter N_SIZE_UMSB = 1;
parameter N_SIZE_DMSBOUT = 1;
parameter NB_ELEMENTS = 4;
parameter NB_DMSBL2 = {8'd0,8'd0,8'd8,8'd4};
parameter NB_STROBE_DMSBL2 = {8'd0,8'd0,8'd8,8'd15};
parameter remainder_DMSBL2 = {8'd0,8'd0,8'd0,8'd7};
parameter NB_DMSBL1 = {8'd0,8'd0,8'd0,8'd16};
parameter NB_STROBE_DMSBL1 = {8'd0,8'd0,8'd0,8'd3};
parameter remainder_DMSBL1 = {8'd0,8'd0,8'd0,8'd3};
parameter NB_UMSB = {8'd0,8'd0,8'd0,8'd4};
parameter NB_STROBE_UMSB = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_UMSB = {8'd0,8'd0,8'd0,8'd0};
parameter NB_DMSBOUT = {8'd0,8'd0,8'd0,8'd1};
parameter NB_STROBE_DMSBOUT = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_DMSBOUT = {8'd0,8'd0,8'd0,8'd0};


loader_sb_corner_boundary #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .SIZE_STROBE_DMSBOUT ( SIZE_STROBE_DMSBOUT )
,  .SIZE_STROBE_DMSBL2 ( SIZE_STROBE_DMSBL2 )
,  .SIZE_STROBE_DMSBL1 ( SIZE_STROBE_DMSBL1 )
,  .SIZE_STROBE_UMSB ( SIZE_STROBE_UMSB )
,  .N_SIZE_DMSBL2 ( N_SIZE_DMSBL2 )
,  .N_SIZE_DMSBL1 ( N_SIZE_DMSBL1 )
,  .N_SIZE_UMSB ( N_SIZE_UMSB )
,  .N_SIZE_DMSBOUT ( N_SIZE_DMSBOUT )
,  .NB_ELEMENTS ( NB_ELEMENTS )
,  .NB_DMSBL2 ( NB_DMSBL2 )
,  .NB_STROBE_DMSBL2 ( NB_STROBE_DMSBL2 )
,  .remainder_DMSBL2 ( remainder_DMSBL2 )
,  .NB_DMSBL1 ( NB_DMSBL1 )
,  .NB_STROBE_DMSBL1 ( NB_STROBE_DMSBL1 )
,  .remainder_DMSBL1 ( remainder_DMSBL1 )
,  .NB_UMSB ( NB_UMSB )
,  .NB_STROBE_UMSB ( NB_STROBE_UMSB )
,  .remainder_UMSB ( remainder_UMSB )
,  .NB_DMSBOUT ( NB_DMSBOUT )
,  .NB_STROBE_DMSBOUT ( NB_STROBE_DMSBOUT )
,  .remainder_DMSBOUT ( remainder_DMSBOUT )
)
loader_sb_corner_boundary_adds_9_strdl2_124_strdl1_48_stru_32 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .STROBE_DMSBL2 ( STROBE_DMSBL2 )
,  .STROBE_DMSBL1 ( STROBE_DMSBL1 )
,  .STROBE_DMSBOUT ( STROBE_DMSBOUT )
,  .STROBE_UMSB ( STROBE_UMSB )

);
endmodule

module DMSB_NB_INPUTS_5_DATA_SIZE_8_NB_OUTPUTS_5_STROBE_SIZE_15 
(
   input  [7:0]  DATA
,  input  [4:0]  INPUTS
,  output [4:0]  OUTPUTS
,  input  [14:0]  STROBE

);
parameter NB_INPUTS = 5;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 5;
parameter STROBE_SIZE = 15;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_5_data_size_8_nb_outputs_5_strobe_size_15 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module UMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
umsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 
(
   input  [7:0]  DATA
,  input  [1:0]  INPUTS
,  output [2:0]  OUTPUTS
,  input  [2:0]  STROBE

);
parameter NB_INPUTS = 2;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 3;
parameter STROBE_SIZE = 3;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_2_data_size_8_nb_outputs_3_strobe_size_3 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_16_DATA_SIZE_8_NB_OUTPUTS_2_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [15:0]  INPUTS
,  output [1:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 16;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 2;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_16_data_size_8_nb_outputs_2_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module loader_tile_addS_10_dataS_8_nbE_1 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [9:0]  ADDRESS
,  output [8:0]  ADDRESS_SB_OR_CLUSTER
,  output [0:0]  SELECT_SB_OR_CLUSTER

);
parameter ADDRESS_SIZE = 10;
parameter DATA_SIZE = 8;
parameter NB_ELEMENTS = 1;


loader_tile #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_ELEMENTS ( NB_ELEMENTS )
)
loader_tile_adds_10_datas_8_nbe_1 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .ADDRESS_SB_OR_CLUSTER ( ADDRESS_SB_OR_CLUSTER )
,  .SELECT_SB_OR_CLUSTER ( SELECT_SB_OR_CLUSTER )

);
endmodule

module loader_sb_corner_boundary_addS_9_strDL2_80_strDL1_32_strU_32 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [8:0]  ADDRESS
,  output [31:0]  STROBE_DMSBL1
,  output [79:0]  STROBE_DMSBL2
,  output [7:0]  STROBE_DMSBOUT
,  output [31:0]  STROBE_UMSB

);
parameter ADDRESS_SIZE = 9;
parameter DATA_SIZE = 8;
parameter SIZE_STROBE_DMSBOUT = 8;
parameter SIZE_STROBE_DMSBL2 = 80;
parameter SIZE_STROBE_DMSBL1 = 32;
parameter SIZE_STROBE_UMSB = 32;
parameter N_SIZE_DMSBL2 = 2;
parameter N_SIZE_DMSBL1 = 1;
parameter N_SIZE_UMSB = 1;
parameter N_SIZE_DMSBOUT = 1;
parameter NB_ELEMENTS = 4;
parameter NB_DMSBL2 = {8'd0,8'd0,8'd8,8'd4};
parameter NB_STROBE_DMSBL2 = {8'd0,8'd0,8'd6,8'd8};
parameter remainder_DMSBL2 = {8'd0,8'd0,8'd6,8'd0};
parameter NB_DMSBL1 = {8'd0,8'd0,8'd0,8'd16};
parameter NB_STROBE_DMSBL1 = {8'd0,8'd0,8'd0,8'd2};
parameter remainder_DMSBL1 = {8'd0,8'd0,8'd0,8'd2};
parameter NB_UMSB = {8'd0,8'd0,8'd0,8'd4};
parameter NB_STROBE_UMSB = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_UMSB = {8'd0,8'd0,8'd0,8'd0};
parameter NB_DMSBOUT = {8'd0,8'd0,8'd0,8'd1};
parameter NB_STROBE_DMSBOUT = {8'd0,8'd0,8'd0,8'd8};
parameter remainder_DMSBOUT = {8'd0,8'd0,8'd0,8'd0};


loader_sb_corner_boundary #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .SIZE_STROBE_DMSBOUT ( SIZE_STROBE_DMSBOUT )
,  .SIZE_STROBE_DMSBL2 ( SIZE_STROBE_DMSBL2 )
,  .SIZE_STROBE_DMSBL1 ( SIZE_STROBE_DMSBL1 )
,  .SIZE_STROBE_UMSB ( SIZE_STROBE_UMSB )
,  .N_SIZE_DMSBL2 ( N_SIZE_DMSBL2 )
,  .N_SIZE_DMSBL1 ( N_SIZE_DMSBL1 )
,  .N_SIZE_UMSB ( N_SIZE_UMSB )
,  .N_SIZE_DMSBOUT ( N_SIZE_DMSBOUT )
,  .NB_ELEMENTS ( NB_ELEMENTS )
,  .NB_DMSBL2 ( NB_DMSBL2 )
,  .NB_STROBE_DMSBL2 ( NB_STROBE_DMSBL2 )
,  .remainder_DMSBL2 ( remainder_DMSBL2 )
,  .NB_DMSBL1 ( NB_DMSBL1 )
,  .NB_STROBE_DMSBL1 ( NB_STROBE_DMSBL1 )
,  .remainder_DMSBL1 ( remainder_DMSBL1 )
,  .NB_UMSB ( NB_UMSB )
,  .NB_STROBE_UMSB ( NB_STROBE_UMSB )
,  .remainder_UMSB ( remainder_UMSB )
,  .NB_DMSBOUT ( NB_DMSBOUT )
,  .NB_STROBE_DMSBOUT ( NB_STROBE_DMSBOUT )
,  .remainder_DMSBOUT ( remainder_DMSBOUT )
)
loader_sb_corner_boundary_adds_9_strdl2_80_strdl1_32_stru_32 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .STROBE_DMSBL2 ( STROBE_DMSBL2 )
,  .STROBE_DMSBL1 ( STROBE_DMSBL1 )
,  .STROBE_DMSBOUT ( STROBE_DMSBOUT )
,  .STROBE_UMSB ( STROBE_UMSB )

);
endmodule

module DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [3:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 4;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_4_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_3_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_6 
(
   input  [7:0]  DATA
,  input  [2:0]  INPUTS
,  output [2:0]  OUTPUTS
,  input  [5:0]  STROBE

);
parameter NB_INPUTS = 3;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 3;
parameter STROBE_SIZE = 6;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_3_data_size_8_nb_outputs_3_strobe_size_6 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module UMSB_NB_INPUTS_3_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [2:0]  INPUTS
,  output [3:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 3;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 4;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
umsb_nb_inputs_3_data_size_8_nb_outputs_4_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_2_STROBE_SIZE_2 
(
   input  [7:0]  DATA
,  input  [1:0]  INPUTS
,  output [1:0]  OUTPUTS
,  input  [1:0]  STROBE

);
parameter NB_INPUTS = 2;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 2;
parameter STROBE_SIZE = 2;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_2_data_size_8_nb_outputs_2_strobe_size_2 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module DMSB_NB_INPUTS_16_DATA_SIZE_8_NB_OUTPUTS_2_STROBE_SIZE_8 
(
   input  [7:0]  DATA
,  input  [15:0]  INPUTS
,  output [1:0]  OUTPUTS
,  input  [7:0]  STROBE

);
parameter NB_INPUTS = 16;
parameter DATA_SIZE = 8;
parameter NB_OUTPUTS = 2;
parameter STROBE_SIZE = 8;


msbGeneric #(
   .NB_INPUTS ( NB_INPUTS )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_OUTPUTS ( NB_OUTPUTS )
,  .STROBE_SIZE ( STROBE_SIZE )
)
dmsb_nb_inputs_16_data_size_8_nb_outputs_2_strobe_size_8 (
   .OUTPUTS ( OUTPUTS )
,  .DATA ( DATA )
,  .INPUTS ( INPUTS )
,  .STROBE ( STROBE )

);
endmodule

module loader_tile_addS_10_dataS_8_nbE_1 
(
   input   CLK
,  input   RESET
,  input   SELECT
,  input  [9:0]  ADDRESS
,  output [8:0]  ADDRESS_SB_OR_CLUSTER
,  output [0:0]  SELECT_SB_OR_CLUSTER

);
parameter ADDRESS_SIZE = 10;
parameter DATA_SIZE = 8;
parameter NB_ELEMENTS = 1;


loader_tile #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_ELEMENTS ( NB_ELEMENTS )
)
loader_tile_adds_10_datas_8_nbe_1 (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .SELECT ( SELECT )
,  .ADDRESS_SB_OR_CLUSTER ( ADDRESS_SB_OR_CLUSTER )
,  .SELECT_SB_OR_CLUSTER ( SELECT_SB_OR_CLUSTER )

);
endmodule

module loader_mesh_encapsulation 
(
   input   CLK
,  input   RESET
,  input  [14:0]  ADDRESS
,  output [9:0]  ADDRESS_TILE
,  output [24:0]  SELECT_TILE

);
parameter ADDRESS_SIZE = 15;
parameter DATA_SIZE = 8;
parameter NB_TILES = 25;


loader_mesh #(
   .ADDRESS_SIZE ( ADDRESS_SIZE )
,  .DATA_SIZE ( DATA_SIZE )
,  .NB_TILES ( NB_TILES )
)
loader_mesh_encapsulation (
   .CLK ( CLK )
,  .RESET ( RESET )
,  .ADDRESS ( ADDRESS )
,  .ADDRESS_TILE ( ADDRESS_TILE )
,  .SELECT_TILE ( SELECT_TILE )

);
endmodule
