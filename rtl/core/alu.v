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

module alu(
input                  clk,
input                  rst_n,
input                  hazard_rs1,
input                  hazard_rs2,
input                  hazard_rs_rd,
input                  r_type_ex,
input       [2:0]      r_type_funct3_ex,
input       [6:0]      r_type_funct7_ex,
input                  add_ex,
input                  sub_ex,
input                  alu_rd_val,
input       [4:0]      rd,
input       [31:0]     rd_dat,
input       [31:0]     rs2_dat,
input       [31:0]     rs1_dat_ex,
input       [31:0]     rs2_dat_ex,
input       [31:0]     pc,
input                  lui_ex,
input                  auipc_ex,
input       [19:0]     u_type_imm,
input                  jalr_ex,
output reg  [31:0]     target_addr,
output reg             jalr_bran_take,
input                  i_type_ari_ex,
input       [2:0]      i_type_ari_funct3_ex,
input       [6:0]      i_type_ari_funct7_ex,
input       [31:0]     rs1_dat,
input       [11:0]     imm,
output reg             add_res_val,
output reg  [31:0]     add_res,
input                  store_ex,
input       [2:0]      s_type_store_funct3_ex,
output reg  [31:0]     store_wdat,
output reg             dram_we,
output reg  [2:0]      s_type_store_funct3_wb,
input                  load_ex,
input       [2:0]      i_type_load_funct3_ex,
output reg  [31:0]     dram_addr,
output reg             dram_as,
output reg  [2:0]      i_type_load_funct3_wb, //write back and mem access is a same cycle, currently
output                 load_misalign_exception,
output      [31:0]     load_misalign_addr,
output                 store_misalign_exception,
output      [31:0]     store_misalign_addr,
input                  btype_ex,//excuate btype instruction
output reg             btype_bran_take,//btype branch jump taken
input       [2:0]      b_type_funct3_ex,
input                  jal_ex,
input       [20:0]     jal_imm_ex
);
reg   [11:0]     imm_d;
wire  [31:0]     alu_res;
reg   [19:0]     u_type_imm_d;
reg   [31:0]     pc_d;
reg   [31:0]     a;
reg   [31:0]     b;
always@(posedge clk or negedge rst_n)
    if(~rst_n)  pc_d <= 32'b0;
    else        pc_d <= pc;

always@(*) begin
   if((store_ex|load_ex | i_type_ari_ex) & hazard_rs1) begin a=rd_dat; b=$signed({{(20){imm_d[11]}},imm_d}); end
   else if((store_ex|load_ex|i_type_ari_ex))           begin a= rs1_dat_ex; b=$signed({{(20){imm_d[11]}},imm_d});end
   else                                                begin a =0 ; b=0;end
end

wire [31:0] sum = a +b;
always@(posedge clk or negedge rst_n)
    if(~rst_n)  add_res <= 32'b0;
    else if(r_type_ex & hazard_rs2 & hazard_rs1)  
                                         case({r_type_funct7_ex,r_type_funct3_ex})  
                                         {10'b0000000_000}:  add_res <= $signed(rd_dat) + $signed(rd_dat);
                                         {10'b0000000_001}:  add_res <= rd_dat<<rd_dat[4:0];
                                         {10'b0000000_010}:  add_res <= 0;
                                         {10'b0000000_011}:  add_res <= 0;
                                         {10'b0000000_100}:  add_res <= rd_dat^rd_dat;
                                         {10'b0000000_101}:  add_res <= rd_dat>>rd_dat[4:0];
                                         {10'b0000000_110}:  add_res <= rd_dat|rd_dat;
                                         {10'b0000000_111}:  add_res <= rd_dat&rd_dat;
                                         {10'b0100000_000}:  add_res <= 0;
                                         {10'b0100000_101}:  add_res <= ({32{rd_dat[31]}}<<(~rd_dat[4:0]))|rd_dat>>rd_dat[4:0];
                                         endcase
    else if(r_type_ex & hazard_rs2)       
                                         case({r_type_funct7_ex,r_type_funct3_ex})  
                                         {10'b0000000_000}:  add_res <= $signed(rs1_dat_ex) + $signed(rd_dat);
                                         {10'b0000000_001}:  add_res <= rs1_dat_ex<<rd_dat[4:0];
                                         {10'b0000000_010}:  add_res <= $signed(rs1_dat_ex)<$signed(rd_dat) ? 1 :0;
                                         {10'b0000000_011}:  add_res <= (rs1_dat_ex)<(rd_dat) ? 1 :0;
                                         {10'b0000000_100}:  add_res <= rs1_dat_ex^rd_dat;
                                         {10'b0000000_101}:  add_res <= rs1_dat_ex>>rd_dat[4:0];
                                         {10'b0000000_110}:  add_res <= rs1_dat_ex|rd_dat;
                                         {10'b0000000_111}:  add_res <= rs1_dat_ex&rd_dat;
                                         {10'b0100000_000}:  add_res <= $signed(rs1_dat_ex) - $signed(rd_dat);
                                         {10'b0100000_101}:  add_res <= ({32{rs1_dat_ex[31]}}<<(~rd_dat[4:0]))|rs1_dat_ex>>rd_dat[4:0];
                                         endcase
    else if(r_type_ex & hazard_rs1)      
                                         case({r_type_funct7_ex,r_type_funct3_ex})  
                                         {10'b0000000_000}:  add_res <= $signed(rs2_dat_ex) + $signed(rd_dat);
                                         {10'b0000000_001}:  add_res <= rd_dat<<rs2_dat_ex[4:0];
                                         {10'b0000000_010}:  add_res <= $signed(rd_dat)<$signed(rs2_dat_ex) ? 1 :0;
                                         {10'b0000000_011}:  add_res <= (rd_dat)<(rs2_dat_ex) ? 1 :0;
                                         {10'b0000000_100}:  add_res <= rd_dat^rs2_dat_ex;
                                         {10'b0000000_101}:  add_res <= rd_dat>>rs2_dat_ex[4:0];
                                         {10'b0000000_110}:  add_res <= rd_dat|rs2_dat_ex;
                                         {10'b0000000_111}:  add_res <= rd_dat&rs2_dat_ex;
                                         {10'b0100000_000}:  add_res <= $signed(rd_dat) - $signed(rs2_dat_ex);
                                         {10'b0100000_101}:  add_res <= ({32{rd_dat[31]}}<<(~rs2_dat_ex[4:0]))|rd_dat>>rs2_dat_ex[4:0];
                                         endcase
    else if(r_type_ex)        
                                         case({r_type_funct7_ex,r_type_funct3_ex})  
                                         {10'b0000000_000}:  add_res <= $signed(rs1_dat_ex) + $signed(rs2_dat_ex);
                                         {10'b0000000_001}:  add_res <= rs1_dat_ex<<rs2_dat_ex[4:0];
                                         {10'b0000000_010}:  add_res <= $signed(rs1_dat_ex)<$signed(rs2_dat_ex) ? 1 :0;
                                         {10'b0000000_011}:  add_res <= (rs1_dat_ex)<(rs2_dat_ex) ? 1 :0;
                                         {10'b0000000_100}:  add_res <= rs1_dat_ex^rs2_dat_ex;
                                         {10'b0000000_101}:  add_res <= rs1_dat_ex>>rs2_dat_ex[4:0];
                                         {10'b0000000_110}:  add_res <= rs1_dat_ex|rs2_dat_ex;
                                         {10'b0000000_111}:  add_res <= rs1_dat_ex&rs2_dat_ex;
                                         {10'b0100000_000}:  add_res <= $signed(rs1_dat_ex) - $signed(rs2_dat_ex);
                                         {10'b0100000_101}:  add_res <= ({32{rs1_dat_ex[31]}}<<(~rs2_dat_ex[4:0]))|rs1_dat_ex>>rs2_dat_ex[4:0];
                                         endcase
    else if(i_type_ari_ex)        
                                         case({i_type_ari_funct7_ex,i_type_ari_funct3_ex})  
                                         {10'b0000000_000}:  add_res <= $signed(a) + $signed(b);
                                         {10'b0000000_001}:  add_res <= a<<b[4:0];
                                         {10'b0000000_010}:  add_res <= $signed(a)<$signed(b) ? 1 :0;
                                         {10'b0000000_011}:  add_res <= (a)<(b) ? 1 :0;
                                         {10'b0000000_100}:  add_res <= a^b;
                                         {10'b0000000_101}:  add_res <= a>>b[4:0];
                                         {10'b0000000_110}:  add_res <= a|b;
                                         {10'b0000000_111}:  add_res <= a&b;
                                         {10'b0100000_101}:  add_res <= ({32{a[31]}}<<(~b[4:0]))|a>>b[4:0];
                                         endcase
    else if(lui_ex)                   add_res <= {u_type_imm_d,12'b0};
    else if(auipc_ex)                 add_res <= {u_type_imm_d,12'b0} + pc_d;
    else if(jalr_ex | jal_ex )        add_res <= $signed(4) + $signed(pc_d);

always@(posedge clk or negedge rst_n)
    if(~rst_n)  target_addr <= 32'b0;
    else if(jalr_ex & hazard_rs1)        target_addr <= $signed(rd_dat) + $signed({{(20){imm_d[11]}},imm_d});
    else if(jalr_ex )                    target_addr <= $signed(rs1_dat_ex) + $signed({{(20){imm_d[11]}},imm_d});

always@(posedge clk or negedge rst_n)
    if(~rst_n)  store_wdat <= 32'b0;
    else if(store_ex & hazard_rs2)       store_wdat <= $signed(rd_dat);
    else if(store_ex)                    store_wdat <= $signed(rs2_dat_ex) ;

always@(posedge clk or negedge rst_n)
    if(~rst_n)                           begin s_type_store_funct3_wb <= 1'b0; dram_we <= 1'b0;end
    else if(store_ex & ~store_misalign_exception)  begin     s_type_store_funct3_wb <= s_type_store_funct3_ex; dram_we <= 1'b1;end
    else                                 begin s_type_store_funct3_wb <= 0;    dram_we <= 1'b0;end

always@(posedge clk or negedge rst_n)
    if(~rst_n)                           dram_addr <= 32'b0;
    else if(load_ex)                     dram_addr <= sum;
    else if(store_ex)                    dram_addr <= sum;

always@(posedge clk or negedge rst_n)
    if(~rst_n)  dram_as <= 1'b0;
    else if(load_ex & hazard_rs1 & ~load_misalign_exception)        dram_as <= 1;
    else if(load_ex & ~load_misalign_exception)                     dram_as <= 1;
    else                                                            dram_as <= 0;

always@(posedge clk or negedge rst_n)
    if(~rst_n)                           i_type_load_funct3_wb <= 1'b0;
    else if(load_ex & hazard_rs1)        i_type_load_funct3_wb <= i_type_load_funct3_ex;
    else if(load_ex)                     i_type_load_funct3_wb <= i_type_load_funct3_ex;
    else                                 i_type_load_funct3_wb <= 0;

assign load_misalign_exception = ( i_type_load_funct3_ex == 2 & (|sum[1:0]) ) |  //lw
                                 ( i_type_load_funct3_ex == 1 & (sum[0])    ) |  //lh
                                 ( i_type_load_funct3_ex == 5 & (sum[0])    );   //lhu
assign load_misalign_addr      = sum;

assign store_misalign_exception= ( s_type_store_funct3_ex == 2 & (|sum[1:0]) ) | //sw
                                 ( s_type_store_funct3_ex == 1 & (sum[0])    );  //sh
assign store_misalign_addr     = sum;


always@(posedge clk or negedge rst_n)
    if(~rst_n)                           jalr_bran_take <= 1'b0;
    else if(jalr_ex & hazard_rs1)        jalr_bran_take <= 1'b1;
    else if(jalr_ex )                    jalr_bran_take <= 1'b1; 
    else                                 jalr_bran_take <= 1'b0; 

always@(posedge clk or negedge rst_n)
    if(~rst_n)                           add_res_val <= 1'b0;
    else if(i_type_ari_ex )              add_res_val <= 1'b1;
    else if(r_type_ex)                   add_res_val <= 1'b1;
    else if(lui_ex | auipc_ex)           add_res_val <= 1'b1;
    else if(jalr_ex | jal_ex)            add_res_val <= 1'b1;
    else                                 add_res_val <= 1'b0;

always@(posedge clk or negedge rst_n)
    if(~rst_n) begin
        imm_d        <= 11'b0;
        u_type_imm_d <= 20'b0;
    end else begin
        imm_d        <= imm;
        u_type_imm_d <= u_type_imm;
    end
always@(posedge clk or negedge rst_n)
    if(~rst_n)  
         btype_bran_take <= 1'b0;
    else if(btype_ex & hazard_rs2 & hazard_rs1)
         btype_bran_take <= 1'b1;
    else if(btype_ex & hazard_rs2 ) begin
         case(b_type_funct3_ex)
         3'b000:
             btype_bran_take <=  $signed(rs1_dat_ex) == $signed(rd_dat);
         3'b001:
             btype_bran_take <=  $signed(rs1_dat_ex) != $signed(rd_dat);
         3'b100:
             btype_bran_take <=  $signed(rs1_dat_ex) < $signed(rd_dat);//blt
         3'b101:
             btype_bran_take <=  $signed(rs1_dat_ex) >= $signed(rd_dat);
         3'b110:
             btype_bran_take <=  (rs1_dat_ex) < (rd_dat);//blt
         3'b111:
             btype_bran_take <=  rs1_dat_ex >= rd_dat; //bgeu
         default:
             btype_bran_take <=  $signed(rs1_dat_ex) >= $signed(rd_dat);
         endcase
   end else if(btype_ex & hazard_rs1) begin 
         case(b_type_funct3_ex)
         3'b000:
             btype_bran_take <=  $signed(rd_dat) == $signed(rs2_dat_ex);
         3'b001:
             btype_bran_take <=  $signed(rd_dat) != $signed(rs2_dat_ex);
         3'b100:
             btype_bran_take <=  $signed(rd_dat) < $signed(rs2_dat_ex);
         3'b101:
             btype_bran_take <=  $signed(rd_dat) >= $signed(rs2_dat_ex);
         3'b110:
             btype_bran_take <=  (rd_dat) < (rs2_dat_ex);
         3'b111:
             btype_bran_take <=  rd_dat >= rs2_dat_ex;
         default:
             btype_bran_take <=  $signed(rd_dat) >= $signed(rs2_dat_ex);
         endcase
   end else if(btype_ex)begin 
         case(b_type_funct3_ex)
         3'b000:
             btype_bran_take <=  $signed(rs1_dat_ex) == $signed(rs2_dat_ex);
         3'b001:
             btype_bran_take <=  $signed(rs1_dat_ex) != $signed(rs2_dat_ex);
         3'b100:
             btype_bran_take <=  $signed(rs1_dat_ex) < $signed(rs2_dat_ex);
         3'b101:
             btype_bran_take <=  $signed(rs1_dat_ex) >= $signed(rs2_dat_ex);
         3'b110:
             btype_bran_take <=  (rs1_dat_ex) < (rs2_dat_ex);
         3'b111:
             btype_bran_take <=  (rs1_dat_ex) >= (rs2_dat_ex);
         default:
             btype_bran_take <=  $signed(rs1_dat_ex) >= $signed(rs2_dat_ex);
         endcase
   end else
         btype_bran_take <= 1'b0;

endmodule
