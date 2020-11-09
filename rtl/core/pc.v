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

module pc
(
    input             clk                       ,
(*mark_debug="true"*)    input             rst_n,
    input             ecall_bran_take           ,
    input             ebreak_bran_take          ,
    input             mret_bran_take            ,
    input     [31:0]  trap_addr                 ,
    input             jalr_inst                 ,
    input     [31:0]  target_addr               ,
    input             jalr_bran_take            ,
(*mark_debug="true"*)    input             jal_inst,
    input     [20:0]  jal_imm                   ,
    input             btype_inst                ,
    input             halt_pc                   ,
    input     [12:0]  b_type_imm_ex             ,
    input     [12:0]  pc_off                    ,
    input             pc_jump_en                ,
    output reg[31:0]  pc                        ,

    output            misalign_exception        ,
    input             misalign_bran_take        ,
    output            j_misalign_exception      ,
    input             j_misalign_bran_take      ,
    output            jalr_misalign_exception   ,
    input             jalr_misalign_bran_take   ,
    input             intr_bran_take

);
reg [12:0] pc_off_d;
reg [12:0] pc_off_d1;
always@(posedge clk or negedge rst_n)
    if(~rst_n)  pc_off_d1 <= 13'b0   ; 
    else        pc_off_d1   <= b_type_imm_ex;

wire  [31:0] pc_nxt;
reg   [31:0] pc_save;
reg   [31:0] pc_inc;
wire  [31:0] pc_add = pc_inc+32'h4;

always@(posedge clk or negedge rst_n)
    if(~rst_n)
        pc_inc <= 32'b0;
    else if(jal_inst)
       pc_inc <= pc + {{(11){jal_imm[20]}},jal_imm};
    else if(pc_jump_en)
        pc_inc <= pc + 32'h4;
    else
        pc_inc <= pc_add;

always@(posedge clk or negedge rst_n)
    if(~rst_n)
        pc_save <= 32'b0;
    else if(pc_jump_en)
        pc_save <= pc;
    else if( btype_inst)
        pc_save <= pc_inc;

reg [31:0] pc_save_d;
always@(posedge clk )
     pc_save_d <= pc_save; //decode need a cycle, alu need a cycle

wire [3:0] pc_sel = {(intr_bran_take|misalign_bran_take|jalr_misalign_bran_take|j_misalign_bran_take | mret_bran_take|ebreak_bran_take),ecall_bran_take,jalr_bran_take,pc_jump_en};
always@(*) begin
    pc = pc_inc;
    case(pc_sel)
    4'b0000  : pc = pc_inc;
    4'b0001  : pc = (pc_save_d + {{(19){pc_off_d1[12]}},pc_off_d1});
    4'b0011  : pc = {target_addr[31:1],1'b0};
    4'b0101  : pc = trap_addr;
    4'b1001  : pc = trap_addr;
    default : pc = pc_inc;
    endcase
end

wire [31:0] jal_pc = pc + {{(11){jal_imm[20]}},jal_imm};
assign j_misalign_exception = (jal_inst & (|jal_pc[1:0]));
assign jalr_misalign_exception = (jalr_bran_take&target_addr[1]);

reg    btype_inst_ex;
reg    btype_inst_wb;
always@(posedge clk)begin
    btype_inst_ex <= btype_inst;
    btype_inst_wb <= btype_inst_ex;
end
assign misalign_exception = btype_inst_wb & (|pc[1:0]);

endmodule

