vlib work
vmap work work
project new . mot
# add files
project addfile cluster_rtl/cluster_0.v 
project addfile cluster_rtl/cluster_0.v
project addfile cluster_rtl/cluster_1.v
project addfile cluster_rtl/encapsulatedModels.v
project addfile cluster_rtl/MeshOfTree.v
project addfile cluster_rtl/sb_BoundaryBottom.v
project addfile cluster_rtl/sb_BoundaryLeft.v
project addfile cluster_rtl/sb_BoundaryRight.v
project addfile cluster_rtl/sb_BoundaryTop.v
project addfile cluster_rtl/sb_CornerBottomLeft.v
project addfile cluster_rtl/sb_CornerBottomRight.v
project addfile cluster_rtl/sb_CornerTopLeft.v
project addfile cluster_rtl/sb_CornerTopRight.v
project addfile cluster_rtl/sb_Internal.v
project addfile cluster_rtl/TileBoundaryBottom.v
project addfile cluster_rtl/TileBoundaryLeft.v
project addfile cluster_rtl/TileBoundaryRight.v
project addfile cluster_rtl/TileBoundaryTop.v
project addfile cluster_rtl/TileCornerBottomLeft.v
project addfile cluster_rtl/TileCornerBottomRight.v
project addfile cluster_rtl/TileCornerTopLeft.v
project addfile cluster_rtl/TileCornerTopRight.v
project addfile cluster_rtl/TileInternal.v
project addfile Generic_RTL/bleGeneric.v
project addfile Generic_RTL/dff.v
project addfile Generic_RTL/msbGeneric.v
project addfile Generic_RTL/mux2.v
project addfile Generic_RTL/muxGeneric2.v
project addfile Generic_RTL/sram.v
project addfile Loader/loader0.sv
project addfile Loader/loader2.v
project addfile Loader/loader_mesh.v
project addfile Loader/loader_msb.sv
project addfile Loader/loader_sb_boundary_corner.v
project addfile Loader/loader_sb_internal.v
project addfile Loader/loader_tile.v
project addfile GenericTestBench/GenericTestBench.v
project addfile cluster_rtl/TestBench.v

# compile testbench and test program
project compileall

# simulate test_mot
vsim -voptargs=+acc work.TestBench
add wave -position insertpoint sim:/TestBench/Top/*
run -all
quit -f
