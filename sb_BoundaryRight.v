`timescale 1 ns/1 ps

module sb_BoundaryRight(
     selector
   , reset
   , func_ck
   , conf_ck
   , address
   , sb_outputs1
   , sb_outputs2
   , sb_inputs_cluster1
   , sb_outputs3
   , sb_inputs_cluster2
   , sb_outpads0
   , sb_outpads1
   , sb_data
   , sb_inputs1
   , sb_inputs2
   , sb_outputs_cluster1
   , sb_inputs3
   , sb_outputs_cluster2
   , sb_inpads0
   , sb_inpads1
  );


input   selector;
wire selector;
input   reset;
wire reset;
input   func_ck;
wire func_ck;
input   conf_ck;
wire conf_ck;
input   [8:0] address;
wire [8:0] address;
output  [11:0] sb_outputs1;
wire [11:0] sb_outputs1;
output  [11:0] sb_outputs2;
wire [11:0] sb_outputs2;
output  [15:0] sb_inputs_cluster1;
wire [15:0] sb_inputs_cluster1;
output  [11:0] sb_outputs3;
wire [11:0] sb_outputs3;
output  [15:0] sb_inputs_cluster2;
wire [15:0] sb_inputs_cluster2;
output  [0:0] sb_outpads0;
wire [0:0] sb_outpads0;
output  [0:0] sb_outpads1;
wire [0:0] sb_outpads1;
input   [7:0] sb_data;
wire [7:0] sb_data;
input   [11:0] sb_inputs1;
wire [11:0] sb_inputs1;
input   [11:0] sb_inputs2;
wire [11:0] sb_inputs2;
input   [3:0] sb_outputs_cluster1;
wire [3:0] sb_outputs_cluster1;
input   [11:0] sb_inputs3;
wire [11:0] sb_inputs3;
input   [3:0] sb_outputs_cluster2;
wire [3:0] sb_outputs_cluster2;
input   [0:0] sb_inpads0;
wire [0:0] sb_inpads0;
input   [0:0] sb_inpads1;
wire [0:0] sb_inpads1;

wire wire_OUTPUTS_2_0;
wire wire_OUTPUTS_2_1;
wire wire_OUTPUTS_2_10;
wire wire_OUTPUTS_2_11;
wire wire_OUTPUTS_2_12;
wire wire_OUTPUTS_2_13;
wire wire_OUTPUTS_2_14;
wire wire_OUTPUTS_2_15;
wire wire_OUTPUTS_2_2;
wire wire_OUTPUTS_2_3;
wire wire_OUTPUTS_2_4;
wire wire_OUTPUTS_2_5;
wire wire_OUTPUTS_2_6;
wire wire_OUTPUTS_2_7;
wire wire_OUTPUTS_2_8;
wire wire_OUTPUTS_2_9;
wire [47:0] w_STROBE_DMSBL1_0;
wire [123:0] w_STROBE_DMSBL2_0;
wire [7:0] w_STROBE_DMSBOUT_0;
wire [31:0] w_STROBE_UMSB_0;
wire [1:0] w_dmsb0_INPUTS;
wire [1:0] w_dmsb10_INPUTS;
wire [1:0] w_dmsb11_INPUTS;
wire [1:0] w_dmsb12_INPUTS;
wire [1:0] w_dmsb13_INPUTS;
wire [1:0] w_dmsb14_INPUTS;
wire [1:0] w_dmsb15_INPUTS;
wire [1:0] w_dmsb1_INPUTS;
wire [1:0] w_dmsb2_INPUTS;
wire [1:0] w_dmsb3_INPUTS;
wire [1:0] w_dmsb4_INPUTS;
wire [1:0] w_dmsb5_INPUTS;
wire [1:0] w_dmsb6_INPUTS;
wire [1:0] w_dmsb7_INPUTS;
wire [1:0] w_dmsb8_INPUTS;
wire [1:0] w_dmsb9_INPUTS;
wire [3:0] w_umsb0_OUTPUTS;
wire [3:0] w_umsb1_OUTPUTS;
wire [3:0] w_umsb2_OUTPUTS;
wire [3:0] w_umsb3_OUTPUTS;

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_0(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb0_INPUTS[1], w_dmsb0_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_0, sb_inputs_cluster2[0], sb_inputs_cluster1[0] } )
      , .STROBE( { w_STROBE_DMSBL1_0[2], w_STROBE_DMSBL1_0[1], w_STROBE_DMSBL1_0[0] } )
     );

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_1(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb1_INPUTS[1], w_dmsb1_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_1, sb_inputs_cluster2[1], sb_inputs_cluster1[1] } )
      , .STROBE( { w_STROBE_DMSBL1_0[5], w_STROBE_DMSBL1_0[4], w_STROBE_DMSBL1_0[3] } )
     );

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_10(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb10_INPUTS[1], w_dmsb10_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_10, sb_inputs_cluster2[10], sb_inputs_cluster1[10] } )
      , .STROBE( { w_STROBE_DMSBL1_0[32], w_STROBE_DMSBL1_0[31], w_STROBE_DMSBL1_0[30] } )
     );

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_11(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb11_INPUTS[1], w_dmsb11_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_11, sb_inputs_cluster2[11], sb_inputs_cluster1[11] } )
      , .STROBE( { w_STROBE_DMSBL1_0[35], w_STROBE_DMSBL1_0[34], w_STROBE_DMSBL1_0[33] } )
     );

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_12(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb12_INPUTS[1], w_dmsb12_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_12, sb_inputs_cluster2[12], sb_inputs_cluster1[12] } )
      , .STROBE( { w_STROBE_DMSBL1_0[38], w_STROBE_DMSBL1_0[37], w_STROBE_DMSBL1_0[36] } )
     );

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_13(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb13_INPUTS[1], w_dmsb13_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_13, sb_inputs_cluster2[13], sb_inputs_cluster1[13] } )
      , .STROBE( { w_STROBE_DMSBL1_0[41], w_STROBE_DMSBL1_0[40], w_STROBE_DMSBL1_0[39] } )
     );

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_14(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb14_INPUTS[1], w_dmsb14_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_14, sb_inputs_cluster2[14], sb_inputs_cluster1[14] } )
      , .STROBE( { w_STROBE_DMSBL1_0[44], w_STROBE_DMSBL1_0[43], w_STROBE_DMSBL1_0[42] } )
     );

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_15(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb15_INPUTS[1], w_dmsb15_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_15, sb_inputs_cluster2[15], sb_inputs_cluster1[15] } )
      , .STROBE( { w_STROBE_DMSBL1_0[47], w_STROBE_DMSBL1_0[46], w_STROBE_DMSBL1_0[45] } )
     );

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_2(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb2_INPUTS[1], w_dmsb2_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_2, sb_inputs_cluster2[2], sb_inputs_cluster1[2] } )
      , .STROBE( { w_STROBE_DMSBL1_0[8], w_STROBE_DMSBL1_0[7], w_STROBE_DMSBL1_0[6] } )
     );

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_3(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb3_INPUTS[1], w_dmsb3_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_3, sb_inputs_cluster2[3], sb_inputs_cluster1[3] } )
      , .STROBE( { w_STROBE_DMSBL1_0[11], w_STROBE_DMSBL1_0[10], w_STROBE_DMSBL1_0[9] } )
     );

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_4(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb4_INPUTS[1], w_dmsb4_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_4, sb_inputs_cluster2[4], sb_inputs_cluster1[4] } )
      , .STROBE( { w_STROBE_DMSBL1_0[14], w_STROBE_DMSBL1_0[13], w_STROBE_DMSBL1_0[12] } )
     );

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_5(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb5_INPUTS[1], w_dmsb5_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_5, sb_inputs_cluster2[5], sb_inputs_cluster1[5] } )
      , .STROBE( { w_STROBE_DMSBL1_0[17], w_STROBE_DMSBL1_0[16], w_STROBE_DMSBL1_0[15] } )
     );

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_6(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb6_INPUTS[1], w_dmsb6_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_6, sb_inputs_cluster2[6], sb_inputs_cluster1[6] } )
      , .STROBE( { w_STROBE_DMSBL1_0[20], w_STROBE_DMSBL1_0[19], w_STROBE_DMSBL1_0[18] } )
     );

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_7(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb7_INPUTS[1], w_dmsb7_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_7, sb_inputs_cluster2[7], sb_inputs_cluster1[7] } )
      , .STROBE( { w_STROBE_DMSBL1_0[23], w_STROBE_DMSBL1_0[22], w_STROBE_DMSBL1_0[21] } )
     );

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_8(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb8_INPUTS[1], w_dmsb8_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_8, sb_inputs_cluster2[8], sb_inputs_cluster1[8] } )
      , .STROBE( { w_STROBE_DMSBL1_0[26], w_STROBE_DMSBL1_0[25], w_STROBE_DMSBL1_0[24] } )
     );

DMSB_NB_INPUTS_2_DATA_SIZE_8_NB_OUTPUTS_3_STROBE_SIZE_3 instance_sb_boundary_right_dmsb_L1_9(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb9_INPUTS[1], w_dmsb9_INPUTS[0] } )
      , .OUTPUTS( { wire_OUTPUTS_2_9, sb_inputs_cluster2[9], sb_inputs_cluster1[9] } )
      , .STROBE( { w_STROBE_DMSBL1_0[29], w_STROBE_DMSBL1_0[28], w_STROBE_DMSBL1_0[27] } )
     );

DMSB_NB_INPUTS_5_DATA_SIZE_8_NB_OUTPUTS_5_STROBE_SIZE_15 instance_sb_boundary_right_dmsb_L2_0(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb1_INPUTS[1], w_dmsb0_INPUTS[1], sb_inputs3[0], sb_inputs2[0], sb_inputs1[0] } )
      , .OUTPUTS( { w_dmsb12_INPUTS[0], w_dmsb0_INPUTS[0], sb_outputs3[0], sb_outputs2[0], sb_outputs1[0] } )
      , .STROBE( { w_STROBE_DMSBL2_0[14], w_STROBE_DMSBL2_0[13], w_STROBE_DMSBL2_0[12], w_STROBE_DMSBL2_0[11], w_STROBE_DMSBL2_0[10], w_STROBE_DMSBL2_0[9], w_STROBE_DMSBL2_0[8], w_STROBE_DMSBL2_0[7], w_STROBE_DMSBL2_0[6], w_STROBE_DMSBL2_0[5], w_STROBE_DMSBL2_0[4], w_STROBE_DMSBL2_0[3], w_STROBE_DMSBL2_0[2], w_STROBE_DMSBL2_0[1], w_STROBE_DMSBL2_0[0] } )
     );

DMSB_NB_INPUTS_5_DATA_SIZE_8_NB_OUTPUTS_5_STROBE_SIZE_15 instance_sb_boundary_right_dmsb_L2_1(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb3_INPUTS[1], w_dmsb2_INPUTS[1], sb_inputs3[1], sb_inputs2[1], sb_inputs1[1] } )
      , .OUTPUTS( { w_dmsb13_INPUTS[0], w_dmsb1_INPUTS[0], sb_outputs3[1], sb_outputs2[1], sb_outputs1[1] } )
      , .STROBE( { w_STROBE_DMSBL2_0[29], w_STROBE_DMSBL2_0[28], w_STROBE_DMSBL2_0[27], w_STROBE_DMSBL2_0[26], w_STROBE_DMSBL2_0[25], w_STROBE_DMSBL2_0[24], w_STROBE_DMSBL2_0[23], w_STROBE_DMSBL2_0[22], w_STROBE_DMSBL2_0[21], w_STROBE_DMSBL2_0[20], w_STROBE_DMSBL2_0[19], w_STROBE_DMSBL2_0[18], w_STROBE_DMSBL2_0[17], w_STROBE_DMSBL2_0[16], w_STROBE_DMSBL2_0[15] } )
     );

DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 instance_sb_boundary_right_dmsb_L2_10(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb14_INPUTS[1], sb_inputs3[10], sb_inputs2[10], sb_inputs1[10] } )
      , .OUTPUTS( { w_dmsb10_INPUTS[0], sb_outputs3[10], sb_outputs2[10], sb_outputs1[10] } )
      , .STROBE( { w_STROBE_DMSBL2_0[115], w_STROBE_DMSBL2_0[114], w_STROBE_DMSBL2_0[113], w_STROBE_DMSBL2_0[112], w_STROBE_DMSBL2_0[111], w_STROBE_DMSBL2_0[110], w_STROBE_DMSBL2_0[109], w_STROBE_DMSBL2_0[108] } )
     );

DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 instance_sb_boundary_right_dmsb_L2_11(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb15_INPUTS[1], sb_inputs3[11], sb_inputs2[11], sb_inputs1[11] } )
      , .OUTPUTS( { w_dmsb11_INPUTS[0], sb_outputs3[11], sb_outputs2[11], sb_outputs1[11] } )
      , .STROBE( { w_STROBE_DMSBL2_0[123], w_STROBE_DMSBL2_0[122], w_STROBE_DMSBL2_0[121], w_STROBE_DMSBL2_0[120], w_STROBE_DMSBL2_0[119], w_STROBE_DMSBL2_0[118], w_STROBE_DMSBL2_0[117], w_STROBE_DMSBL2_0[116] } )
     );

DMSB_NB_INPUTS_5_DATA_SIZE_8_NB_OUTPUTS_5_STROBE_SIZE_15 instance_sb_boundary_right_dmsb_L2_2(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb5_INPUTS[1], w_dmsb4_INPUTS[1], sb_inputs3[2], sb_inputs2[2], sb_inputs1[2] } )
      , .OUTPUTS( { w_dmsb14_INPUTS[0], w_dmsb2_INPUTS[0], sb_outputs3[2], sb_outputs2[2], sb_outputs1[2] } )
      , .STROBE( { w_STROBE_DMSBL2_0[44], w_STROBE_DMSBL2_0[43], w_STROBE_DMSBL2_0[42], w_STROBE_DMSBL2_0[41], w_STROBE_DMSBL2_0[40], w_STROBE_DMSBL2_0[39], w_STROBE_DMSBL2_0[38], w_STROBE_DMSBL2_0[37], w_STROBE_DMSBL2_0[36], w_STROBE_DMSBL2_0[35], w_STROBE_DMSBL2_0[34], w_STROBE_DMSBL2_0[33], w_STROBE_DMSBL2_0[32], w_STROBE_DMSBL2_0[31], w_STROBE_DMSBL2_0[30] } )
     );

DMSB_NB_INPUTS_5_DATA_SIZE_8_NB_OUTPUTS_5_STROBE_SIZE_15 instance_sb_boundary_right_dmsb_L2_3(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb7_INPUTS[1], w_dmsb6_INPUTS[1], sb_inputs3[3], sb_inputs2[3], sb_inputs1[3] } )
      , .OUTPUTS( { w_dmsb15_INPUTS[0], w_dmsb3_INPUTS[0], sb_outputs3[3], sb_outputs2[3], sb_outputs1[3] } )
      , .STROBE( { w_STROBE_DMSBL2_0[59], w_STROBE_DMSBL2_0[58], w_STROBE_DMSBL2_0[57], w_STROBE_DMSBL2_0[56], w_STROBE_DMSBL2_0[55], w_STROBE_DMSBL2_0[54], w_STROBE_DMSBL2_0[53], w_STROBE_DMSBL2_0[52], w_STROBE_DMSBL2_0[51], w_STROBE_DMSBL2_0[50], w_STROBE_DMSBL2_0[49], w_STROBE_DMSBL2_0[48], w_STROBE_DMSBL2_0[47], w_STROBE_DMSBL2_0[46], w_STROBE_DMSBL2_0[45] } )
     );

DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 instance_sb_boundary_right_dmsb_L2_4(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb8_INPUTS[1], sb_inputs3[4], sb_inputs2[4], sb_inputs1[4] } )
      , .OUTPUTS( { w_dmsb4_INPUTS[0], sb_outputs3[4], sb_outputs2[4], sb_outputs1[4] } )
      , .STROBE( { w_STROBE_DMSBL2_0[67], w_STROBE_DMSBL2_0[66], w_STROBE_DMSBL2_0[65], w_STROBE_DMSBL2_0[64], w_STROBE_DMSBL2_0[63], w_STROBE_DMSBL2_0[62], w_STROBE_DMSBL2_0[61], w_STROBE_DMSBL2_0[60] } )
     );

DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 instance_sb_boundary_right_dmsb_L2_5(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb9_INPUTS[1], sb_inputs3[5], sb_inputs2[5], sb_inputs1[5] } )
      , .OUTPUTS( { w_dmsb5_INPUTS[0], sb_outputs3[5], sb_outputs2[5], sb_outputs1[5] } )
      , .STROBE( { w_STROBE_DMSBL2_0[75], w_STROBE_DMSBL2_0[74], w_STROBE_DMSBL2_0[73], w_STROBE_DMSBL2_0[72], w_STROBE_DMSBL2_0[71], w_STROBE_DMSBL2_0[70], w_STROBE_DMSBL2_0[69], w_STROBE_DMSBL2_0[68] } )
     );

DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 instance_sb_boundary_right_dmsb_L2_6(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb10_INPUTS[1], sb_inputs3[6], sb_inputs2[6], sb_inputs1[6] } )
      , .OUTPUTS( { w_dmsb6_INPUTS[0], sb_outputs3[6], sb_outputs2[6], sb_outputs1[6] } )
      , .STROBE( { w_STROBE_DMSBL2_0[83], w_STROBE_DMSBL2_0[82], w_STROBE_DMSBL2_0[81], w_STROBE_DMSBL2_0[80], w_STROBE_DMSBL2_0[79], w_STROBE_DMSBL2_0[78], w_STROBE_DMSBL2_0[77], w_STROBE_DMSBL2_0[76] } )
     );

DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 instance_sb_boundary_right_dmsb_L2_7(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb11_INPUTS[1], sb_inputs3[7], sb_inputs2[7], sb_inputs1[7] } )
      , .OUTPUTS( { w_dmsb7_INPUTS[0], sb_outputs3[7], sb_outputs2[7], sb_outputs1[7] } )
      , .STROBE( { w_STROBE_DMSBL2_0[91], w_STROBE_DMSBL2_0[90], w_STROBE_DMSBL2_0[89], w_STROBE_DMSBL2_0[88], w_STROBE_DMSBL2_0[87], w_STROBE_DMSBL2_0[86], w_STROBE_DMSBL2_0[85], w_STROBE_DMSBL2_0[84] } )
     );

DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 instance_sb_boundary_right_dmsb_L2_8(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb12_INPUTS[1], sb_inputs3[8], sb_inputs2[8], sb_inputs1[8] } )
      , .OUTPUTS( { w_dmsb8_INPUTS[0], sb_outputs3[8], sb_outputs2[8], sb_outputs1[8] } )
      , .STROBE( { w_STROBE_DMSBL2_0[99], w_STROBE_DMSBL2_0[98], w_STROBE_DMSBL2_0[97], w_STROBE_DMSBL2_0[96], w_STROBE_DMSBL2_0[95], w_STROBE_DMSBL2_0[94], w_STROBE_DMSBL2_0[93], w_STROBE_DMSBL2_0[92] } )
     );

DMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 instance_sb_boundary_right_dmsb_L2_9(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { w_dmsb13_INPUTS[1], sb_inputs3[9], sb_inputs2[9], sb_inputs1[9] } )
      , .OUTPUTS( { w_dmsb9_INPUTS[0], sb_outputs3[9], sb_outputs2[9], sb_outputs1[9] } )
      , .STROBE( { w_STROBE_DMSBL2_0[107], w_STROBE_DMSBL2_0[106], w_STROBE_DMSBL2_0[105], w_STROBE_DMSBL2_0[104], w_STROBE_DMSBL2_0[103], w_STROBE_DMSBL2_0[102], w_STROBE_DMSBL2_0[101], w_STROBE_DMSBL2_0[100] } )
     );

DMSB_NB_INPUTS_16_DATA_SIZE_8_NB_OUTPUTS_2_STROBE_SIZE_8 instance_sb_boundary_right_dmsbout_(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { wire_OUTPUTS_2_15, wire_OUTPUTS_2_14, wire_OUTPUTS_2_13, wire_OUTPUTS_2_12, wire_OUTPUTS_2_11, wire_OUTPUTS_2_10, wire_OUTPUTS_2_9, wire_OUTPUTS_2_8, wire_OUTPUTS_2_7, wire_OUTPUTS_2_6, wire_OUTPUTS_2_5, wire_OUTPUTS_2_4, wire_OUTPUTS_2_3, wire_OUTPUTS_2_2, wire_OUTPUTS_2_1, wire_OUTPUTS_2_0 } )
      , .OUTPUTS( { sb_outpads1[0], sb_outpads0[0] } )
      , .STROBE( { w_STROBE_DMSBOUT_0[7], w_STROBE_DMSBOUT_0[6], w_STROBE_DMSBOUT_0[5], w_STROBE_DMSBOUT_0[4], w_STROBE_DMSBOUT_0[3], w_STROBE_DMSBOUT_0[2], w_STROBE_DMSBOUT_0[1], w_STROBE_DMSBOUT_0[0] } )
     );

UMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 instance_sb_boundary_right_umsb_L1_0(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { sb_outputs_cluster2[0], sb_outputs_cluster1[0], sb_inpads1[0], sb_inpads0[0] } )
      , .OUTPUTS( { w_dmsb3_INPUTS[1], w_dmsb2_INPUTS[1], w_dmsb1_INPUTS[1], w_dmsb0_INPUTS[1] } )
      , .STROBE( { w_STROBE_UMSB_0[7], w_STROBE_UMSB_0[6], w_STROBE_UMSB_0[5], w_STROBE_UMSB_0[4], w_STROBE_UMSB_0[3], w_STROBE_UMSB_0[2], w_STROBE_UMSB_0[1], w_STROBE_UMSB_0[0] } )
     );

UMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 instance_sb_boundary_right_umsb_L1_1(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { sb_outputs_cluster2[1], sb_outputs_cluster1[1], sb_inpads1[0], sb_inpads0[0] } )
      , .OUTPUTS( { w_dmsb7_INPUTS[1], w_dmsb6_INPUTS[1], w_dmsb5_INPUTS[1], w_dmsb4_INPUTS[1] } )
      , .STROBE( { w_STROBE_UMSB_0[15], w_STROBE_UMSB_0[14], w_STROBE_UMSB_0[13], w_STROBE_UMSB_0[12], w_STROBE_UMSB_0[11], w_STROBE_UMSB_0[10], w_STROBE_UMSB_0[9], w_STROBE_UMSB_0[8] } )
     );

UMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 instance_sb_boundary_right_umsb_L1_2(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { sb_outputs_cluster2[2], sb_outputs_cluster1[2], sb_inpads1[0], sb_inpads0[0] } )
      , .OUTPUTS( { w_dmsb11_INPUTS[1], w_dmsb10_INPUTS[1], w_dmsb9_INPUTS[1], w_dmsb8_INPUTS[1] } )
      , .STROBE( { w_STROBE_UMSB_0[23], w_STROBE_UMSB_0[22], w_STROBE_UMSB_0[21], w_STROBE_UMSB_0[20], w_STROBE_UMSB_0[19], w_STROBE_UMSB_0[18], w_STROBE_UMSB_0[17], w_STROBE_UMSB_0[16] } )
     );

UMSB_NB_INPUTS_4_DATA_SIZE_8_NB_OUTPUTS_4_STROBE_SIZE_8 instance_sb_boundary_right_umsb_L1_3(
        .DATA( { sb_data[7], sb_data[6], sb_data[5], sb_data[4], sb_data[3], sb_data[2], sb_data[1], sb_data[0] } )
      , .INPUTS( { sb_outputs_cluster2[3], sb_outputs_cluster1[3], sb_inpads1[0], sb_inpads0[0] } )
      , .OUTPUTS( { w_dmsb15_INPUTS[1], w_dmsb14_INPUTS[1], w_dmsb13_INPUTS[1], w_dmsb12_INPUTS[1] } )
      , .STROBE( { w_STROBE_UMSB_0[31], w_STROBE_UMSB_0[30], w_STROBE_UMSB_0[29], w_STROBE_UMSB_0[28], w_STROBE_UMSB_0[27], w_STROBE_UMSB_0[26], w_STROBE_UMSB_0[25], w_STROBE_UMSB_0[24] } )
     );

loader_sb_corner_boundary_addS_9_strDL2_124_strDL1_48_strU_32 loader_sb_i_5(
        .CLK( conf_ck )
      , .RESET( reset )
      , .SELECT( selector )
      , .ADDRESS( { address[8], address[7], address[6], address[5], address[4], address[3], address[2], address[1], address[0] } )
      , .STROBE_DMSBL1( { w_STROBE_DMSBL1_0[47], w_STROBE_DMSBL1_0[46], w_STROBE_DMSBL1_0[45], w_STROBE_DMSBL1_0[44], w_STROBE_DMSBL1_0[43], w_STROBE_DMSBL1_0[42], w_STROBE_DMSBL1_0[41], w_STROBE_DMSBL1_0[40], w_STROBE_DMSBL1_0[39], w_STROBE_DMSBL1_0[38], w_STROBE_DMSBL1_0[37], w_STROBE_DMSBL1_0[36], w_STROBE_DMSBL1_0[35], w_STROBE_DMSBL1_0[34], w_STROBE_DMSBL1_0[33], w_STROBE_DMSBL1_0[32], w_STROBE_DMSBL1_0[31], w_STROBE_DMSBL1_0[30], w_STROBE_DMSBL1_0[29], w_STROBE_DMSBL1_0[28], w_STROBE_DMSBL1_0[27], w_STROBE_DMSBL1_0[26], w_STROBE_DMSBL1_0[25], w_STROBE_DMSBL1_0[24], w_STROBE_DMSBL1_0[23], w_STROBE_DMSBL1_0[22], w_STROBE_DMSBL1_0[21], w_STROBE_DMSBL1_0[20], w_STROBE_DMSBL1_0[19], w_STROBE_DMSBL1_0[18], w_STROBE_DMSBL1_0[17], w_STROBE_DMSBL1_0[16], w_STROBE_DMSBL1_0[15], w_STROBE_DMSBL1_0[14], w_STROBE_DMSBL1_0[13], w_STROBE_DMSBL1_0[12], w_STROBE_DMSBL1_0[11], w_STROBE_DMSBL1_0[10], w_STROBE_DMSBL1_0[9], w_STROBE_DMSBL1_0[8], w_STROBE_DMSBL1_0[7], w_STROBE_DMSBL1_0[6], w_STROBE_DMSBL1_0[5], w_STROBE_DMSBL1_0[4], w_STROBE_DMSBL1_0[3], w_STROBE_DMSBL1_0[2], w_STROBE_DMSBL1_0[1], w_STROBE_DMSBL1_0[0] } )
      , .STROBE_DMSBL2( { w_STROBE_DMSBL2_0[123], w_STROBE_DMSBL2_0[122], w_STROBE_DMSBL2_0[121], w_STROBE_DMSBL2_0[120], w_STROBE_DMSBL2_0[119], w_STROBE_DMSBL2_0[118], w_STROBE_DMSBL2_0[117], w_STROBE_DMSBL2_0[116], w_STROBE_DMSBL2_0[115], w_STROBE_DMSBL2_0[114], w_STROBE_DMSBL2_0[113], w_STROBE_DMSBL2_0[112], w_STROBE_DMSBL2_0[111], w_STROBE_DMSBL2_0[110], w_STROBE_DMSBL2_0[109], w_STROBE_DMSBL2_0[108], w_STROBE_DMSBL2_0[107], w_STROBE_DMSBL2_0[106], w_STROBE_DMSBL2_0[105], w_STROBE_DMSBL2_0[104], w_STROBE_DMSBL2_0[103], w_STROBE_DMSBL2_0[102], w_STROBE_DMSBL2_0[101], w_STROBE_DMSBL2_0[100], w_STROBE_DMSBL2_0[99], w_STROBE_DMSBL2_0[98], w_STROBE_DMSBL2_0[97], w_STROBE_DMSBL2_0[96], w_STROBE_DMSBL2_0[95], w_STROBE_DMSBL2_0[94], w_STROBE_DMSBL2_0[93], w_STROBE_DMSBL2_0[92], w_STROBE_DMSBL2_0[91], w_STROBE_DMSBL2_0[90], w_STROBE_DMSBL2_0[89], w_STROBE_DMSBL2_0[88], w_STROBE_DMSBL2_0[87], w_STROBE_DMSBL2_0[86], w_STROBE_DMSBL2_0[85], w_STROBE_DMSBL2_0[84], w_STROBE_DMSBL2_0[83], w_STROBE_DMSBL2_0[82], w_STROBE_DMSBL2_0[81], w_STROBE_DMSBL2_0[80], w_STROBE_DMSBL2_0[79], w_STROBE_DMSBL2_0[78], w_STROBE_DMSBL2_0[77], w_STROBE_DMSBL2_0[76], w_STROBE_DMSBL2_0[75], w_STROBE_DMSBL2_0[74], w_STROBE_DMSBL2_0[73], w_STROBE_DMSBL2_0[72], w_STROBE_DMSBL2_0[71], w_STROBE_DMSBL2_0[70], w_STROBE_DMSBL2_0[69], w_STROBE_DMSBL2_0[68], w_STROBE_DMSBL2_0[67], w_STROBE_DMSBL2_0[66], w_STROBE_DMSBL2_0[65], w_STROBE_DMSBL2_0[64], w_STROBE_DMSBL2_0[63], w_STROBE_DMSBL2_0[62], w_STROBE_DMSBL2_0[61], w_STROBE_DMSBL2_0[60], w_STROBE_DMSBL2_0[59], w_STROBE_DMSBL2_0[58], w_STROBE_DMSBL2_0[57], w_STROBE_DMSBL2_0[56], w_STROBE_DMSBL2_0[55], w_STROBE_DMSBL2_0[54], w_STROBE_DMSBL2_0[53], w_STROBE_DMSBL2_0[52], w_STROBE_DMSBL2_0[51], w_STROBE_DMSBL2_0[50], w_STROBE_DMSBL2_0[49], w_STROBE_DMSBL2_0[48], w_STROBE_DMSBL2_0[47], w_STROBE_DMSBL2_0[46], w_STROBE_DMSBL2_0[45], w_STROBE_DMSBL2_0[44], w_STROBE_DMSBL2_0[43], w_STROBE_DMSBL2_0[42], w_STROBE_DMSBL2_0[41], w_STROBE_DMSBL2_0[40], w_STROBE_DMSBL2_0[39], w_STROBE_DMSBL2_0[38], w_STROBE_DMSBL2_0[37], w_STROBE_DMSBL2_0[36], w_STROBE_DMSBL2_0[35], w_STROBE_DMSBL2_0[34], w_STROBE_DMSBL2_0[33], w_STROBE_DMSBL2_0[32], w_STROBE_DMSBL2_0[31], w_STROBE_DMSBL2_0[30], w_STROBE_DMSBL2_0[29], w_STROBE_DMSBL2_0[28], w_STROBE_DMSBL2_0[27], w_STROBE_DMSBL2_0[26], w_STROBE_DMSBL2_0[25], w_STROBE_DMSBL2_0[24], w_STROBE_DMSBL2_0[23], w_STROBE_DMSBL2_0[22], w_STROBE_DMSBL2_0[21], w_STROBE_DMSBL2_0[20], w_STROBE_DMSBL2_0[19], w_STROBE_DMSBL2_0[18], w_STROBE_DMSBL2_0[17], w_STROBE_DMSBL2_0[16], w_STROBE_DMSBL2_0[15], w_STROBE_DMSBL2_0[14], w_STROBE_DMSBL2_0[13], w_STROBE_DMSBL2_0[12], w_STROBE_DMSBL2_0[11], w_STROBE_DMSBL2_0[10], w_STROBE_DMSBL2_0[9], w_STROBE_DMSBL2_0[8], w_STROBE_DMSBL2_0[7], w_STROBE_DMSBL2_0[6], w_STROBE_DMSBL2_0[5], w_STROBE_DMSBL2_0[4], w_STROBE_DMSBL2_0[3], w_STROBE_DMSBL2_0[2], w_STROBE_DMSBL2_0[1], w_STROBE_DMSBL2_0[0] } )
      , .STROBE_DMSBOUT( { w_STROBE_DMSBOUT_0[7], w_STROBE_DMSBOUT_0[6], w_STROBE_DMSBOUT_0[5], w_STROBE_DMSBOUT_0[4], w_STROBE_DMSBOUT_0[3], w_STROBE_DMSBOUT_0[2], w_STROBE_DMSBOUT_0[1], w_STROBE_DMSBOUT_0[0] } )
      , .STROBE_UMSB( { w_STROBE_UMSB_0[31], w_STROBE_UMSB_0[30], w_STROBE_UMSB_0[29], w_STROBE_UMSB_0[28], w_STROBE_UMSB_0[27], w_STROBE_UMSB_0[26], w_STROBE_UMSB_0[25], w_STROBE_UMSB_0[24], w_STROBE_UMSB_0[23], w_STROBE_UMSB_0[22], w_STROBE_UMSB_0[21], w_STROBE_UMSB_0[20], w_STROBE_UMSB_0[19], w_STROBE_UMSB_0[18], w_STROBE_UMSB_0[17], w_STROBE_UMSB_0[16], w_STROBE_UMSB_0[15], w_STROBE_UMSB_0[14], w_STROBE_UMSB_0[13], w_STROBE_UMSB_0[12], w_STROBE_UMSB_0[11], w_STROBE_UMSB_0[10], w_STROBE_UMSB_0[9], w_STROBE_UMSB_0[8], w_STROBE_UMSB_0[7], w_STROBE_UMSB_0[6], w_STROBE_UMSB_0[5], w_STROBE_UMSB_0[4], w_STROBE_UMSB_0[3], w_STROBE_UMSB_0[2], w_STROBE_UMSB_0[1], w_STROBE_UMSB_0[0] } )
     );


endmodule
