module loader_0 
#(
    parameter ADDRESS_SIZE = 10,
    parameter DATA_SIZE = 8,
    parameter NB_SLAVES = 4,
    parameter N_SIZE_UMSB = 2,
    parameter NB_UMSB = {8'd0, 8'd0, 8'd2, 8'd3},
	parameter SIZE_STROBE_UMSB = 67,
	parameter NB_STROBE_UMSB = {8'd0,8'd0,8'd8,8'd17},
	parameter remainder_UMSB = {8'd0,8'd0,8'd0,8'd1},
    parameter N_SIZE_DMSB = 2,
    parameter NB_DMSB = {8'd0, 8'd0, 8'd2, 8'd3},
	parameter SIZE_STROBE_DMSB = 67,
	parameter NB_STROBE_DMSB = {8'd0,8'd0,8'd8,8'd17},
	parameter remainder_DMSB = {8'd0,8'd0,8'd0,8'd1},
    parameter SIZE_STROBE_BLE = 68,
    parameter HAS_DMSBOUT = 0,
    parameter SIZE_STROBE_DMSBOUT = 0,
    parameter N_SIZE_DMSBOUT = 0,
    parameter NB_DMSBOUT = {8'd0,8'd0,8'd0,8'd0},
    parameter NB_STROBE_DMSBOUT = {8'd0,8'd0,8'd0,8'd0},
    parameter remainder_DMSBOUT = {8'd0,8'd0,8'd0,8'd0}

)

(CLK, RESET, SELECT_LEVEL, ADDRESS, STROBE_DMSB, STROBE_UMSB, STROBE_BLE, STROBE_DMSBOUT);

//Inputs
    input CLK;
    input RESET;
    input SELECT_LEVEL;
    input [ADDRESS_SIZE-1:0] ADDRESS;
//Outputs

    output reg [SIZE_STROBE_DMSB-1:0] STROBE_DMSB;
    output reg [SIZE_STROBE_UMSB-1:0] STROBE_UMSB;
    output reg [SIZE_STROBE_DMSBOUT-1:0] STROBE_DMSBOUT;
    output reg [SIZE_STROBE_BLE-1:0] STROBE_BLE;

    localparam SIZE_STROBE_SINGLE_BLE = SIZE_STROBE_BLE / NB_SLAVES;
    localparam SIZE_REMAINDER_BLE = SIZE_STROBE_SINGLE_BLE % DATA_SIZE;

    reg enable_dmsb;
    reg enable_umsb;
    reg enable_dmsbout;
    reg [NB_SLAVES-1:0] fill_select_slave = 1;
    reg [NB_SLAVES-1:0] select_ble = 1;
    wire [SIZE_STROBE_DMSB-1:0] STROBE_DMSB_OUT;
    wire [SIZE_STROBE_UMSB-1:0] STROBE_UMSB_OUT;
    wire [SIZE_STROBE_BLE-1:0] STROBE_BLE_OUT;
    wire [SIZE_STROBE_DMSBOUT-1:0] STROBE_DMSBOUT_OUT;

    always @(posedge CLK)
    begin
        if (RESET == 1'b0) begin
            enable_dmsb <= 1'b0;
            enable_umsb <= 1'b0;
            select_ble <= 0;
            enable_dmsbout <= 1'b0;
        end
    end
    always @(SELECT_LEVEL) 
        begin
            if (SELECT_LEVEL == 1'b1) begin
                if (ADDRESS[ADDRESS_SIZE-1-:$clog2(NB_SLAVES+2)] == NB_SLAVES)
                begin
                    enable_dmsb <= 1'b1;
                    enable_umsb <= 1'b0;
                    enable_dmsbout <= 1'b0;
                    select_ble <= 0;
                end
                else if (ADDRESS[ADDRESS_SIZE-1-:$clog2(NB_SLAVES+2)] == NB_SLAVES + 1)
                begin
                    enable_umsb <= 1'b1;
                    enable_dmsb <= 1'b0;
                    enable_dmsbout <= 1'b0;
                    select_ble <= 0;
                end
                else if (ADDRESS[ADDRESS_SIZE-1-:$clog2(NB_SLAVES+2)] == NB_SLAVES + 2)
                begin
                    enable_umsb <= 1'b0;
                    enable_dmsb <= 1'b0;
                    enable_dmsbout <= 1'b1;
                    select_ble <= 0;
                end
                else
                begin
                    select_ble <= fill_select_slave << ADDRESS[ADDRESS_SIZE-1-:$clog2(NB_SLAVES+2)];
                    enable_umsb <= 1'b0;
                    enable_dmsb <= 1'b0;
                    enable_dmsbout <= 1'b0;
                end
            end
            else 
            begin
               enable_umsb <= 1'b0;
               enable_dmsb <= 1'b0;
               select_ble <= 0;
               enable_dmsbout <= 1'b0;
            end
         end



 
loader_msb #(
    .ADDRESS_SIZE(ADDRESS_SIZE-$clog2(NB_SLAVES+2)),
    .DATA_SIZE(DATA_SIZE),
    .N_SIZE(N_SIZE_DMSB),
    .NB_MSB(NB_DMSB),
    .STROBE(SIZE_STROBE_DMSB),
    .NB_STROBE(NB_STROBE_DMSB),
    .remainder(remainder_DMSB)
) loader_dmsb (
    .CLK(CLK),
    .RESET(RESET),
    .ENABLE(enable_dmsb),
    .ADDRESS(ADDRESS[ADDRESS_SIZE-$clog2(NB_SLAVES+2)-1:0]),
    .STROBE_MSB_OUT(STROBE_DMSB_OUT)
);

loader_msb #(
    .ADDRESS_SIZE(ADDRESS_SIZE-$clog2(NB_SLAVES+2)),
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
    .ADDRESS(ADDRESS[ADDRESS_SIZE-$clog2(NB_SLAVES+2)-1:0]),
    .STROBE_MSB_OUT(STROBE_UMSB_OUT)
);

loader_msb #(
    .ADDRESS_SIZE(ADDRESS_SIZE-$clog2(NB_SLAVES+2)),
    .DATA_SIZE(DATA_SIZE),
    .N_SIZE(N_SIZE_DMSBOUT),
    .NB_MSB(NB_UMSB),
    .STROBE(SIZE_STROBE_DMSBOUT),
    .NB_STROBE(NB_STROBE_DMSBOUT),
    .remainder(remainder_DMSBOUT)
) loader_dmsbout (
    .CLK(CLK),
    .RESET(RESET),
    .ENABLE(enable_dmsbout),
    .ADDRESS(ADDRESS[ADDRESS_SIZE-$clog2(NB_SLAVES+2)-1:0]),
    .STROBE_MSB_OUT(STROBE_DMSBOUT_OUT)
);


genvar i;

generate 
    for (i = 0; i < NB_SLAVES; i = i+1) begin
        loader_msb #(
            .ADDRESS_SIZE(ADDRESS_SIZE-$clog2(NB_SLAVES+2)),
            .DATA_SIZE(DATA_SIZE),
            .N_SIZE(1),
            .NB_MSB({8'b0 ,8'b0, 8'b0, 8'b1}),
            .STROBE(SIZE_STROBE_SINGLE_BLE),
            .NB_STROBE(SIZE_STROBE_SINGLE_BLE),
            .remainder(SIZE_REMAINDER_BLE)
        ) loader_ble (
            .CLK(CLK),
            .RESET(RESET),
            .ENABLE(select_ble[i]),
            .ADDRESS(ADDRESS[ADDRESS_SIZE-$clog2(NB_SLAVES+2)-1:0]),
            .STROBE_MSB_OUT(STROBE_BLE_OUT[i*SIZE_STROBE_SINGLE_BLE+:SIZE_STROBE_SINGLE_BLE])
        );
    end
endgenerate;

always @(*)
begin
 STROBE_DMSB <= STROBE_DMSB_OUT;
 STROBE_UMSB <= STROBE_UMSB_OUT;
 STROBE_BLE <= STROBE_BLE_OUT;
 STROBE_DMSBOUT <= STROBE_DMSBOUT_OUT;
 end


endmodule

    
