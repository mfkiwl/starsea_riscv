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

module id(
input                clk                          ,
input                rst_n                        ,
input      [31:0]    inst                         ,
output     [ 4:0]    rs1                          ,
output     [ 4:0]    rs2                          ,
output reg [ 4:0]    rs1_ex                       ,
output reg [ 4:0]    rs2_ex                       ,
output reg [ 4:0]    rd_ex                        ,
input      [31:0]    rs1_din                      ,
input      [31:0]    rs2_din                      ,
output     [ 4:0]    rd                           ,
output               rd_val                       ,
output     [31:0]    rd_dat                       ,
output               sw_en                        ,
output     [11:0]    si_type_imm                  ,
output reg           store_ex                     ,
output reg [ 2:0]    s_type_store_funct3_ex       ,
output reg           load_ex                      ,
output reg [ 2:0]    i_type_load_funct3_ex        ,
output reg           i_type_ari_ex                ,
output reg [ 2:0]    i_type_ari_funct3_ex         ,
output reg [ 6:0]    i_type_ari_funct7_ex         ,
output reg           r_type_ex                    ,
output reg [ 2:0]    r_type_funct3_ex             ,
output reg [ 6:0]    r_type_funct7_ex             ,
output reg           lui_ex                       ,
output reg           auipc_ex                     ,
output     [19:0]    u_type_imm                   ,
output               jal_inst                     ,
output reg           jal_ex                       ,
output     [20:0]    jal_imm                      ,
output reg [20:0]    jal_imm_ex                   ,
output reg           jalr_ex                      ,
output               jalr_inst                    ,
output reg [ 2:0]    b_type_funct3_ex             ,
output               btype_inst                   ,
output reg           btype_ex                     ,
output reg [12:0]    b_type_imm_ex                ,
output     [12:0]    pc_off                       ,
output reg           system_ex                    ,
output reg [ 2:0]    system_funct3_ex             ,
output reg [11:0]    system_funct12_ex

);
wire [ 6:0] opcode                       ;                             
wire [ 2:0] funct3                       ;                             
wire [ 6:0] funct7                       ;                             
wire [12:0] funct12                      ;                             
wire        r_type                       ;                             
wire        s_type                       ;                             
wire        u_type_lui                   ;                             
wire        u_type_auipc                 ;                             
wire        b_type                       ;                             
wire        j_type                       ;
assign opcode       = inst[6:0];                                                                                       
assign funct3       = inst[14:12];
assign funct7       = inst[31:25];
assign funct12      = inst[31:20];
assign r_type       = opcode == 7'b0110011 ? 1 : 0;
assign s_type       = opcode == 7'b0100011 ? 1 : 0;
assign i_type       = opcode == 7'b0000011 | opcode == 7'b0010011 | opcode == 7'b1100111;
assign u_type_lui   = opcode == 7'b0110111;
assign u_type_auipc = opcode == 7'b0010111;
assign b_type       = opcode == 7'b1100011;
assign j_type       = opcode == 7'b1101111;
assign rd           = b_type | s_type ? 0 :inst[11:7];
assign rd_val       = 1'b0;
assign u_type_imm   = u_type_lui | u_type_auipc ? inst[31:12] : 0;
assign jal_imm      = j_type ? {inst[31],inst[19:12],inst[20],inst[30:21],1'b0} : 0;

always@(posedge clk or negedge rst_n)
    if(~rst_n) jal_ex <= 0;
    else       jal_ex <= jal_inst;

always@(posedge clk or negedge rst_n)
    if(~rst_n) jal_imm_ex <= 0;
    else       jal_imm_ex <= jal_imm;

wire [11:0] s_type_imm = s_type ? {inst[31:25],inst[11:7]} :0;
assign      sw_en = funct3 == 3'b010 ;
assign      rs1 = u_type_lui | j_type? 0 : inst[19:15];
assign      rs2 = i_type | j_type? 0 : inst[24:20];

always@(posedge clk or negedge rst_n)
    if(~rst_n) i_type_ari_ex <= 0;
    else       i_type_ari_ex <= opcode == 7'b0010011 ; //i_type arithmatic 

always@(posedge clk or negedge rst_n)
    if(~rst_n) i_type_ari_funct3_ex <= 0;
    else       i_type_ari_funct3_ex <= (opcode == 7'b0010011) ? funct3 : 0; //i_type, 

always@(posedge clk or negedge rst_n)
    if(~rst_n) i_type_ari_funct7_ex <= 0;
    else       i_type_ari_funct7_ex <= (opcode == 7'b0010011)&&(funct3==3'b001 || funct3==3'b101) ? funct7 : 0; //i_type, 

always@(posedge clk or negedge rst_n)
    if(~rst_n) load_ex <= 0;
    else       load_ex <= opcode == 7'b0000011; //i_type, lb,lh,lw,lbu,lhu

always@(posedge clk or negedge rst_n)
    if(~rst_n) i_type_load_funct3_ex <= 0;
    else       i_type_load_funct3_ex <= (opcode == 7'b0000011) ? funct3 : 0; //i_type, lb,lh,lw,lbu,lhu

always@(posedge clk or negedge rst_n)
    if(~rst_n) store_ex <= 0;
    else       store_ex <= s_type;

always@(posedge clk or negedge rst_n)
    if(~rst_n) s_type_store_funct3_ex <= 0;
    else       s_type_store_funct3_ex <= s_type ? funct3 : 0; //

wire[11:0] i_type_imm  = i_type ? inst[31:20] : 0;
assign     si_type_imm = s_type_imm | i_type_imm;
always@(posedge clk or negedge rst_n)
    if(~rst_n) lui_ex <= 0;
    else       lui_ex <= u_type_lui;

always@(posedge clk or negedge rst_n)
    if(~rst_n) auipc_ex <= 0;
    else       auipc_ex <= u_type_auipc;

always@(posedge clk or negedge rst_n)
    if(~rst_n) r_type_ex <= 0;
    else       r_type_ex <= r_type ;

always@(posedge clk or negedge rst_n)
    if(~rst_n) r_type_funct3_ex <= 0;
    else       r_type_funct3_ex <= r_type ? funct3 : 0;

always@(posedge clk or negedge rst_n)
    if(~rst_n) r_type_funct7_ex <= 0;
    else       r_type_funct7_ex <= r_type ? funct7 : 0;

assign jalr_inst =  opcode == 7'b1100111 & funct3 == 3'b000; //i_type
always@(posedge clk or negedge rst_n)
    if(~rst_n) jalr_ex <= 0;
    else       jalr_ex <= jalr_inst;

assign jal_inst = j_type;
always@(posedge clk or negedge rst_n)
    if(~rst_n) begin rd_ex <= 0; rs1_ex <= 0;   rs2_ex <= 0; end
    else       begin rd_ex <= rd;rs1_ex <= rs1; rs2_ex <= rs2; end

wire [12:0] b_type_imm = b_type ? {inst[31],inst[7],inst[30:25],inst[11:8],1'b0} : 0;
assign pc_off = b_type_imm;
assign btype_inst = b_type;

always@(posedge clk or negedge rst_n)
    if(~rst_n) btype_ex <= 0;
    else       btype_ex <= btype_inst;

always@(posedge clk or negedge rst_n)
    if(~rst_n) b_type_funct3_ex <= 0;
    else       b_type_funct3_ex <= funct3 ;

always@(posedge clk or negedge rst_n)
    if(~rst_n) b_type_imm_ex <= 0;
    else       b_type_imm_ex <= b_type_imm;


always@(posedge clk or negedge rst_n)
    if(~rst_n) system_ex <= 0;
    else       system_ex <= opcode == 'h73;

always@(posedge clk or negedge rst_n)
    if(~rst_n) system_funct12_ex <= 0;
    else       system_funct12_ex <=  funct12;

always@(posedge clk or negedge rst_n)
    if(~rst_n) system_funct3_ex <= 0;
    else       system_funct3_ex <=  funct3;


endmodule
