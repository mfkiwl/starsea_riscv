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

module regs (
input         clk                          ,
input         rst_n                        ,
input  [ 4:0] rs1                          ,
input  [ 4:0] rs2                          ,
output [31:0] rs1_dat                      ,
output [31:0] rs2_dat                      ,
output        rs1_dat_val                  ,
output        rs2_dat_val                  ,
input         alu_rd_val                   ,
input  [ 4:0] rd                           ,
input         rd_val                       ,
input  [31:0] rd_dat
);

reg [31:0] regs [0:31];
always@(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
      foreach(regs[i]) regs[i] <= 0;
    end else if(rd_val & (|rd))
        regs[rd] <= rd_dat;
end
assign rs1_dat = regs[rs1];
assign rs2_dat = regs[rs2];

//if last instuction is a alu operand writing dest reg, alu delay one cycle, but the next instruction is read the same reg, confilct meet, so read instrution is not valid
//control module halt pipline, untile write dest done(one cycle)
assign rs1_dat_val = (alu_rd_val & rd_val) & (rs1 == rd) ? 0 : 1;
assign rs2_dat_val = (alu_rd_val & rd_val) & (rs2 == rd) ? 0 : 1;

endmodule

