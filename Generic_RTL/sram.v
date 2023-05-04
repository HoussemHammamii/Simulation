module sram(d,nq,strobe);
	
	input d;
	input strobe;
	output wire nq;
	reg mbk_sig1=0;
	


	always @(d or strobe)
	begin
		if (strobe == 1)
			mbk_sig1 = d;

	end

	assign nq = mbk_sig1;

endmodule 
