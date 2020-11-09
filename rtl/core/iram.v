module iram
(
    input          clk,
    input          rst_n,
    input          iram_we,
    input  [31:0]  iram_waddr,
    input  [31:0]  iram_wdata,
    input  [31:0]  inst_addr,
    output [31:0]  inst_dout
);
reg  [31:0] iram [0:8190];
//reg  [31:0] iram [0:1023];

initial begin
 $readmemh ("inst_data", iram);
end
always@(posedge clk)begin
    if(iram_we)
        iram[iram_waddr] <= iram_wdata;
end

assign inst_dout = iram[inst_addr>>2];

endmodule

