`timescale 1 ns/10 ps 

module GenericTestBench
#(
parameter address_size=15 ,
parameter data_size=8,
parameter period=20, 
parameter size_bitstream=34878,
parameter Max_in_size=8,
parameter inTB_size=8,
parameter inRL_size=8,
parameter Max_out_size=8,
parameter outTB_size=8,
parameter outRL_size=8,
parameter test_size=3
)
();

reg clk, conf, reset ,configure=0;
reg[inTB_size-1:0] in_t, in_b;
reg[inRL_size-1:0] in_r, in_l;
reg[data_size-1:0] data;
reg[address_size-1:0] address;


wire[outTB_size-1:0] out_t, out_b;
wire[outRL_size-1:0] out_r, out_l;

reg[address_size+data_size-1:0] read_bitstream [0:2*size_bitstream-1];
reg[address_size-1:0] read_address [0:size_bitstream-1];
reg[data_size-1:0] read_data [0:size_bitstream-1] ;
reg[Max_in_size-1:0] read_input [0:(test_size*4)-1];
reg[Max_out_size-1:0] read_output [0:(test_size*4)-1];
MeshOfTree  UUT ( .clock(clk), .conf(conf), .reset(reset), .address(address), .data(data), .inpads_top(in_t), .inpads_right(in_r), .inpads_bottom(in_b), .inpads_left(in_l), .outpads_top(out_t), .outpads_right(out_r), .outpads_bottom(out_b), .outpads_left(out_l));
integer File, i,j ;


//clock block
always
begin
if (configure == 1'b1)
    begin
        clk =1'b1;
        #20;
        clk =1'b0;
        #20;
    end
else if (configure == 1'b0)
    begin
        conf =1'b1;
        #20;
        conf =1'b0;
        #20;
    end
end

//download bitstream
initial 
begin
   $readmemb("bitstream.final",read_bitstream);
   j=0;
   for(i=0; i<size_bitstream*2; i=i+2)
   begin 
        read_address[j] = read_bitstream[i];
        read_data[j] = read_bitstream[i+1] [data_size-1:0];
        j=j+1;
   end
   assign reset = 1'b1;
   assign configure =1'b0;
   for (i=0; i<size_bitstream ; i=i+1)
   begin
        address = read_address[i];
        data = read_data[i];
        #160;
    $display(address);
    $display(data);
   end
   $display("********************* bitstream loaded successfully *********************");

   $display("********************* starting behaviour simulation *********************");

   assign configure =1'b1;
   $readmemb("input.final",read_input);
   for (i=0; i<test_size ; i=i+1)
   begin
   in_t <= read_input[(i*4)+0][inTB_size-1:0];
   in_r <= read_input[(i*4)+1][inRL_size-1:0];
   in_b <= read_input[(i*4)+2][inTB_size-1:0];
   in_l <= read_input[(i*4)+3][inRL_size-1:0];
   
   #400;
   $display(out_t);
   $display(out_r);
   $display(out_b);
   $display(out_l);
   read_output[(i*4)+0][outTB_size-1:0] = out_t;
   read_output[(i*4)+1][outRL_size-1:0] = out_r;
   read_output[(i*4)+2][outTB_size-1:0] = out_b;
   read_output[(i*4)+3][outRL_size-1:0] = out_l;


   $writememb("output.txt", read_output);
   end
   $stop();
        
        
        


end





endmodule