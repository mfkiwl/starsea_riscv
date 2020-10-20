//   Copyright [starsea] [star_sea_riscv,tsp162@163.com,2020/9]
//
//   Licensed under the Apache License, Version 2.0 (the "License");
//   you may not use this file except in compliance with the License.
//   You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in writing, software
//   distributed under the License is distributed on an "AS IS" BASIS,
//   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//   See the License for the specific language governing permissions and
//   limitations under the License.

`timescale 1ns/1ps
`define SIM
module tb;
wire [31:0] t =0;
wire [31:0] a = $signed(t);
fpga_top u_fpga_top(
);
initial begin
  #1ms;
  $finish;
end
initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars(0, tb);
    $fsdbDumpMDA(0, tb);
end
wire[31:0] ra    = tb.u_fpga_top.u_starsea_core.u_regs.regs[1];
wire[31:0] sp    = tb.u_fpga_top.u_starsea_core.u_regs.regs[2];
wire[31:0] gp    = tb.u_fpga_top.u_starsea_core.u_regs.regs[3];
wire[31:0] tp    = tb.u_fpga_top.u_starsea_core.u_regs.regs[4];
wire[31:0] t0    = tb.u_fpga_top.u_starsea_core.u_regs.regs[5];
wire[31:0] t1    = tb.u_fpga_top.u_starsea_core.u_regs.regs[6];
wire[31:0] t2    = tb.u_fpga_top.u_starsea_core.u_regs.regs[7];
wire[31:0] s0_fp = tb.u_fpga_top.u_starsea_core.u_regs.regs[8];
wire[31:0] s1    = tb.u_fpga_top.u_starsea_core.u_regs.regs[9];
wire[31:0] a0    = tb.u_fpga_top.u_starsea_core.u_regs.regs[10];
wire[31:0] a1    = tb.u_fpga_top.u_starsea_core.u_regs.regs[11];
wire[31:0] a2    = tb.u_fpga_top.u_starsea_core.u_regs.regs[12];
wire[31:0] a3    = tb.u_fpga_top.u_starsea_core.u_regs.regs[13];
wire[31:0] a4    = tb.u_fpga_top.u_starsea_core.u_regs.regs[14];
wire[31:0] a5    = tb.u_fpga_top.u_starsea_core.u_regs.regs[15];
wire[31:0] a6    = tb.u_fpga_top.u_starsea_core.u_regs.regs[16];
wire[31:0] a7    = tb.u_fpga_top.u_starsea_core.u_regs.regs[17];
wire[31:0] s2    = tb.u_fpga_top.u_starsea_core.u_regs.regs[18];
wire[31:0] s3    = tb.u_fpga_top.u_starsea_core.u_regs.regs[19];
wire[31:0] s4    = tb.u_fpga_top.u_starsea_core.u_regs.regs[20];
wire[31:0] s5    = tb.u_fpga_top.u_starsea_core.u_regs.regs[21];
wire[31:0] s6    = tb.u_fpga_top.u_starsea_core.u_regs.regs[22];
wire[31:0] s7    = tb.u_fpga_top.u_starsea_core.u_regs.regs[23];
wire[31:0] s8    = tb.u_fpga_top.u_starsea_core.u_regs.regs[24];
wire[31:0] s9    = tb.u_fpga_top.u_starsea_core.u_regs.regs[25];
wire[31:0] s10   = tb.u_fpga_top.u_starsea_core.u_regs.regs[26];
wire[31:0] s11   = tb.u_fpga_top.u_starsea_core.u_regs.regs[27];
wire[31:0] t3    = tb.u_fpga_top.u_starsea_core.u_regs.regs[28];
wire[31:0] t4    = tb.u_fpga_top.u_starsea_core.u_regs.regs[29];
wire[31:0] t5    = tb.u_fpga_top.u_starsea_core.u_regs.regs[30];
wire[31:0] t6    = tb.u_fpga_top.u_starsea_core.u_regs.regs[31];

////////////////////complience testbench////////////////////////////////
`ifdef COMPLIANCE_TB
integer f;
integer i;
integer signature_begin;
integer signature_end;
initial begin
f=$fopen("sig_out","w");
end
initial begin
    @(posedge tb.u_fpga_top.u_starsea_core.dram_we)begin
        #1ns;
        if(tb.u_fpga_top.u_starsea_core.dram_addr[31:0]=='h508)
        signature_begin <= tb.u_fpga_top.u_starsea_core.dram_wdat;
    end
    @(posedge tb.u_fpga_top.u_starsea_core.dram_we)begin
        #1ns;
        if(tb.u_fpga_top.u_starsea_core.dram_addr[31:0]=='h50c)
        signature_end <= tb.u_fpga_top.u_starsea_core.dram_wdat;
     end

forever @(posedge tb.u_fpga_top.u_starsea_core.clk)
if(tb.u_fpga_top.u_starsea_core.dram_we &( tb.u_fpga_top.u_starsea_core.dram_addr[31:0]=='h600)) begin
      for(i=signature_begin;i<signature_end;i=i+4)
         $fdisplay(f,"%x",tb.u_fpga_top.u_starsea_core.u_dram.dram[(i-'h4000_0000)>>2]);
      $fclose(f);
      break;
  end
end
`endif
////////////////////complience testbench////////////////////////////////

endmodule;

