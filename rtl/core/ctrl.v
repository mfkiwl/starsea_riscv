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

module ctrl (
input           clk                          ,
input           rst_n                        ,
input           add_inst                     ,
input           rs1_dat_val                  ,
input           rs2_dat_val                  ,
input  [31:0]   store_wdat                   ,
output [31:0]   dram_wdat                    ,
input           dram_we                      ,
input  [ 2:0]   s_type_store_funct3_wb       ,
output [ 3:0]   dram_we_byte                 ,
input           dram_dout_wb                 ,
input  [31:0]   dram_addr                    ,
input  [31:0]   dram_dout                    ,
input  [ 2:0]   i_type_load_funct3_wb        ,
input  [ 4:0]   inst_rd                      ,
input           inst_rd_val                  ,
input  [31:0]   inst_rd_dat                  ,
input  [ 4:0]   alu_rd                       ,
input           alu_rd_val                   ,
input  [31:0]   alu_rd_dat                   ,
output [ 4:0]   rd                           ,
output          rd_val                       ,
output [31:0]   rd_dat                       ,
output          add_en                       ,
output          halt_pc                      
);                             
wire [31:0] load_data;
reg rd_val_d;
reg add_en_d;                             
always@(posedge clk or negedge rst_n)
    if(~rst_n)
        add_en_d <= 1'b0;                             
    else if(add_inst & ~(rs1_dat_val & rs2_dat_val))
        add_en_d <= 1'b1;                             
    else
        add_en_d <= 1'b0;
assign add_en = (add_inst&rs1_dat_val&rs2_dat_val) | add_en_d;

always@(posedge clk or negedge rst_n)
    if(~rst_n)
        rd_val_d <= 1'b0;
    else if(alu_rd_val & inst_rd_val)//extend another write
        rd_val_d <= 1'b1;
    else
        rd_val_d <= 1'b0;

assign load_data = i_type_load_funct3_wb == 3'b000 & dram_addr[1:0]==0? {{(24){dram_dout[7]}},dram_dout[7:0]} :
                   i_type_load_funct3_wb == 3'b000 & dram_addr[1:0]==1? {{(24){dram_dout[15]}},dram_dout[15:8]} :
                   i_type_load_funct3_wb == 3'b000 & dram_addr[1:0]==2? {{(24){dram_dout[23]}},dram_dout[23:16]} :
                   i_type_load_funct3_wb == 3'b000 & dram_addr[1:0]==3? {{(24){dram_dout[31]}},dram_dout[31:24]} :
                   i_type_load_funct3_wb == 3'b100 & dram_addr[1:0]==0? {24'b0,dram_dout[7:0]} :
                   i_type_load_funct3_wb == 3'b100 & dram_addr[1:0]==1? {24'b0,dram_dout[15:8]} :
                   i_type_load_funct3_wb == 3'b100 & dram_addr[1:0]==2? {24'b0,dram_dout[23:16]} :
                   i_type_load_funct3_wb == 3'b100 & dram_addr[1:0]==3? {24'b0,dram_dout[31:24]} :
                   i_type_load_funct3_wb == 3'b001 & dram_addr[1:0]==0? {{(16){dram_dout[15]}},dram_dout[15:0]} :
                   i_type_load_funct3_wb == 3'b001 & dram_addr[1:0]==2? {{(16){dram_dout[31]}},dram_dout[31:16]} :
                   i_type_load_funct3_wb == 3'b101 & dram_addr[1:0]==0? {16'b0,dram_dout[15:0]} : //LHU
                   i_type_load_funct3_wb == 3'b101 & dram_addr[1:0]==2? {16'b0,dram_dout[31:16]} :
                   i_type_load_funct3_wb == 3'b010 & dram_addr[1:0]==0? {dram_dout} ://LW
                   0;

assign rd_val =  dram_dout_wb | alu_rd_val;// | inst_rd_val | rd_val_d;
assign rd     =/* alu_rd_val ?*/ alu_rd      /*: inst_rd*/;
assign rd_dat =  dram_dout_wb ? load_data : alu_rd_dat; 

assign dram_we_byte = s_type_store_funct3_wb == 3'b000 & dram_addr[1:0]==0? {3'b0,dram_we}  ://SB
                      s_type_store_funct3_wb == 3'b000 & dram_addr[1:0]==1? {2'b0,dram_we,1'b0}  ://SB
                      s_type_store_funct3_wb == 3'b000 & dram_addr[1:0]==2? {1'b0,dram_we,2'b0}  ://SB
                      s_type_store_funct3_wb == 3'b000 & dram_addr[1:0]==3? {0'b0,dram_we,3'b0}  ://SB
                      s_type_store_funct3_wb == 3'b001 & dram_addr[1:0]==0? {2'b0,dram_we,dram_we}  ://SH
                      s_type_store_funct3_wb == 3'b001 & dram_addr[1:0]==1? {1'b0,dram_we,dram_we,1'b0}  ://SH
                      s_type_store_funct3_wb == 3'b001 & dram_addr[1:0]==2? {dram_we,dram_we,2'b0}  ://SH
                      s_type_store_funct3_wb == 3'b010 ? {4{dram_we}}  ://SW
                      0;
assign  dram_wdat = s_type_store_funct3_wb == 3'b000 & dram_addr[1:0]==0 ? {24'b0,store_wdat[7:0]} :
                    s_type_store_funct3_wb == 3'b000 & dram_addr[1:0]==1 ? {16'b0,store_wdat[7:0],8'b0} :
                    s_type_store_funct3_wb == 3'b000 & dram_addr[1:0]==2 ? {8'b0,store_wdat[7:0],16'b0} :
                    s_type_store_funct3_wb == 3'b000 & dram_addr[1:0]==3 ? {store_wdat[7:0],24'b0} :
                    s_type_store_funct3_wb == 3'b001 & dram_addr[1:0]==0 ? {16'b0,store_wdat[15:0]} :
                    s_type_store_funct3_wb == 3'b001 & dram_addr[1:0]==1 ? {8'b0,store_wdat[15:0],8'b0} :
                    s_type_store_funct3_wb == 3'b001 & dram_addr[1:0]==2 ? {store_wdat[15:0],16'b0} :
                    s_type_store_funct3_wb == 3'b010  ? {store_wdat} :
                    0;
endmodule

