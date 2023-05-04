
module TestBench ; 

GenericTestBench #(.address_size(15), .data_size(8), .period(20), .size_bitstream(65536), .Max_in_size(8), .inTB_size(8), .inRL_size(8), .Max_out_size(8), .outTB_size(8), .outRL_size(8), .test_size(3)
)
Top ();
endmodule
