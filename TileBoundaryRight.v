`timescale 1 ns/1 ps

module TileBoundaryRight(
     clock
   , conf
   , reset
   , select_tile
   , data_tile
   , address_tile
   , inpads_0
   , inpads_1
   , sb_top_output
   , sb_left_output
   , sb_bottom_output
   , in_cluster_sb_TL
   , in_cluster_sb_BL
   , in_cluster_sb_BR
   , out_cluster_TL
   , outpads_0
   , outpads_1
   , sb_top_input
   , sb_left_input
   , sb_bottom_input
   , out_cluster_sb_TL
   , out_cluster_sb_BL
   , out_cluster_sb_BR
   , in_cluster_TL
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
input   [11:0] sb_left_output;
wire [11:0] sb_left_output;
input   [11:0] sb_bottom_output;
wire [11:0] sb_bottom_output;
input   [15:0] in_cluster_sb_TL;
wire [15:0] in_cluster_sb_TL;
input   [15:0] in_cluster_sb_BL;
wire [15:0] in_cluster_sb_BL;
input   [15:0] in_cluster_sb_BR;
wire [15:0] in_cluster_sb_BR;
input   [3:0] out_cluster_TL;
wire [3:0] out_cluster_TL;
output  [0:0] outpads_0;
wire [0:0] outpads_0;
output  [0:0] outpads_1;
wire [0:0] outpads_1;
output  [11:0] sb_top_input;
wire [11:0] sb_top_input;
output  [11:0] sb_left_input;
wire [11:0] sb_left_input;
output  [11:0] sb_bottom_input;
wire [11:0] sb_bottom_input;
output  [3:0] out_cluster_sb_TL;
wire [3:0] out_cluster_sb_TL;
output  [3:0] out_cluster_sb_BL;
wire [3:0] out_cluster_sb_BL;
output  [3:0] out_cluster_sb_BR;
wire [3:0] out_cluster_sb_BR;
output  [15:0] in_cluster_TL;
wire [15:0] in_cluster_TL;

wire wire_input_tree1_0_0;
wire wire_input_tree1_10_0;
wire wire_input_tree1_11_0;
wire wire_input_tree1_12_0;
wire wire_input_tree1_13_0;
wire wire_input_tree1_14_0;
wire wire_input_tree1_15_0;
wire wire_input_tree1_1_0;
wire wire_input_tree1_2_0;
wire wire_input_tree1_3_0;
wire wire_input_tree1_4_0;
wire wire_input_tree1_5_0;
wire wire_input_tree1_6_0;
wire wire_input_tree1_7_0;
wire wire_input_tree1_8_0;
wire wire_input_tree1_9_0;
wire wire_output_tree1_0_0;
wire wire_output_tree1_1_0;
wire wire_output_tree1_2_0;
wire wire_output_tree1_3_0;
wire [8:0] w_ADDRESS_SB_OR_CLUSTER_0;
wire [1:0] w_SELECT_SB_OR_CLUSTER_0;

cluster_1 cluster_1_ins_cluster_l_1_TileBoundaryRight_TileBoundaryRight(
        .conf_ck1( conf )
      , .func_ck1( clock )
      , .reset1( reset )
      , .selector1( w_SELECT_SB_OR_CLUSTER_0[1] )
      , .address1( { w_ADDRESS_SB_OR_CLUSTER_0[8], w_ADDRESS_SB_OR_CLUSTER_0[7], w_ADDRESS_SB_OR_CLUSTER_0[6], w_ADDRESS_SB_OR_CLUSTER_0[5], w_ADDRESS_SB_OR_CLUSTER_0[4], w_ADDRESS_SB_OR_CLUSTER_0[3], w_ADDRESS_SB_OR_CLUSTER_0[2], w_ADDRESS_SB_OR_CLUSTER_0[1], w_ADDRESS_SB_OR_CLUSTER_0[0] } )
      , .cluster_data1( { data_tile[7], data_tile[6], data_tile[5], data_tile[4], data_tile[3], data_tile[2], data_tile[1], data_tile[0] } )
      , .input_tree1( { in_cluster_sb_TL[15], in_cluster_sb_TL[14], in_cluster_sb_TL[13], in_cluster_sb_TL[12], in_cluster_sb_TL[11], in_cluster_sb_TL[10], in_cluster_sb_TL[9], in_cluster_sb_TL[8], in_cluster_sb_TL[7], in_cluster_sb_TL[6], in_cluster_sb_TL[5], in_cluster_sb_TL[4], in_cluster_sb_TL[3], in_cluster_sb_TL[2], in_cluster_sb_TL[1], in_cluster_sb_TL[0], in_cluster_sb_BL[15], in_cluster_sb_BL[14], in_cluster_sb_BL[13], in_cluster_sb_BL[12], in_cluster_sb_BL[11], in_cluster_sb_BL[10], in_cluster_sb_BL[9], in_cluster_sb_BL[8], in_cluster_sb_BL[7], in_cluster_sb_BL[6], in_cluster_sb_BL[5], in_cluster_sb_BL[4], in_cluster_sb_BL[3], in_cluster_sb_BL[2], in_cluster_sb_BL[1], in_cluster_sb_BL[0], in_cluster_sb_BR[15], in_cluster_sb_BR[14], in_cluster_sb_BR[13], in_cluster_sb_BR[12], in_cluster_sb_BR[11], in_cluster_sb_BR[10], in_cluster_sb_BR[9], in_cluster_sb_BR[8], in_cluster_sb_BR[7], in_cluster_sb_BR[6], in_cluster_sb_BR[5], in_cluster_sb_BR[4], in_cluster_sb_BR[3], in_cluster_sb_BR[2], in_cluster_sb_BR[1], in_cluster_sb_BR[0], wire_input_tree1_15_0, wire_input_tree1_14_0, wire_input_tree1_13_0, wire_input_tree1_12_0, wire_input_tree1_11_0, wire_input_tree1_10_0, wire_input_tree1_9_0, wire_input_tree1_8_0, wire_input_tree1_7_0, wire_input_tree1_6_0, wire_input_tree1_5_0, wire_input_tree1_4_0, wire_input_tree1_3_0, wire_input_tree1_2_0, wire_input_tree1_1_0, wire_input_tree1_0_0 } )
      , .output_tree1( { out_cluster_sb_TL[3], out_cluster_sb_TL[2], out_cluster_sb_TL[1], out_cluster_sb_TL[0], out_cluster_sb_BL[3], out_cluster_sb_BL[2], out_cluster_sb_BL[1], out_cluster_sb_BL[0], out_cluster_sb_BR[3], out_cluster_sb_BR[2], out_cluster_sb_BR[1], out_cluster_sb_BR[0], wire_output_tree1_3_0, wire_output_tree1_2_0, wire_output_tree1_1_0, wire_output_tree1_0_0 } )
     );

sb_BoundaryRight instance_sb_boundary_right(
        .conf_ck( conf )
      , .func_ck( clock )
      , .reset( reset )
      , .selector( w_SELECT_SB_OR_CLUSTER_0[0] )
      , .address( { w_ADDRESS_SB_OR_CLUSTER_0[8], w_ADDRESS_SB_OR_CLUSTER_0[7], w_ADDRESS_SB_OR_CLUSTER_0[6], w_ADDRESS_SB_OR_CLUSTER_0[5], w_ADDRESS_SB_OR_CLUSTER_0[4], w_ADDRESS_SB_OR_CLUSTER_0[3], w_ADDRESS_SB_OR_CLUSTER_0[2], w_ADDRESS_SB_OR_CLUSTER_0[1], w_ADDRESS_SB_OR_CLUSTER_0[0] } )
      , .sb_data( { data_tile[7], data_tile[6], data_tile[5], data_tile[4], data_tile[3], data_tile[2], data_tile[1], data_tile[0] } )
      , .sb_inpads0( inpads_0[0] )
      , .sb_inpads1( inpads_1[0] )
      , .sb_inputs1( { sb_top_output[11], sb_top_output[10], sb_top_output[9], sb_top_output[8], sb_top_output[7], sb_top_output[6], sb_top_output[5], sb_top_output[4], sb_top_output[3], sb_top_output[2], sb_top_output[1], sb_top_output[0] } )
      , .sb_inputs2( { sb_bottom_output[11], sb_bottom_output[10], sb_bottom_output[9], sb_bottom_output[8], sb_bottom_output[7], sb_bottom_output[6], sb_bottom_output[5], sb_bottom_output[4], sb_bottom_output[3], sb_bottom_output[2], sb_bottom_output[1], sb_bottom_output[0] } )
      , .sb_inputs3( { sb_left_output[11], sb_left_output[10], sb_left_output[9], sb_left_output[8], sb_left_output[7], sb_left_output[6], sb_left_output[5], sb_left_output[4], sb_left_output[3], sb_left_output[2], sb_left_output[1], sb_left_output[0] } )
      , .sb_inputs_cluster1( { wire_input_tree1_15_0, wire_input_tree1_14_0, wire_input_tree1_13_0, wire_input_tree1_12_0, wire_input_tree1_11_0, wire_input_tree1_10_0, wire_input_tree1_9_0, wire_input_tree1_8_0, wire_input_tree1_7_0, wire_input_tree1_6_0, wire_input_tree1_5_0, wire_input_tree1_4_0, wire_input_tree1_3_0, wire_input_tree1_2_0, wire_input_tree1_1_0, wire_input_tree1_0_0 } )
      , .sb_inputs_cluster2( { in_cluster_TL[15], in_cluster_TL[14], in_cluster_TL[13], in_cluster_TL[12], in_cluster_TL[11], in_cluster_TL[10], in_cluster_TL[9], in_cluster_TL[8], in_cluster_TL[7], in_cluster_TL[6], in_cluster_TL[5], in_cluster_TL[4], in_cluster_TL[3], in_cluster_TL[2], in_cluster_TL[1], in_cluster_TL[0] } )
      , .sb_outpads0( outpads_0[0] )
      , .sb_outpads1( outpads_1[0] )
      , .sb_outputs1( { sb_top_input[11], sb_top_input[10], sb_top_input[9], sb_top_input[8], sb_top_input[7], sb_top_input[6], sb_top_input[5], sb_top_input[4], sb_top_input[3], sb_top_input[2], sb_top_input[1], sb_top_input[0] } )
      , .sb_outputs2( { sb_bottom_input[11], sb_bottom_input[10], sb_bottom_input[9], sb_bottom_input[8], sb_bottom_input[7], sb_bottom_input[6], sb_bottom_input[5], sb_bottom_input[4], sb_bottom_input[3], sb_bottom_input[2], sb_bottom_input[1], sb_bottom_input[0] } )
      , .sb_outputs3( { sb_left_input[11], sb_left_input[10], sb_left_input[9], sb_left_input[8], sb_left_input[7], sb_left_input[6], sb_left_input[5], sb_left_input[4], sb_left_input[3], sb_left_input[2], sb_left_input[1], sb_left_input[0] } )
      , .sb_outputs_cluster1( { wire_output_tree1_3_0, wire_output_tree1_2_0, wire_output_tree1_1_0, wire_output_tree1_0_0 } )
      , .sb_outputs_cluster2( { out_cluster_TL[3], out_cluster_TL[2], out_cluster_TL[1], out_cluster_TL[0] } )
     );

loader_tile_addS_10_dataS_8_nbE_2 loader_i_6(
        .CLK( conf )
      , .RESET( reset )
      , .SELECT( select_tile )
      , .ADDRESS( { address_tile[9], address_tile[8], address_tile[7], address_tile[6], address_tile[5], address_tile[4], address_tile[3], address_tile[2], address_tile[1], address_tile[0] } )
      , .ADDRESS_SB_OR_CLUSTER( { w_ADDRESS_SB_OR_CLUSTER_0[8], w_ADDRESS_SB_OR_CLUSTER_0[7], w_ADDRESS_SB_OR_CLUSTER_0[6], w_ADDRESS_SB_OR_CLUSTER_0[5], w_ADDRESS_SB_OR_CLUSTER_0[4], w_ADDRESS_SB_OR_CLUSTER_0[3], w_ADDRESS_SB_OR_CLUSTER_0[2], w_ADDRESS_SB_OR_CLUSTER_0[1], w_ADDRESS_SB_OR_CLUSTER_0[0] } )
      , .SELECT_SB_OR_CLUSTER( { w_SELECT_SB_OR_CLUSTER_0[1], w_SELECT_SB_OR_CLUSTER_0[0] } )
     );


endmodule
