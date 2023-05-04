module mux2(cmd,i0,i1,Q);

	input cmd;
	input i0;
	input i1;
	output wire Q;
	//assign Q = ((i0 & ~(cmd)) | (i1 & cmd));
	assign Q= (cmd)? i1: i0;

	
	
endmodule 
