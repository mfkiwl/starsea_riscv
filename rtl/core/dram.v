module dram
(
    input             clk,
    input             rst_n,
    input     [31:0]  dram_wdat,
    input             dram_we,
    input     [3:0]   dram_we_byte,
    input             dram_rd,
    input     [31:0]  dram_addr,
    output reg[31:0]  dram_dout
);
reg  [31:0] dram [0:1023];
initial begin
 foreach(dram[i]) dram[i] = 0;
 #0.1us;
 $readmemh ("dram_data", dram);
end
always@(posedge clk)begin
    if(dram_we)begin
        if(dram_we_byte[0])
            dram[dram_addr>>2][7:0]   <= dram_wdat[7:0];
        if(dram_we_byte[1])
            dram[dram_addr>>2][15:8]  <= dram_wdat[15:8];
        if(dram_we_byte[2])
            dram[dram_addr>>2][23:16] <= dram_wdat[23:16];
        if(dram_we_byte[3])
            dram[dram_addr>>2][31:24] <= dram_wdat[31:24];
    end
end
reg [31:0] dram_dout_tmp;
always@(*)
    if(dram_rd)
        dram_dout_tmp = dram[dram_addr>>2];
    else
        dram_dout_tmp = 0;
assign dram_dout = dram_dout_tmp;
//assign dram_dout = dram[dram_addr>>2];
endmodule

