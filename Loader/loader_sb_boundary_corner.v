module loader_sb_corner_boundary
#(
    parameter ADDRESS_SIZE = 9,
    parameter DATA_SIZE = 8,
    parameter SIZE_STROBE_DMSBOUT = 8,
    parameter SIZE_STROBE_DMSBL2 = 84,
    parameter SIZE_STROBE_DMSBL1 = 32,
    parameter SIZE_STROBE_UMSB = 32,
    parameter N_SIZE_DMSBL2 = 2,
    parameter N_SIZE_DMSBL1 = 1,
    parameter N_SIZE_UMSB = 1,
    parameter N_SIZE_DMSBOUT = 1,
    parameter NB_DMSBL2 = {8'd0,8'd0,8'd10,8'd3},
    parameter NB_STROBE_DMSBL2 = {8'd0,8'd0,8'd6,8'd8},
    parameter remainder_DMSBL2 = {8'd0,8'd0,8'd6,8'd0},
    parameter NB_DMSBL1 = {8'd0,8'd0,8'd0,8'd16},
    parameter NB_STROBE_DMSBL1 = {8'd0,8'd0,8'd0,8'd2},
    parameter remainder_DMSBL1 = {8'd0,8'd0,8'd0,8'd2},
    parameter NB_UMSB = {8'd0,8'd0,8'd0,8'd4},
    parameter NB_STROBE_UMSB = {8'd0,8'd0,8'd0,8'd8},
    parameter remainder_UMSB = {8'd0,8'd0,8'd0,8'd0},
    parameter NB_DMSBOUT = {8'd0,8'd0,8'd0,8'd1},
    parameter NB_STROBE_DMSBOUT = {8'd0,8'd0,8'd0,8'd8},
    parameter remainder_DMSBOUT = {8'd0,8'd0,8'd0,8'd0},
    parameter NB_ELEMENTS = 4
)

(CLK, RESET, SELECT, ADDRESS, STROBE_DMSBL1, STROBE_DMSBL2, STROBE_DMSBOUT, STROBE_UMSB);

//Inputs
    input CLK;
    input RESET;
    input SELECT;
    input [ADDRESS_SIZE-1:0] ADDRESS;
//Outputs
    output reg [SIZE_STROBE_DMSBL1-1:0]  STROBE_DMSBL1;
    output reg [SIZE_STROBE_DMSBL2-1:0]  STROBE_DMSBL2;
    output reg [SIZE_STROBE_DMSBOUT-1:0]  STROBE_DMSBOUT;
    output reg [SIZE_STROBE_UMSB-1:0]  STROBE_UMSB;

    reg enable_dmsbL2;
    reg enable_dmsbL1;
    reg enable_dmsbout;
    reg enable_umsb;

    // reg [NB_SLAVES-1:0] fill_select_slave = 1;

    wire [SIZE_STROBE_DMSBL2-1:0] STROBE_DMSBL2_OUT;
    wire [SIZE_STROBE_DMSBL1-1:0] STROBE_DMSBL1_OUT;
    wire [SIZE_STROBE_DMSBOUT-1:0] STROBE_DMSBOUT_OUT;
    wire [SIZE_STROBE_UMSB-1:0] STROBE_UMSB_OUT;

    always @(posedge CLK)
    begin
        if (RESET == 1'b0) begin
            enable_dmsbL2 <= 1'b0;
            enable_dmsbL1 <= 1'b0;
            enable_dmsbout <= 1'b0;
            enable_umsb <= 1'b0;
        end
    end
    always @(SELECT)    
    begin
            if (SELECT == 1'b1) begin
                if (ADDRESS[ADDRESS_SIZE-1-:$clog2(NB_ELEMENTS)] == 0)
                begin
                    enable_umsb <= 1'b1;
                    enable_dmsbL2 <= 1'b0;
                    enable_dmsbL1 <= 1'b0;
                    enable_dmsbout <= 1'b0;
                end
                else if (ADDRESS[ADDRESS_SIZE-1-:$clog2(NB_ELEMENTS)] == 1)
                begin
                    enable_dmsbL1 <= 1'b1;
                    enable_umsb <= 1'b0;
                    enable_dmsbL2 <= 1'b0;
                    enable_dmsbout <= 1'b0;
                end
                else if (ADDRESS[ADDRESS_SIZE-1-:$clog2(NB_ELEMENTS)] == 2)
                begin
                    enable_dmsbL2 <= 1'b1;
                    enable_dmsbL1 <= 1'b0;
                    enable_umsb <= 1'b0;
                    enable_dmsbout <= 1'b0;
                end
                else if (ADDRESS[ADDRESS_SIZE-1-:$clog2(NB_ELEMENTS)] == 3)
                begin
                    enable_dmsbout <= 1'b1;
                    enable_dmsbL2 <= 1'b0;
                    enable_dmsbL1 <= 1'b0;
                    enable_umsb <= 1'b0;
                end
            end
            else 
            begin
                enable_umsb <= 1'b0;
                enable_dmsbL2 <= 1'b0;
                enable_dmsbL1 <= 1'b0;
                enable_dmsbout <= 1'b0;
            end
         end

loader_msb #(
    .ADDRESS_SIZE(ADDRESS_SIZE-$clog2(NB_ELEMENTS)),
    .DATA_SIZE(DATA_SIZE),
    .N_SIZE(N_SIZE_DMSBL2),
    .NB_MSB(NB_DMSBL2),
    .STROBE(SIZE_STROBE_DMSBL2),
    .NB_STROBE(NB_STROBE_DMSBL2),
    .remainder(remainder_DMSBL2)
) loader_dmsbL2 (
    .CLK(CLK),
    .RESET(RESET),
    .ENABLE(enable_dmsbL2),
    .ADDRESS(ADDRESS[ADDRESS_SIZE-$clog2(NB_ELEMENTS)-1:0]),
    .STROBE_MSB_OUT(STROBE_DMSBL2_OUT)
);

loader_msb #(
    .ADDRESS_SIZE(ADDRESS_SIZE-$clog2(NB_ELEMENTS)),
    .DATA_SIZE(DATA_SIZE),
    .N_SIZE(N_SIZE_DMSBL1),
    .NB_MSB(NB_DMSBL1),
    .STROBE(SIZE_STROBE_DMSBL1),
    .NB_STROBE(NB_STROBE_DMSBL1),
    .remainder(remainder_DMSBL1)
) loader_dmsbL1 (
    .CLK(CLK),
    .RESET(RESET),
    .ENABLE(enable_dmsbL1),
    .ADDRESS(ADDRESS[ADDRESS_SIZE-$clog2(NB_ELEMENTS)-1:0]),
    .STROBE_MSB_OUT(STROBE_DMSBL1_OUT)
);

loader_msb #(
    .ADDRESS_SIZE(ADDRESS_SIZE-$clog2(NB_ELEMENTS)),
    .DATA_SIZE(DATA_SIZE),
    .N_SIZE(N_SIZE_UMSB),
    .NB_MSB(NB_UMSB),
    .STROBE(SIZE_STROBE_UMSB),
    .NB_STROBE(NB_STROBE_UMSB),
    .remainder(remainder_UMSB)
) loader_umsb (
    .CLK(CLK),
    .RESET(RESET),
    .ENABLE(enable_umsb),
    .ADDRESS(ADDRESS[ADDRESS_SIZE-$clog2(NB_ELEMENTS)-1:0]),
    .STROBE_MSB_OUT(STROBE_UMSB_OUT)
);

loader_msb #(
    .ADDRESS_SIZE(ADDRESS_SIZE-$clog2(NB_ELEMENTS)),
    .DATA_SIZE(DATA_SIZE),
    .N_SIZE(N_SIZE_DMSBOUT),
    .NB_MSB(NB_DMSBOUT),
    .STROBE(SIZE_STROBE_DMSBOUT),
    .NB_STROBE(NB_STROBE_DMSBOUT),
    .remainder(remainder_DMSBOUT)
) loader_dmsbout (
    .CLK(CLK),
    .RESET(RESET),
    .ENABLE(enable_dmsbout),
    .ADDRESS(ADDRESS[ADDRESS_SIZE-$clog2(NB_ELEMENTS)-1:0]),
    .STROBE_MSB_OUT(STROBE_DMSBOUT_OUT)
);

always @(*)
begin
    STROBE_DMSBL2 <= STROBE_DMSBL2_OUT;
    STROBE_DMSBL1 <= STROBE_DMSBL1_OUT;
    STROBE_DMSBOUT <= STROBE_DMSBOUT_OUT;
    STROBE_UMSB <= STROBE_UMSB_OUT;
end

endmodule
