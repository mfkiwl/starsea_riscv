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

module starsea_core
(
  input          clk                ,
  input          rst_n              ,
  input          iram_we            ,
  input   [31:0] iram_waddr         , 
  input   [31:0] iram_wdata         ,
  input          intr               ,

  output         reg_bus_we         ,
  output  [31:0] reg_bus_addr       ,
  output  [31:0] reg_bus_wdat       ,
  output         reg_bus_rd         ,
  input   [31:0] reg_bus_rdat                
);

(*mark_debug="true"*)wire [31:0] pc;
wire [31:0] inst_addr   ;
wire [31:0] inst_to_id  ;
(*mark_debug="true"*)wire [31:0] inst_dout;
wire [31:0] dram_addr   ;
wire [31:0] dram_dout   ;
wire        dram_as     ;
wire [31:0] dram_wdat   ;
wire        dram_we     ;
wire [ 3:0] dram_we_byte;
wire [ 4:0] rs1         ;
wire [ 4:0] rs2         ;
wire [ 4:0] rd_ex       ;
wire [ 4:0] rs1_ex      ;
wire [ 4:0] rs2_ex      ;
wire [31:0] rs1_dat     ;
wire [31:0] rs2_dat     ;
wire [31:0] rs1_dat_ex  ;
wire [31:0] rs2_dat_ex  ;
reg  [31:0] rs2_dat_d   ;
reg  [31:0] rs2_dat_d_pre;

//regs
wire [ 4:0] rd          ;
wire        rd_val      ;
wire [31:0] rd_dat      ;
reg  [ 4:0] rd_d        ;
reg  [ 4:0] rd_d_pre    ;
///id
wire        sw_en       ;
wire [11:0] si_type_imm ;
wire        i_type_ari_ex;
wire [ 2:0] i_type_ari_funct3_ex;
wire [ 6:0] i_type_ari_funct7_ex;
wire        r_type_ex           ;
wire [ 2:0] r_type_funct3_ex    ;
wire [ 6:0] r_type_funct7_ex    ;
wire        lui_ex              ;
wire        auipc_ex            ;
wire [19:0] u_type_imm          ;
wire        add_en              ;
wire        btype_inst          ;
wire        jal_inst            ;
wire        jalr_inst           ;
wire        jalr_ex             ;
wire        jal_ex              ;
wire [20:0] jal_imm             ;
wire [20:0] jal_imm_ex          ;
wire        btype_ex            ;
wire [ 2:0] b_type_funct3_ex    ;                    
wire [12:0] b_type_imm_ex       ;                    
wire [ 4:0] inst_rd             ;                    
wire        inst_rd_val         ;                    
wire [31:0] inst_rd_dat         ;                    
wire        load_ex             ;                    
wire [ 2:0] i_type_load_funct3_ex;                    
wire [ 2:0] i_type_load_funct3_wb;                    
wire        load_misalign_exception;                    
wire [31:0] load_misalign_addr  ;                    
wire        store_misalign_exception;                    
wire [31:0] store_misalign_addr ;                    
wire        store_ex            ;                    
wire [ 2:0] s_type_store_funct3_ex;                    
wire [ 2:0] s_type_store_funct3_wb;                    
wire        system_ex           ;                    
wire [11:0] system_funct12_ex   ;                    
wire [ 2:0] system_funct3_ex    ;                    
////pc
wire [12:0] pc_off              ;                    
wire        pc_jump_en          ;                                         
wire        misalign_exception  ;                     
wire        j_misalign_exception;                     
wire        jalr_misalign_exception;                     
///alu
wire [31:0] add_res             ;                     
wire        add_res_val         ;                     
wire        btype_bran_take     ;                     
wire        alu_rd_val          ;                     
wire [31:0] alu_rd_dat          ;                     
wire        jalr_bran_take      ;                     
wire [31:0] target_addr         ;                     
wire [31:0] store_wdat          ;                     
///bus///
wire [31:0] dbus_addr           ;                     
wire [31:0] dbus_dat            ;                     
///wb///
wire        wr_dub_en           ;                     
wire        wr_rd_en            ;                     
//ctrl
wire        add_inst            ;                     
wire        rs1_dat_val         ;
wire        rs2_dat_val         ;
wire        halt_pc             ;
wire        hazard_rs1          ;
wire        hazard_rs2          ;
wire        hazard_rs_rd        ;

//machine
wire        ecall_bran_take     ;
wire        ebreak_bran_take    ;
wire        mret_bran_take      ;
wire        misalign_bran_take  ;
wire        j_misalign_bran_take;
wire        jalr_misalign_bran_take;
wire        intr_bran_take      ;
wire [31:0] trap_addr           ;
wire        csrr_rd_en          ;
wire [31:0] csrr_rd_dat         ;

///dram
wire        dram_dout_wb        ;
assign      inst_addr  = pc;
assign      inst_to_id = inst_dout;
assign      dbus_addr  = add_res_val ? add_res   : 0;
assign      dbus_dat   = add_res_val ? rs2_dat_d : 0;

//alu need one cycle, id need one cycle
always@(posedge clk or negedge rst_n)
    if(~rst_n)  begin rd_d <= 5'b0; rd_d_pre <= 5'b0;end
    else        begin rd_d <= rd_d_pre; rd_d_pre <= inst_rd;end

always@(posedge clk or negedge rst_n)
    if(~rst_n)  begin rs2_dat_d <= 32'b0;rs2_dat_d_pre <= 32'b0; end
    else        begin rs2_dat_d <= rs2_dat_d_pre;rs2_dat_d_pre <= rs2_dat; end

assign  pc_jump_en = intr_bran_take |   
                    misalign_bran_take |jalr_misalign_bran_take|j_misalign_bran_take | mret_bran_take | ebreak_bran_take | ecall_bran_take | jalr_bran_take | btype_bran_take;

pc u_pc
(
.clk                          (clk                          ),
.rst_n                        (rst_n                        ),
.misalign_bran_take           (misalign_bran_take           ),
.j_misalign_bran_take         (j_misalign_bran_take         ),
.jalr_misalign_bran_take      (jalr_misalign_bran_take      ),
.intr_bran_take               (intr_bran_take               ),
.ecall_bran_take              (ecall_bran_take              ),
.ebreak_bran_take             (ebreak_bran_take             ),
.mret_bran_take               (mret_bran_take               ),
.trap_addr                    (trap_addr                    ),
.jal_inst                     (jal_inst                     ),
.jalr_inst                    (jalr_inst                    ),
.jalr_bran_take               (jalr_bran_take               ),
.target_addr                  (target_addr                  ),
.jal_imm                      (jal_imm                      ),
.halt_pc                      (halt_pc                      ),
.btype_inst                   (btype_inst                   ),
.pc_off                       (pc_off                       ),
.b_type_imm_ex                (b_type_imm_ex                ),
.pc_jump_en                   (pc_jump_en                   ),
.pc                           (pc                           ),
.misalign_exception           (misalign_exception           ),
.j_misalign_exception         (j_misalign_exception         ),
.jalr_misalign_exception      (jalr_misalign_exception      )
);
iram u_iram
(                             
.clk                          (clk                          ),
.rst_n                        (rst_n                        ),
.iram_we                      (iram_we                      ), 
.iram_waddr                   (iram_waddr                   ), 
.iram_wdata                   (iram_wdata                   ),
.inst_addr                    (inst_addr                    ),
.inst_dout                    (inst_dout                    )
);

wire[31:0] dram_dout_to_dbus;
dram u_dram
(                             
.clk                          (clk                          ),
.rst_n                        (rst_n                        ),
.dram_wdat                    (dram_wdat                    ),
.dram_we                      (dram_we&(~dram_addr[31])     ),
.dram_we_byte                 (dram_we_byte                 ),
.dram_rd                      (~dram_addr[31] & dram_dout_wb),
.dram_addr                    (dram_addr-'h4000_0000        ),
.dram_dout                    (dram_dout_to_dbus            )
);
assign dram_dout_wb  = dram_as;
assign reg_bus_we    = dram_addr[31] ? dram_we   : 0;
assign reg_bus_addr  = dram_addr[31] ? dram_addr : 0;
assign reg_bus_wdat  = dram_addr[31] ? dram_wdat : 0;
assign reg_bus_rd    = dram_addr[31] & dram_dout_wb;
assign dram_dout     = dram_addr[31] ? reg_bus_rdat : dram_dout_to_dbus;

id u_id
(
.clk                          (clk                          ),
.rst_n                        (rst_n                        ),
.inst                         (inst_to_id                   ),
.rs1                          (rs1                          ),
.rs2                          (rs2                          ),
.rd_ex                        (rd_ex                        ),
.rs1_ex                       (rs1_ex                       ),
.rs2_ex                       (rs2_ex                       ),
.rs1_din                      (rs1_dat                      ),
.rs2_din                      (rs2_dat                      ),
.rd                           (inst_rd                      ),
.rd_val                       (inst_rd_val                  ),
.rd_dat                       (inst_rd_dat                  ),
.sw_en                        (sw_en                        ),
.si_type_imm                  (si_type_imm                  ),
.store_ex                     (store_ex                     ),
.s_type_store_funct3_ex       (s_type_store_funct3_ex       ),
.load_ex                      (load_ex                      ),
.i_type_load_funct3_ex        (i_type_load_funct3_ex        ),
.i_type_ari_ex                (i_type_ari_ex                ),
.i_type_ari_funct3_ex         (i_type_ari_funct3_ex         ),
.i_type_ari_funct7_ex         (i_type_ari_funct7_ex         ),
.r_type_funct3_ex             (r_type_funct3_ex             ),
.r_type_funct7_ex             (r_type_funct7_ex             ),
.r_type_ex                    (r_type_ex                    ),
.lui_ex                       (lui_ex                       ),
.auipc_ex                     (auipc_ex                     ),
.u_type_imm                   (u_type_imm                   ),
.pc_off                       (pc_off                       ),
.b_type_funct3_ex             (b_type_funct3_ex             ),
.btype_inst                   (btype_inst                   ),
.btype_ex                     (btype_ex                     ),
.b_type_imm_ex                (b_type_imm_ex                ),
.jalr_inst                    (jalr_inst                    ),
.jalr_ex                      (jalr_ex                      ),
.jal_inst                     (jal_inst                     ),
.jal_ex                       (jal_ex                       ),
.jal_imm_ex                   (jal_imm_ex                   ),
.jal_imm                      (jal_imm                      ),

.system_ex                    (system_ex                    ),
.system_funct3_ex             (system_funct3_ex             ),
.system_funct12_ex            (system_funct12_ex            )
);

regs u_regs
(                             
.clk                          (clk                          ),
.rst_n                        (rst_n                        ),
.rs1                          (rs1_ex                       ),
.rs2                          (rs2_ex                       ),
.rs1_dat                      (rs1_dat_ex                   ),
.rs2_dat                      (rs2_dat_ex                   ),
.rs1_dat_val                  (rs1_dat_val                  ),
.rs2_dat_val                  (rs2_dat_val                  ),
.rd                           (rd                           ),
.alu_rd_val                   (add_res_val                  ),
.rd_val                       (rd_val                       ),
.rd_dat                       (rd_dat                       )
);

reg pc_jump_en_d;
always@(posedge                       clk)
    pc_jump_en_d <= pc_jump_en;

wire [4:0] rd_d_wb    = rd_d & ~pc_jump_en_d;//write back of last instruction, if curent cycle is ex cycle of jump, need ignore wb result os lase cycle before jump cycle
wire [4:0] rs2_ex_vld = pc_jump_en_d ? 0 : rs2_ex ; //if current cycle, jump is in ex state, it's last instruction is a invalid instrction, since we will prefetch one instr when meeting a jump, 
wire [4:0] rs1_ex_vld = pc_jump_en_d ? 0 : rs1_ex ; //sometimes, if the prefetch instrction use same soure register, the hazard is not true hazard, need ignore

assign hazard_rs2     = rs2_ex_vld == rd_d_wb && |rd_d_wb;
assign hazard_rs1     = rs1_ex_vld == rd_d_wb && |rd_d_wb; // hazard of current and last instruction
assign hazard_rs_rd   = rs1_ex == rd_ex && |rd_ex; //hazard betewen rs and rd,

alu u_alu
(                             
.clk                          (clk                          ),
.rst_n                        (rst_n                        ),
.hazard_rs1                   (hazard_rs1                   ),
.hazard_rs2                   (hazard_rs2                   ),
.hazard_rs_rd                 (hazard_rs_rd                 ),
.r_type_funct3_ex             (r_type_funct3_ex             ),
.r_type_funct7_ex             (r_type_funct7_ex             ),
.r_type_ex                    (r_type_ex & ~pc_jump_en      ),
.rd                           (rd                           ),
.alu_rd_val                   (add_res_val                  ),
.rd_dat                       (rd_dat                       ),
.rs2_dat                      (rs2_dat                      ),
.rs1_dat_ex                   (rs1_dat_ex                   ),
.rs2_dat_ex                   (rs2_dat_ex                   ),
.pc                           (pc                           ),
.lui_ex                       (lui_ex  & ~pc_jump_en        ),
.auipc_ex                     (auipc_ex& ~pc_jump_en        ),
.u_type_imm                   (u_type_imm                   ),
.i_type_ari_funct3_ex         (i_type_ari_funct3_ex         ),
.i_type_ari_funct7_ex         (i_type_ari_funct7_ex         ),
.i_type_ari_ex                (i_type_ari_ex & ~pc_jump_en  ),
.rs1_dat                      (rs1_dat                      ),
.imm                          (si_type_imm                  ),
.add_res_val                  (add_res_val                  ),
.add_res                      (add_res                      ),
.store_ex                     (store_ex& ~pc_jump_en        ),
.s_type_store_funct3_ex       (s_type_store_funct3_ex       ),
.store_wdat                   (store_wdat                   ),
.dram_we                      (dram_we                      ),
.s_type_store_funct3_wb       (s_type_store_funct3_wb       ),
.load_ex                      (load_ex & ~pc_jump_en        ),
.i_type_load_funct3_ex        (i_type_load_funct3_ex        ),
.dram_addr                    (dram_addr                    ),
.dram_as                      (dram_as                      ),
.i_type_load_funct3_wb        (i_type_load_funct3_wb        ),
.load_misalign_addr           (load_misalign_addr           ),
.load_misalign_exception      (load_misalign_exception      ),
.store_misalign_addr          (store_misalign_addr          ),
.store_misalign_exception     (store_misalign_exception     ),
.btype_ex                     (btype_ex & ~pc_jump_en       ),
.btype_bran_take              (btype_bran_take              ),
.b_type_funct3_ex             (b_type_funct3_ex             ),
.jal_ex                       (jal_ex & ~pc_jump_en                      ),
.jalr_ex                      (jalr_ex& ~pc_jump_en         ),
.jalr_bran_take               (jalr_bran_take               ),
.target_addr                  (target_addr                  )
);

wb u_wb(                             
.clk                          (clk                          ),
.sw_en                        (sw_en                        ),
.add_en                       (add_en                       ),
.wr_dbus_en                   (wr_dubs_en                   ),
.wr_rd_en                     (wr_rd_en                     )
)                             ;

ctrl                          u_ctrl(                             
.clk                          (clk                          ),
.rst_n                        (rst_n                        ),
.add_inst                     (add_inst                     ),
.rs1_dat_val                  (rs1_dat_val                  ),
.rs2_dat_val                  (rs2_dat_val                  ),
.inst_rd                      (inst_rd                      ),
.inst_rd_val                  (inst_rd_val                  ),
.inst_rd_dat                  (inst_rd_dat                  ),
.store_wdat                   (store_wdat                   ),
.dram_wdat                    (dram_wdat                    ),
.dram_we                      (dram_we                      ),
.dram_we_byte                 (dram_we_byte                 ),
.s_type_store_funct3_wb       (s_type_store_funct3_wb       ),
.dram_dout_wb                 (dram_dout_wb                 ),
.dram_addr                    (dram_addr                    ),
.dram_dout                    (dram_dout                    ),
.i_type_load_funct3_wb        (i_type_load_funct3_wb        ),
.alu_rd                       (rd_d                         ),
.alu_rd_val                   (add_res_val | csrr_rd_en     ),
.alu_rd_dat                   (csrr_rd_en ? csrr_rd_dat : add_res   ),
.rd                           (rd                           ),
.rd_val                       (rd_val                       ),
.rd_dat                       (rd_dat                       ),
.add_en                       (                             ),
.halt_pc                      (halt_pc                      )
);


machine u_machine(                             
.clk                          (clk                          ),
.rst_n                        (rst_n                        ),
.rs1_dat_ex                   (rs1_dat_ex                   ),
.rd_dat                       (rd_dat                       ),
.hazard_rs1                   (hazard_rs1                   ),
.pc                           (pc                           ),
.system_ex                    (system_ex&~pc_jump_en        ),
.system_funct3_ex             (system_funct3_ex             ),
.system_funct12_ex            (system_funct12_ex            ),
.ecall_bran_take              (ecall_bran_take              ),
.ebreak_bran_take             (ebreak_bran_take             ),
.mret_bran_take               (mret_bran_take               ),
.trap_addr                    (trap_addr                    ),

.store_misalign_exception     (store_misalign_exception     ),
.store_misalign_addr          (store_misalign_addr          ),
.load_misalign_exception      (load_misalign_exception      ),
.load_misalign_addr           (load_misalign_addr           ),
.misalign_exception           (misalign_exception           ),
.misalign_bran_take           (misalign_bran_take           ),
.j_misalign_exception         (j_misalign_exception         ),
.j_misalign_bran_take         (j_misalign_bran_take         ),
.jalr_misalign_exception      (jalr_misalign_exception      ),
.jalr_misalign_bran_take      (jalr_misalign_bran_take      ),
.intr                         (intr                         ),
.intr_bran_take               (intr_bran_take               ),

.csrr_rd_en                   (csrr_rd_en                   ),
.csrr_rd_dat                  (csrr_rd_dat                  )

);

endmodule

