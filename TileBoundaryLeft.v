`timescale 1 ns/1 ps

module TileBoundaryLeft(
     clock
   , conf
   , reset
   , select_tile
   , data_tile
   , address_tile
   , inpads_0
   , inpads_1
   , sb_top_output
   , sb_right_output
   , sb_bottom_output
   , out_cluster_BR
   , out_cluster_TR
   , outpads_0
   , outpads_1
   , sb_top_input
   , sb_right_input
   , sb_bottom_input
   , in_cluster_BR
   , in_cluster_TR
  );


input   clock;
wire clock;
input   conf;
wire conf;
input   reset;
wire reset;
input   select_tile;
wire select_tile;
input   [7:0] data_tile;
wire [7:0] data_tile;
input   [9:0] address_tile;
wire [9:0] address_tile;
input   [0:0] inpads_0;
wire [0:0] inpads_0;
input   [0:0] inpads_1;
wire [0:0] inpads_1;
input   [11:0] sb_top_output;
wire [11:0] sb_top_output;
input   [11:0] sb_right_output;
wire [11:0] sb_right_output;
input   [11:0] sb_bottom_output;
wire [11:0] sb_bottom_output;
input   [3:0] out_cluster_BR;
wire [3:0] out_cluster_BR;
input   [3:0] out_cluster_TR;
wire [3:0] out_cluster_TR;
output  [0:0] outpads_0;
wire [0:0] outpads_0;
output  [0:0] outpads_1;
wire [0:0] outpads_1;
output  [11:0] sb_top_input;
wire [11:0] sb_top_input;
output  [11:0] sb_right_input;
wire [11:0] sb_right_input;
output  [11:0] sb_bottom_input;
wire [11:0] sb_bottom_input;
output  [15:0] in_cluster_BR;
wire [15:0] in_cluster_BR;
output  [15:0] in_cluster_TR;
wire [15:0] in_cluster_TR;

wire [8:0] w_ADDRESS_SB_OR_CLUSTER_0;
wire [0:0] w_SELECT_SB_OR_CLUSTER_0;

sb_BoundaryLeft instance_sb_boundary_left(
        .conf_ck( conf )
      , .func_ck( clock )
      , .reset( reset )
      , .selector( w_SELECT_SB_OR_CLUSTER_0[0] )
      , .address( { w_ADDRESS_SB_OR_CLUSTER_0[8], w_ADDRESS_SB_OR_CLUSTER_0[7], w_ADDRESS_SB_OR_CLUSTER_0[6], w_ADDRESS_SB_OR_CLUSTER_0[5], w_ADDRESS_SB_OR_CLUSTER_0[4], w_ADDRESS_SB_OR_CLUSTER_0[3], w_ADDRESS_SB_OR_CLUSTER_0[2], w_ADDRESS_SB_OR_CLUSTER_0[1], w_ADDRESS_SB_OR_CLUSTER_0[0] } )
      , .sb_data( { data_tile[7], data_tile[6], data_tile[5], data_tile[4], data_tile[3], data_tile[2], data_tile[1], data_tile[0] } )
      , .sb_inpads0( inpads_0[0] )
      , .sb_inpads1( inpads_1[0] )
      , .sb_inputs1( { sb_top_output[11], sb_top_output[10], sb_top_output[9], sb_top_output[8], sb_top_output[7], sb_top_output[6], sb_top_output[5], sb_top_output[4], sb_top_output[3], sb_top_output[2], sb_top_output[1], sb_top_output[0] } )
      , .sb_inputs2( { sb_right_output[11], sb_right_output[10], sb_right_output[9], sb_right_output[8], sb_right_output[7], sb_right_output[6], sb_right_output[5], sb_right_output[4], sb_right_output[3], sb_right_output[2], sb_right_output[1], sb_right_output[0] } )
      , .sb_inputs3( { sb_bottom_output[11], sb_bottom_output[10], sb_bottom_output[9], sb_bottom_output[8], sb_bottom_output[7], sb_bottom_output[6], sb_bottom_output[5], sb_bottom_output[4], sb_bottom_output[3], sb_bottom_output[2], sb_bottom_output[1], sb_bottom_output[0] } )
      , .sb_inputs_cluster1( { in_cluster_TR[15], in_cluster_TR[14], in_cluster_TR[13], in_cluster_TR[12], in_cluster_TR[11], in_cluster_TR[10], in_cluster_TR[9], in_cluster_TR[8], in_cluster_TR[7], in_cluster_TR[6], in_cluster_TR[5], in_cluster_TR[4], in_cluster_TR[3], in_cluster_TR[2], in_cluster_TR[1], in_cluster_TR[0] } )
      , .sb_inputs_cluster2( { in_cluster_BR[15], in_cluster_BR[14], in_cluster_BR[13], in_cluster_BR[12], in_cluster_BR[11], in_cluster_BR[10], in_cluster_BR[9], in_cluster_BR[8], in_cluster_BR[7], in_cluster_BR[6], in_cluster_BR[5], in_cluster_BR[4], in_cluster_BR[3], in_cluster_BR[2], in_cluster_BR[1], in_cluster_BR[0] } )
      , .sb_outpads0( outpads_0[0] )
      , .sb_outpads1( outpads_1[0] )
      , .sb_outputs1( { sb_top_input[11], sb_top_input[10], sb_top_input[9], sb_top_input[8], sb_top_input[7], sb_top_input[6], sb_top_input[5], sb_top_input[4], sb_top_input[3], sb_top_input[2], sb_top_input[1], sb_top_input[0] } )
      , .sb_outputs2( { sb_right_input[11], sb_right_input[10], sb_right_input[9], sb_right_input[8], sb_right_input[7], sb_right_input[6], sb_right_input[5], sb_right_input[4], sb_right_input[3], sb_right_input[2], sb_right_input[1], sb_right_input[0] } )
      , .sb_outputs3( { sb_bottom_input[11], sb_bottom_input[10], sb_bottom_input[9], sb_bottom_input[8], sb_bottom_input[7], sb_bottom_input[6], sb_bottom_input[5], sb_bottom_input[4], sb_bottom_input[3], sb_bottom_input[2], sb_bottom_input[1], sb_bottom_input[0] } )
      , .sb_outputs_cluster1( { out_cluster_TR[3], out_cluster_TR[2], out_cluster_TR[1], out_cluster_TR[0] } )
      , .sb_outputs_cluster2( { out_cluster_BR[3], out_cluster_BR[2], out_cluster_BR[1], out_cluster_BR[0] } )
     );

loader_tile_addS_10_dataS_8_nbE_1 loader_i_4(
        .CLK( conf )
      , .RESET( reset )
      , .SELECT( select_tile )
      , .ADDRESS( { address_tile[9], address_tile[8], address_tile[7], address_tile[6], address_tile[5], address_tile[4], address_tile[3], address_tile[2], address_tile[1], address_tile[0] } )
      , .ADDRESS_SB_OR_CLUSTER( { w_ADDRESS_SB_OR_CLUSTER_0[8], w_ADDRESS_SB_OR_CLUSTER_0[7], w_ADDRESS_SB_OR_CLUSTER_0[6], w_ADDRESS_SB_OR_CLUSTER_0[5], w_ADDRESS_SB_OR_CLUSTER_0[4], w_ADDRESS_SB_OR_CLUSTER_0[3], w_ADDRESS_SB_OR_CLUSTER_0[2], w_ADDRESS_SB_OR_CLUSTER_0[1], w_ADDRESS_SB_OR_CLUSTER_0[0] } )
      , .SELECT_SB_OR_CLUSTER( w_SELECT_SB_OR_CLUSTER_0[0] )
     );


endmodule
