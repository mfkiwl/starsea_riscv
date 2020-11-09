verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
debImport "-f" "../flist" "-sv"
wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/home/IC/project/starsea_riscv/dv/sim/test.fsdb}
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcSelect -signal "reg_bus_wdat" -win $_nTrace1
srcSelect -toggle -signal "reg_bus_wdat" -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcSelect -signal "reg_bus_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 46732215.153268 71266628.108733
wvZoom -win $_nWave2 47682941.392714 49598583.815495
wvZoom -win $_nWave2 74232.528818 628206.624475
wvZoom -win $_nWave2 100825.848621 377973.097171
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 93290.745319 445615.587605
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetRadix -win $_nWave2 -format Hex
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "iram" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr>>2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvExpandBus -win $_nWave2 {("G1" 6)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 36 )} 
wvScrollUp -win $_nWave2 24
wvSelectSignal -win $_nWave2 {( "G1" 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 \
           22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 )} 
wvSetPosition -win $_nWave2 {("G1" 38)}
wvSetPosition -win $_nWave2 {("G1" 38)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvAddGroup -win $_nWave2 {G3}
wvScrollUp -win $_nWave2 27
wvCreateBusOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvCreateBus -win $_nWave2 "NewBus\[29:0\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[31\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[30\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[29\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[28\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[27\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[26\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[25\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[24\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[23\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[22\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[21\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[20\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[19\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[18\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[17\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[16\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[15\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[14\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[13\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[12\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[11\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[10\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[9\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[8\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[7\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[6\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[5\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[4\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[3\]" \
           "/tb/u_fpga_top/u_starsea_core/u_iram/inst_addr\[2\]"
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvCollapseBus -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "iram" -win $_nTrace1
srcCopySignalFullPath -win $_nTrace1
wvSetCursor -win $_nWave2 202527.229170 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 901660.397546 1403127.321543
wvZoom -win $_nWave2 1094477.961280 1211016.049251
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 640635.970800 1398297.680766
srcDeselectAll -win $_nTrace1
wvZoom -win $_nWave2 1006127.711171 1279846.343010
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAction -pos 21 3 8 -win $_nTrace1 -name "reg_bus_we" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 777206.706744 1896754.462888
wvZoom -win $_nWave2 1008211.983188 1341711.068293
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 204 10 5 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAction -pos 170 12 0 -win $_nTrace1 -name "sum" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAction -pos 81 12 0 -win $_nTrace1 -name "a" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 76 22 2 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 796640.068081 4043324.119129
wvZoom -win $_nWave2 800239.026667 2160645.372000
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
wvSetCursor -win $_nWave2 1022502.598580 -snap {("G3" 5)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 168613.744210 1977379.363921
wvZoom -win $_nWave2 217816.141529 574474.151049
wvSelectSignal -win $_nWave2 {( "G3" 9 )} 
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.u_ctrl.load_data\[31:0\]" -win \
           $_nTrace1
wvSetPosition -win $_nWave2 {("G3" 9)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_load_funct3_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_load_funct3_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_load_funct3_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[1:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7:0\]" -win $_nTrace1
srcAction -pos 61 29 2 -win $_nTrace1 -name "dram_dout\[7:0\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAction -pos 207 14 5 -win $_nTrace1 -name "dram_dout_to_dbus" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 240421.226639 -snap {("G3" 17)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 16 )} 
wvSelectSignal -win $_nWave2 {( "G3" 19 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 194206.385969 -snap {("G3" 19)}
wvSelectSignal -win $_nWave2 {( "G3" 20 )} 
wvSelectSignal -win $_nWave2 {( "G3" 20 )} 
wvSetRadix -win $_nWave2 -format UDec
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 20 )} 
wvSetRadix -win $_nWave2 -format Hex
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout" -win $_nTrace1
srcAction -pos 8 10 7 -win $_nTrace1 -name "dram_dout" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we_byte\[0\]" -win $_nTrace1
wvSetCursor -win $_nWave2 288143.072983 -snap {("G3" 10)}
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G3" 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 \
           20 21 22 23 24 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 3)}
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "a5" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 864016.586444 1531117.764814
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G3" 4)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.reg_bus_we" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAction -pos 53 6 6 -win $_nTrace1 -name "reg_bus_we" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAction -pos 203 6 5 -win $_nTrace1 -name "dram_addr\[31\]" -ctrlKey off
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 1082468.732882 1251592.975286
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_wb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_wb" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_ctrl" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_ctrl" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we_byte" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "s_type_store_funct3_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[1:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAction -pos 187 6 2 -win $_nTrace1 -name "sum" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAction -pos 81 12 0 -win $_nTrace1 -name "a" -ctrlKey off
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAction -pos 76 15 5 -win $_nTrace1 -name "hazard_rs1" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_ex_vld" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_d_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_d_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_ex_vld" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_ex_vld" -win $_nTrace1
srcAction -pos 281 6 8 -win $_nTrace1 -name "rs1_ex_vld" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en_d" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en_d" -win $_nTrace1
srcAction -pos 278 12 7 -win $_nTrace1 -name "pc_jump_en_d" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAction -pos 274 5 7 -win $_nTrace1 -name "pc_jump_en" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "misalign_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_misalign_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAction -pos 152 31 1 -win $_nTrace1 -name "btype_bran_take" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b_type_funct3_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs2_dat_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 243 7 4 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAction -pos 78 10 3 -win $_nTrace1 -name "load_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_load_funct3_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[1:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7:0\]" -win $_nTrace1
srcAction -pos 65 17 4 -win $_nTrace1 -name "dram_dout\[7:0\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAction -pos 207 14 3 -win $_nTrace1 -name "dram_dout_to_dbus" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 167695.023454 2340107.827288
wvZoom -win $_nWave2 1044309.485846 1868908.430400
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 2845070.422535 85352112.676056
wvZoom -win $_nWave2 6098869.271970 16266990.676453
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 873599.162920 1811644.165728
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 1072438.279713 -snap {("G3" 48)}
wvSetMarker -win $_nWave2 1110000.000000
wvZoom -win $_nWave2 971367.233635 1328088.572731
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcAction -pos 26 6 9 -win $_nTrace1 -name "dram\[dram_addr>>2\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 199 4 7 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAction -pos 169 12 1 -win $_nTrace1 -name "sum" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAction -pos 81 12 0 -win $_nTrace1 -name "a" -ctrlKey off
wvSetCursor -win $_nWave2 1051001.504405 -snap {("G3" 53)}
wvScrollDown -win $_nWave2 1
wvSetMarker -win $_nWave2 1070000.000000
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 8)}
wvSetPosition -win $_nWave2 {("G3" 9)}
wvSetPosition -win $_nWave2 {("G3" 10)}
wvSetPosition -win $_nWave2 {("G3" 11)}
wvSetPosition -win $_nWave2 {("G3" 12)}
wvSetPosition -win $_nWave2 {("G3" 13)}
wvSetPosition -win $_nWave2 {("G3" 14)}
wvSetPosition -win $_nWave2 {("G3" 15)}
wvSetPosition -win $_nWave2 {("G3" 16)}
wvSetPosition -win $_nWave2 {("G3" 17)}
wvSetPosition -win $_nWave2 {("G3" 18)}
wvSetPosition -win $_nWave2 {("G3" 19)}
wvSetPosition -win $_nWave2 {("G3" 20)}
wvSetPosition -win $_nWave2 {("G3" 21)}
wvSetPosition -win $_nWave2 {("G3" 22)}
wvSetPosition -win $_nWave2 {("G3" 23)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 24)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 14
wvSetPosition -win $_nWave2 {("G3" 25)}
wvSelectSignal -win $_nWave2 {( "G3" 25 )} 
wvSetPosition -win $_nWave2 {("G3" 26)}
wvSetPosition -win $_nWave2 {("G3" 31)}
wvSetPosition -win $_nWave2 {("G3" 32)}
wvSetPosition -win $_nWave2 {("G3" 33)}
wvSetPosition -win $_nWave2 {("G3" 34)}
wvSetPosition -win $_nWave2 {("G3" 35)}
wvSetPosition -win $_nWave2 {("G3" 36)}
wvSetPosition -win $_nWave2 {("G3" 37)}
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("G3" 38)}
wvSetPosition -win $_nWave2 {("G3" 39)}
wvSetPosition -win $_nWave2 {("G3" 40)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 40)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetPosition -win $_nWave2 {("G3" 41)}
wvSetPosition -win $_nWave2 {("G3" 42)}
wvSetPosition -win $_nWave2 {("G3" 43)}
wvSetPosition -win $_nWave2 {("G3" 44)}
wvSetPosition -win $_nWave2 {("G3" 45)}
wvSetPosition -win $_nWave2 {("G3" 46)}
wvSetPosition -win $_nWave2 {("G3" 47)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 47)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 52 )} 
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 17781690.140845 123049295.774648
wvZoom -win $_nWave2 26529279.904776 33794227.335841
wvZoom -win $_nWave2 153484.804882 1703681.334186
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 1113078.290275 -snap {("G3" 55)}
wvSetMarker -win $_nWave2 1130000.000000
wvSelectSignal -win $_nWave2 {( "G3" 47 )} 
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 763738.227333 1384908.526752
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 52 )} 
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1422535.211268 39830985.915493
wvZoom -win $_nWave2 2071692.124578 7346092.045229
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "sp" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 2119978.884414 3408863.935446
wvZoom -win $_nWave2 88951.221832 619027.890707
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 809300.153607 1717149.772413
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 943559.604275 1346977.286998
wvSelectSignal -win $_nWave2 {( "G3" 55 )} 
wvSelectSignal -win $_nWave2 {( "G3" 57 )} 
wvSetPosition -win $_nWave2 {("G3" 57)}
wvSetPosition -win $_nWave2 {("G3" 56)}
wvSetPosition -win $_nWave2 {("G3" 50)}
wvSetPosition -win $_nWave2 {("G3" 41)}
wvSetPosition -win $_nWave2 {("G3" 40)}
wvSetPosition -win $_nWave2 {("G3" 39)}
wvSetPosition -win $_nWave2 {("G3" 38)}
wvSetPosition -win $_nWave2 {("G3" 37)}
wvSetPosition -win $_nWave2 {("G3" 36)}
wvSetPosition -win $_nWave2 {("G3" 35)}
wvSetPosition -win $_nWave2 {("G3" 50)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.u_alu.a\[31:0\]" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 76 22 3 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 1030777.370892 -snap {("G3" 51)}
wvSetMarker -win $_nWave2 1070000.000000
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAction -pos 78 6 9 -win $_nTrace1 -name "dram_dout_wb" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_as" -win $_nTrace1
srcAction -pos 202 6 3 -win $_nTrace1 -name "dram_as" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAction -pos 78 10 5 -win $_nTrace1 -name "load_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_load_funct3_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_load_funct3_wb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[1:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout" -win $_nTrace1
srcAction -pos 73 15 2 -win $_nTrace1 -name "dram_dout" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAction -pos 207 14 2 -win $_nTrace1 -name "dram_dout_to_dbus" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 61 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 190344.962975 568762.113247
verdiWindowResize -win $_Verdi_1 "0" "25" "1898" "648"
verdiWindowResize -win $_Verdi_1 "0" "25" "1918" "851"
verdiWindowResize -win $_Verdi_1 "0" "25" "1918" "793"
verdiWindowResize -win $_Verdi_1 "0" "25" "1918" "851"
verdiWindowResize -win $_Verdi_1 "0" "25" "1918" "793"
verdiWindowResize -win $_Verdi_1 "0" "25" "1918" "851"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "851"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 2133802.816901 22760563.380282
wvZoom -win $_nWave2 2148328.704622 3397555.048601
wvZoom -win $_nWave2 573850.854128 1082338.760339
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiWindowResize -win $_Verdi_1 "0" "25" "1918" "851"
verdiWindowResize -win $_Verdi_1 "0" "25" "1914" "789"
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "586"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "586"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "586"
verdiWindowResize -win $_Verdi_1 "0" "25" "1918" "851"
verdiWindowResize -win $_Verdi_1 "0" "25" "1918" "793"
verdiWindowResize -win $_Verdi_1 "0" "25" "1898" "590"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
verdiWindowResize -win $_Verdi_1 "0" "25" "1898" "590"
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "586"
verdiWindowResize -win $_Verdi_1 "0" "25" "1918" "851"
verdiWindowResize -win $_Verdi_1 "0" "25" "1898" "648"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 28175965.665236 136545064.377682
wvZoom -win $_nWave2 620137.903934 7054068.657248
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1898" "648"
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "586"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
wvZoom -win $_nWave2 225470.199178 1997021.764151
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 56140.718608 359300.599093
wvSelectSignal -win $_nWave2 {( "G3" 48 )} 
wvSetCursor -win $_nWave2 308275.802307 -snap {("G3" 49)}
wvSetMarker -win $_nWave2 310000.000000
wvSelectSignal -win $_nWave2 {( "G3" 50 )} 
wvScrollDown -win $_nWave2 10
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G3" 50 51 52 53 54 55 56 57 58 59 60 61 62 63 \
           64 65 66 67 68 69 70 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 49)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G3" 49 )} 
wvSelectSignal -win $_nWave2 {( "G3" 39 40 41 42 43 44 45 46 47 48 49 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 38)}
wvSelectSignal -win $_nWave2 {( "G3" 38 )} 
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 )} \
           
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvZoomOut -win $_nWave2
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {193 193 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAction -pos 197 4 6 -win $_nTrace1 -name "dram_we" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 1073869.154111 -snap {("G1" 4)}
wvSetMarker -win $_nWave2 1130000.000000
wvZoom -win $_nWave2 1021349.907211 1187874.348604
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_misalign_exception" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "s_type_store_funct3_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAction -pos 21 3 3 -win $_nTrace1 -name "reg_bus_we" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAction -pos 203 6 8 -win $_nTrace1 -name "dram_addr\[31\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAction -pos 170 12 1 -win $_nTrace1 -name "sum" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "586"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcAction -pos 77 13 6 -win $_nTrace1 -name "           " -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAction -pos 76 15 7 -win $_nTrace1 -name "hazard_rs1" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_ex_vld" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_ex_vld" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_ex_vld" -win $_nTrace1
srcAction -pos 281 6 7 -win $_nTrace1 -name "rs1_ex_vld" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en_d" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en_d" -win $_nTrace1
srcAction -pos 278 12 8 -win $_nTrace1 -name "pc_jump_en_d" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAction -pos 274 5 6 -win $_nTrace1 -name "pc_jump_en" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "misalign_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_misalign_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "j_misalign_bran_take" -win $_nTrace1
srcSelect -signal "mret_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ebreak_bran_take" -win $_nTrace1
srcSelect -signal "ecall_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAction -pos 152 31 6 -win $_nTrace1 -name "btype_bran_take" -ctrlKey off
wvSelectSignal -win $_nWave2 {( "G3" 21 )} 
wvSelectSignal -win $_nWave2 {( "G3" 13 14 15 16 17 18 19 20 21 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 13)}
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 12 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 3 4 5 6 7 8 9 10 11 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 2)}
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcAction -pos 221 5 7 -win $_nTrace1 -name "btype_ex" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAction -pos 152 31 8 -win $_nTrace1 -name "btype_bran_take" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b_type_funct3_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b_type_funct3_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 243 7 2 -win $_nTrace1 -name "rd_dat" -ctrlKey off
wvSelectSignal -win $_nWave2 {( "G3" 12 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 3 4 5 6 7 8 9 10 11 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 2)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 882266.817427 1182479.894868
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAction -pos 78 10 3 -win $_nTrace1 -name "load_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_load_funct3_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[1:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7:0\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[31\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7:0\]" -win $_nTrace1
srcAction -pos 65 17 3 -win $_nTrace1 -name "dram_dout\[7:0\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAction -pos 207 14 4 -win $_nTrace1 -name "dram_dout_to_dbus" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 7 9 4 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 199 4 6 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 1033007.609128 -snap {("G3" 14)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetMarker -win $_nWave2 1050000.000000
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAction -pos 169 5 5 -win $_nTrace1 -name "load_ex" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "opcode" -win $_nTrace1
srcAction -pos 112 7 3 -win $_nTrace1 -name "opcode" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "a5" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "586"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 432983.368028 2949699.194688
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 2934986.907711 5125593.077959
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvZoom -win $_nWave2 3417845.873406 3805058.654203
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 3336585.726449 6316488.028248
wvZoom -win $_nWave2 5768773.591086 6175887.004148
srcDeselectAll -win $_nTrace1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1422535.211268 41253521.126761
wvZoom -win $_nWave2 3105534.616147 9360682.404284
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 4 5 )} {( "G3" 1 2 3 4 5 6 7 8 9 10 11 12 \
           13 14 15 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvZoom -win $_nWave2 5400557.149681 6479790.394817
wvZoom -win $_nWave2 5883932.039755 6073937.892772
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 2845070.422535 18492957.746479
wvZoom -win $_nWave2 3252797.064074 4850644.713350
wvSetCursor -win $_nWave2 3541984.983696 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 4138364.740116 -snap {("G1" 2)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 3564775.600638 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 3456752.097589 -snap {("G1" 2)}
wvSetMarker -win $_nWave2 3530000.000000
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_tx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "tvld" -win $_nTrace1
srcAction -pos 86 5 3 -win $_nTrace1 -name "tvld" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcSelect -signal "txd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "trdy" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "tdata" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 2484540.570142 8281801.900472
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "tdata" -win $_nTrace1
srcAction -pos 85 8 2 -win $_nTrace1 -name "tdata" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAction -pos 53 6 6 -win $_nTrace1 -name "reg_bus_we" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAction -pos 53 6 8 -win $_nTrace1 -name "reg_bus_we" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_starsea_core" -win $_nTrace1
srcAction -pos 54 2 10 -win $_nTrace1 -name "u_starsea_core" -ctrlKey off
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {55 55 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_starsea_core" -win $_nTrace1
wvZoom -win $_nWave2 3256147.888051 4513582.035757
wvZoom -win $_nWave2 3466015.418337 3740525.690019
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "586"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "586"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "586"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAction -pos 53 6 3 -win $_nTrace1 -name "reg_bus_we" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 4267605.633803 17781690.140845
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 3207215.830192 4520556.437215
wvZoom -win $_nWave2 3461559.961834 3764923.144301
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_tx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "tvld" -win $_nTrace1
srcAction -pos 86 5 2 -win $_nTrace1 -name "tvld" -ctrlKey off
srcCopySignalFullPath -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 3426950.922707 3943095.604989
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "586"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "uart_tvld" -win $_nTrace1
srcSelect -signal "uart_tdata  \[7:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "uart_txd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 2558914.481173 11026595.127963
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 3173119.485834 5594160.572169
wvZoom -win $_nWave2 3433978.138093 3930121.064941
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 2133802.816901 211246478.873239
wvZoom -win $_nWave2 2356199.166832 72747649.275937
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 2752770.716742 11923487.808422
wvZoom -win $_nWave2 3572968.653815 4386708.339414
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 3713403.635694 -snap {("G3" 13)}
wvSetCursor -win $_nWave2 4483591.056431 -snap {("G3" 13)}
wvSetCursor -win $_nWave2 5171258.396374 -snap {("G3" 13)}
wvSetCursor -win $_nWave2 5987290.306441 -snap {("G3" 13)}
wvSetCursor -win $_nWave2 6748308.829311 -snap {("G3" 13)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rd" -win $_nTrace1
srcAction -pos 24 3 8 -win $_nTrace1 -name "reg_bus_rd" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAction -pos 206 10 10 -win $_nTrace1 -name "dram_dout_wb" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_as" -win $_nTrace1
srcAction -pos 202 6 6 -win $_nTrace1 -name "dram_as" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 2989060.704287 4822840.277470
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 3627009.372704 -snap {("G3" 16)}
wvZoom -win $_nWave2 3487538.813617 4072540.325343
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_as" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 3591767.956198 -snap {("G3" 17)}
wvSetMarker -win $_nWave2 3590000.000000
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 3368066.673898 4465562.467728
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 23 )} 
wvExpandBus -win $_nWave2 {("G3" 23)}
wvScrollUp -win $_nWave2 25
wvSelectSignal -win $_nWave2 {( "G3" 23 )} 
wvSelectSignal -win $_nWave2 {( "G3" 23 )} 
wvSelectSignal -win $_nWave2 {( "G3" 22 )} 
wvSelectSignal -win $_nWave2 {( "G3" 23 )} 
wvSetPosition -win $_nWave2 {("G3" 23)}
wvCollapseBus -win $_nWave2 {("G3" 23)}
wvSetPosition -win $_nWave2 {("G3" 23)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
srcAction -pos 25 9 9 -win $_nTrace1 -name "reg_bus_rdat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "trdy" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvZoom -win $_nWave2 236140845.070423 310112676.056338
wvZoom -win $_nWave2 259843086.689126 271355604.046794
wvZoom -win $_nWave2 264229193.654239 266004715.697429
wvZoom -win $_nWave2 265043182.985268 265425795.481899
wvZoomAll -win $_nWave2
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
wvZoom -win $_nWave2 171415492.957746 198443661.971831
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvZoom -win $_nWave2 176916296.369721 179790418.567698
wvZoom -win $_nWave2 177768412.880509 178367525.676706
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 171415492.957746 195598591.549296
wvSetCursor -win $_nWave2 177222842.689896 -snap {("G3" 4)}
wvZoomAll -win $_nWave2
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "586"
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top" -delim "."
srcHBSelect "tb.u_fpga_top.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_tx" -delim "."
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcSelect -word -line 81 -pos 2 -win $_nTrace1
srcAction -pos 81 2 5 -win $_nTrace1 -name "uart_tx" -ctrlKey off
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "586"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "586"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvSetCursor -win $_nWave2 179239436.619718 -snap {("G3" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 331450704.225352 470859154.929577
wvZoom -win $_nWave2 367775441.380626 383876135.687312
wvZoom -win $_nWave2 369873067.047316 371709906.820332
wvZoom -win $_nWave2 370204215.626097 370786312.737264
wvZoom -win $_nWave2 370273083.453237 370532567.588003
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 292330985.915493 492908450.704225
wvZoom -win $_nWave2 367053154.135991 376799523.903894
wvZoom -win $_nWave2 369654473.954235 371384111.406003
wvZoom -win $_nWave2 370258629.007776 370440119.134757
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 346387323.943662 418936619.718310
wvZoom -win $_nWave2 368969569.529793 375355951.200097
wvZoom -win $_nWave2 369976998.750931 370966438.164640
wvZoomAll -win $_nWave2
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_machine" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_machine" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_pc" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_pc" -delim "."
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
srcDeselectAll -win $_nTrace1
wvZoom -win $_nWave2 362746478.873239 390485915.492958
wvZoom -win $_nWave2 369876686.173339 371595749.851181
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("G3" 24)}
wvSetPosition -win $_nWave2 {("G1" 0)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.reg_bus_wdat\[31:0\]" -win \
           $_nTrace1
nsMsgSwitchTab -tab trace
wvSetPosition -win $_nWave2 {("G3" 24)}
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvScrollDown -win $_nWave2 9
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 5)}
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G3" 6)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.reg_bus_addr\[31:0\]" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAction -pos 48 17 7 -win $_nTrace1 -name "reg_bus_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 204 10 1 -win $_nTrace1 -name "dram_addr" -ctrlKey off
wvZoom -win $_nWave2 370204761.001959 370604261.715823
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAction -pos 170 12 1 -win $_nTrace1 -name "sum" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAction -pos 81 12 0 -win $_nTrace1 -name "a" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 76 22 2 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 370138927.785704 370479347.408081
wvSelectSignal -win $_nWave2 {( "G3" 14 )} 
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 76 22 4 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_pc" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_pc" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "586"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
wvSetCursor -win $_nWave2 361072738.152542
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 331031425.674110 430207648.279119
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 364136728.149293 377546470.924055
wvZoom -win $_nWave2 369075668.621876 371757617.176829
wvZoom -win $_nWave2 369615835.725121 370108785.424306
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 369734560.230062 370834324.065990
wvSelectSignal -win $_nWave2 {( "G3" 22 )} 
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 11)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 370289863.518986 -snap {("G3" 13)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 13 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 370386673.715811 -snap {("G3" 13)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 370281344.221666 -snap {("G3" 15)}
wvScrollDown -win $_nWave2 0
wvSetMarker -win $_nWave2 370310000.000000
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 13 )} 
wvSetPosition -win $_nWave2 {("G3" 13)}
wvSetPosition -win $_nWave2 {("G3" 14)}
wvSetPosition -win $_nWave2 {("G3" 15)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 15)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 365017967.440763 367558267.005442
wvSelectSignal -win $_nWave2 {( "G3" 14 )} 
wvSetPosition -win $_nWave2 {("G3" 14)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 356069672.776943 360363136.829921
wvSelectSignal -win $_nWave2 {( "G3" 15 )} 
wvZoom -win $_nWave2 355813883.081976 357174466.565497
wvSetCursor -win $_nWave2 356489390.774844 -snap {("G3" 15)}
wvSetMarker -win $_nWave2 356490000.000000
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAction -pos 76 15 2 -win $_nTrace1 -name "hazard_rs1" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_ex_vld" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_d_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_ex_vld" -win $_nTrace1
srcAction -pos 281 6 8 -win $_nTrace1 -name "rs1_ex_vld" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en_d" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en_d" -win $_nTrace1
srcAction -pos 278 12 8 -win $_nTrace1 -name "pc_jump_en_d" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAction -pos 274 5 7 -win $_nTrace1 -name "pc_jump_en" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "misalign_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_misalign_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "j_misalign_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mret_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ebreak_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ecall_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAction -pos 152 31 8 -win $_nTrace1 -name "btype_bran_take" -ctrlKey off
wvSelectSignal -win $_nWave2 {( "G3" 24 )} 
wvSelectSignal -win $_nWave2 {( "G3" 17 18 19 20 21 22 23 24 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 17)}
wvSetCursor -win $_nWave2 356393709.798506 -snap {("G3" 17)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 20 )} 
wvSetPosition -win $_nWave2 {("G3" 20)}
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 356371703.173948 -snap {("G3" 21)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetMarker -win $_nWave2 356390000.000000
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b_type_funct3_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs2_dat_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 243 7 5 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAction -pos 78 10 5 -win $_nTrace1 -name "load_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_load_funct3_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_load_funct3_wb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[1:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout" -win $_nTrace1
srcAction -pos 73 15 3 -win $_nTrace1 -name "dram_dout" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAction -pos 207 14 3 -win $_nTrace1 -name "dram_dout_to_dbus" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "586"
verdiWindowResize -win $_Verdi_1 "0" "25" "1890" "524"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 34 )} 
wvExpandBus -win $_nWave2 {("G3" 34)}
wvSelectSignal -win $_nWave2 {( "G3" 64 )} 
wvScrollUp -win $_nWave2 28
wvSelectSignal -win $_nWave2 {( "G3" 35 36 37 38 39 40 41 42 43 44 45 46 47 48 \
           49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 )} 
wvCreateBusOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 66)}
wvSetPosition -win $_nWave2 {("G3" 66)}
wvSetPosition -win $_nWave2 {("G3" 67)}
wvSetPosition -win $_nWave2 {("G3" 66)}
wvSetPosition -win $_nWave2 {("G3" 66)}
wvCreateBus -win $_nWave2 "NewBus\[29:0\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[31\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[30\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[29\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[28\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[27\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[26\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[25\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[24\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[23\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[22\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[21\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[20\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[19\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[18\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[17\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[16\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[15\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[14\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[13\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[12\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[11\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[10\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[9\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[8\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[7\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[6\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[5\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[4\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[3\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[2\]"
wvSetPosition -win $_nWave2 {("G3" 67)}
wvSetPosition -win $_nWave2 {("G3" 67)}
wvSelectSignal -win $_nWave2 {( "G3" 34 )} 
wvSetPosition -win $_nWave2 {("G3" 34)}
wvCollapseBus -win $_nWave2 {("G3" 34)}
wvSetPosition -win $_nWave2 {("G3" 34)}
wvSetPosition -win $_nWave2 {("G3" 35)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 352200012.605652 354871425.464999
wvZoom -win $_nWave2 352397268.829391 353364763.641321
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 351814186.513022 355357585.233506
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 352482000.055257 353418932.487678
wvSelectSignal -win $_nWave2 {( "G3" 30 )} 
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 353588265.564376 353884763.169573
wvSetCursor -win $_nWave2 353706280.785496 -snap {("G3" 29)}
wvSetMarker -win $_nWave2 353730000.000000
wvSelectSignal -win $_nWave2 {( "G3" 35 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 352603901.855334 353147689.305652
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 352664705.093428 354056678.594945
wvZoom -win $_nWave2 353119886.301702 353563320.898177
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 353552406.544447 353937839.147290
wvSetSearchMode -win $_nWave2 -value "1bc" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave2 {( "G3" 35 )} 
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 7 9 7 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 199 4 7 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAction -pos 169 12 2 -win $_nTrace1 -name "sum" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
wvSetCursor -win $_nWave2 353690370.816444 -snap {("G3" 44)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetMarker -win $_nWave2 353710000.000000
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_id" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_id" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 352027752.260968 355054834.756433
wvZoom -win $_nWave2 353045294.759375 353541293.508632
wvZoom -win $_nWave2 353139471.737007 353318407.994650
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 36 )} 
wvSelectSignal -win $_nWave2 {( "G3" 37 )} 
wvSelectSignal -win $_nWave2 {( "G3" 40 )} 
wvScrollDown -win $_nWave2 1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we_byte" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 353164512.746257 354378561.279129
wvSelectSignal -win $_nWave2 {( "G3" 29 )} 
wvScrollDown -win $_nWave2 9
wvSelectSignal -win $_nWave2 {( "G3" 40 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 309621833.966390 443382320.423476
wvZoom -win $_nWave2 345742809.212095 365026142.351127
wvZoom -win $_nWave2 351465429.876326 354245375.933640
wvZoom -win $_nWave2 352188763.238611 352525015.504334
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 324592123.769339 488663853.727145
wvZoom -win $_nWave2 348129840.303331 370167604.313135
wvZoom -win $_nWave2 353259587.059450 355444766.191224
wvZoom -win $_nWave2 353622246.887177 354098622.084680
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 49 )} 
wvSelectSignal -win $_nWave2 {( "G3" 50 )} 
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 353670822.417085 353800803.835250
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 49 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 353596873.776223 354141662.279924
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 352260188.059267 354592587.785382
wvSelectSignal -win $_nWave2 {( "G3" 41 )} 
wvZoom -win $_nWave2 353447710.845211 354025069.989790
wvZoom -win $_nWave2 353627983.320723 353830180.827052
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 353046558.845713 355540043.705759
wvSetCursor -win $_nWave2 353904023.048627 -snap {("G3" 41)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomAll -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 339507735.583685 457412095.639944
wvZoom -win $_nWave2 358412232.132705 376487584.096322
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 352145601.669853 363585697.849358
wvZoom -win $_nWave2 357069187.367308 358718427.674480
wvSelectSignal -win $_nWave2 {( "G3" 30 )} 
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollDown -win $_nWave2 13
wvSelectSignal -win $_nWave2 {( "G3" 40 )} 
wvSetCursor -win $_nWave2 357284910.783006 -snap {("G3" 39)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 356316475.018907 -snap {("G3" 40)}
wvZoom -win $_nWave2 355370075.517745 357160811.828767
wvZoom -win $_nWave2 356038768.190803 356817020.680404
wvZoom -win $_nWave2 356301469.453112 356508346.697183
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout" -win $_nTrace1
srcTraceLoad "tb.u_fpga_top.u_starsea_core.u_dram.dram_dout\[31:0\]" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 199 4 8 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 356369264.668105 -snap {("G3" 54)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 356611494.352625 -snap {("G3" 36)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 356879765.546690 357592051.754124
wvSetCursor -win $_nWave2 357107176.192293 -snap {("G3" 37)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 361307260.474600 365955654.289641
wvZoom -win $_nWave2 364543484.016717 364742887.689514
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 365899625.310335 367371454.388879
wvSetCursor -win $_nWave2 366047636.251391 -snap {("G3" 37)}
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 731575246.132208 975907172.995781
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 930374148.650592 962676822.525663
wvZoom -win $_nWave2 956043643.361351 960019007.586483
wvZoom -win $_nWave2 958626791.423200 959065702.944540
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
wvSetCursor -win $_nWave2 958658274.528106 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1267827004.219409 1502215189.873418
wvSetCursor -win $_nWave2 1285134148.729317 -snap {("G3" 53)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 841666666.666667 1722398030.942335
wvZoom -win $_nWave2 1101798293.245911 1296277652.164730
wvZoom -win $_nWave2 1175651214.353412 1201089442.735198
wvZoom -win $_nWave2 1183790731.873192 1187708433.712581
wvZoom -win $_nWave2 1184823881.092248 1185385914.267519
wvSetCursor -win $_nWave2 1184951939.283834 -snap {("G3" 37)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1040541490.857947 1633614627.285513
wvZoom -win $_nWave2 1277020019.938878 1321646479.571613
wvZoom -win $_nWave2 1283892871.316037 1288600303.766748
wvZoom -win $_nWave2 1285372633.837426 1286326037.878076
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rd" -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 1285544943.849972 1285713231.061086
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
verdiWindowResize -win $_Verdi_1 "0" "25" "1890" "524"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "524"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1286693249.622413 1288245941.753078
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 1287247938.512561 1287682517.603985
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1285744025.918248 1288677893.202121
wvZoom -win $_nWave2 1286637390.569137 1287274918.692004
wvZoom -win $_nWave2 1286713607.011256 1286931944.701717
wvSetCursor -win $_nWave2 1286750303.711436 -snap {("G3" 49)}
wvSetMarker -win $_nWave2 1286750000.000000
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 49 )} 
wvSelectSignal -win $_nWave2 {( "G3" 50 )} 
wvSetPosition -win $_nWave2 {("G3" 50)}
wvSetPosition -win $_nWave2 {("G3" 56)}
wvSetPosition -win $_nWave2 {("G3" 40)}
wvSetPosition -win $_nWave2 {("G3" 39)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.u_dram.dram_wdat\[31:0\]" -win \
           $_nTrace1
wvSetPosition -win $_nWave2 {("G3" 56)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAction -pos 205 10 5 -win $_nTrace1 -name "dram_wdat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "s_type_store_funct3_wb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_wdat\[7:0\]" -win $_nTrace1
srcAction -pos 89 23 3 -win $_nTrace1 -name "store_wdat\[7:0\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 159 18 3 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAction -pos 78 10 4 -win $_nTrace1 -name "load_data" -ctrlKey off
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 7 9 7 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 199 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 1286652650.566871 1286883578.757064
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1658473980.309423 2265752461.322082
wvZoom -win $_nWave2 1988163844.825014 2068878073.314038
wvZoom -win $_nWave2 2017906640.695780 2024036835.264566
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 11 )} 
wvSelectAll -win $_nWave2
wvSelectStuckSignals -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 17 )} 
wvSelectAll -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 1289135021.097046 1399226441.631505
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1036990154.711674 1804078762.306611
wvZoom -win $_nWave2 1273266392.493407 1345551816.837796
wvZoom -win $_nWave2 1285669798.639295 1290448160.023523
wvZoom -win $_nWave2 1287296188.871044 1287944728.777623
wvSetCursor -win $_nWave2 1287411576.069569 -snap {("G3" 4)}
wvSetMarker -win $_nWave2 1287430000.000000
wvZoom -win $_nWave2 1287387404.047734 1287503247.322186
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAction -pos 22 9 9 -win $_nTrace1 -name "reg_bus_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAction -pos 204 6 7 -win $_nTrace1 -name "dram_addr\[31\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1286736254.052793 1288112687.220968
wvZoom -win $_nWave2 1287303476.159279 1287617093.843167
wvSetCursor -win $_nWave2 1287390812.729197 -snap {("G3" 8)}
wvSetMarker -win $_nWave2 1287410000.000000
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAction -pos 169 12 2 -win $_nTrace1 -name "sum" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAction -pos 76 15 4 -win $_nTrace1 -name "hazard_rs1" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_ex_vld" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_ex_vld" -win $_nTrace1
srcAction -pos 281 6 8 -win $_nTrace1 -name "rs1_ex_vld" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en_d" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en_d" -win $_nTrace1
srcAction -pos 278 12 9 -win $_nTrace1 -name "pc_jump_en_d" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcAction -pos 273 4 11 -win $_nTrace1 -name "                       " -ctrlKey \
          off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAction -pos 274 5 5 -win $_nTrace1 -name "pc_jump_en" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAction -pos 152 31 2 -win $_nTrace1 -name "btype_bran_take" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b_type_funct3_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 241 7 4 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAction -pos 78 10 4 -win $_nTrace1 -name "load_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7\]" -win $_nTrace1
srcAction -pos 61 25 5 -win $_nTrace1 -name "dram_dout\[7\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAction -pos 207 14 5 -win $_nTrace1 -name "dram_dout_to_dbus" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {193 193 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 1287348688.272359 -snap {("G3" 24)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1284961929.780244 1290043330.228049
wvZoom -win $_nWave2 1286670023.601414 1287992188.274894
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1278762139.952301 1288997293.767816
wvZoom -win $_nWave2 1284347568.475797 1288068788.252606
wvSelectSignal -win $_nWave2 {( "G3" 22 )} 
wvZoom -win $_nWave2 1286925206.646699 1287919625.433751
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 24 )} 
wvSelectSignal -win $_nWave2 {( "G3" 24 )} 
wvSelectSignal -win $_nWave2 {( "G3" 24 )} 
wvSetPosition -win $_nWave2 {("G3" 24)}
wvExpandBus -win $_nWave2 {("G3" 24)}
wvSetPosition -win $_nWave2 {("G3" 57)}
wvSelectSignal -win $_nWave2 {( "G3" 54 )} 
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G3" 56 )} 
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 55 56 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1286124496.722651 1289660207.965500
srcDeselectAll -win $_nTrace1
srcAction -pos 193 1 5 -win $_nTrace1 -name "                             " \
          -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_dram" -win $_nTrace1
srcAction -pos 192 2 3 -win $_nTrace1 -name "u_dram" -ctrlKey off
wvSelectSignal -win $_nWave2 {( "G3" 54 )} 
wvSelectSignal -win $_nWave2 {( "G3" 55 )} 
wvSelectSignal -win $_nWave2 {( "G3" 54 )} 
wvScrollUp -win $_nWave2 21
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 58 )} 
wvExpandBus -win $_nWave2 {("G3" 58)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 88 )} 
wvScrollUp -win $_nWave2 24
wvSelectSignal -win $_nWave2 {( "G3" 59 60 61 62 63 64 65 66 67 68 69 70 71 72 \
           73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 )} 
wvCreateBusOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 90)}
wvSetPosition -win $_nWave2 {("G3" 90)}
wvSetPosition -win $_nWave2 {("G3" 91)}
wvSetPosition -win $_nWave2 {("G3" 90)}
wvSetPosition -win $_nWave2 {("G3" 90)}
wvCreateBus -win $_nWave2 "NewBus\[29:0\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[31\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[30\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[29\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[28\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[27\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[26\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[25\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[24\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[23\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[22\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[21\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[20\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[19\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[18\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[17\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[16\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[15\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[14\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[13\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[12\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[11\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[10\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[9\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[8\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[7\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[6\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[5\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[4\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[3\]" \
           "/tb/u_fpga_top/u_starsea_core/u_dram/dram_addr\[2\]"
wvSetPosition -win $_nWave2 {("G3" 91)}
wvSetPosition -win $_nWave2 {("G3" 91)}
wvSelectSignal -win $_nWave2 {( "G3" 58 )} 
wvSetPosition -win $_nWave2 {("G3" 58)}
wvCollapseBus -win $_nWave2 {("G3" 58)}
wvSetPosition -win $_nWave2 {("G3" 58)}
wvSetPosition -win $_nWave2 {("G3" 59)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 1287146421.701473 1287865001.553220
wvZoom -win $_nWave2 1287345521.884958 1287561297.972648
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcAction -pos 26 6 11 -win $_nTrace1 -name "dram\[dram_addr>>2\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 204 10 5 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAction -pos 169 12 0 -win $_nTrace1 -name "sum" -ctrlKey off
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 1287228832.847340 1287556593.993200
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAction -pos 81 12 0 -win $_nTrace1 -name "a" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAction -pos 76 15 3 -win $_nTrace1 -name "hazard_rs1" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_ex_vld" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_ex_vld" -win $_nTrace1
srcAction -pos 281 6 7 -win $_nTrace1 -name "rs1_ex_vld" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en_d" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en_d" -win $_nTrace1
srcAction -pos 278 12 10 -win $_nTrace1 -name "pc_jump_en_d" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAction -pos 274 5 9 -win $_nTrace1 -name "pc_jump_en" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAction -pos 152 31 11 -win $_nTrace1 -name "btype_bran_take" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b_type_funct3_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 241 7 1 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAction -pos 78 10 5 -win $_nTrace1 -name "load_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7\]" -win $_nTrace1
srcAction -pos 61 25 9 -win $_nTrace1 -name "dram_dout\[7\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAction -pos 207 14 3 -win $_nTrace1 -name "dram_dout_to_dbus" -ctrlKey off
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1890" "524"
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "462"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 7 9 7 -win $_nTrace1 -name "dram_addr" -ctrlKey off
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvSetMarker -win $_nWave2 1287370000.000000
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1179765357.237317 1389355471.909299
wvZoom -win $_nWave2 1278959553.562066 1300331260.051122
wvZoom -win $_nWave2 1287060362.139779 1287781769.953755
wvSetCursor -win $_nWave2 1287353592.600658 -snap {("G3" 70)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 24 )} 
wvSetPosition -win $_nWave2 {("G3" 24)}
wvCollapseBus -win $_nWave2 {("G3" 24)}
wvSetPosition -win $_nWave2 {("G3" 24)}
wvSetPosition -win $_nWave2 {("G3" 44)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 1287222704.263102 1287475349.193735
wvSelectSignal -win $_nWave2 {( "G3" 41 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1256829803.377522 1262196820.300563
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 3695013.760659 -snap {("G3" 41)}
wvSetCursor -win $_nWave2 4336640.256381 -snap {("G3" 41)}
wvZoom -win $_nWave2 3230778.119636 5291531.452956
wvZoom -win $_nWave2 4191593.492344 4813297.557037
wvZoom -win $_nWave2 4323191.891410 4510315.196395
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcSelect -signal "reg_bus_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 49 )} 
wvSelectSignal -win $_nWave2 {( "G3" 49 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 2155997.348014 31800960.883202
wvZoom -win $_nWave2 2927350.126355 7868177.382219
wvZoom -win $_nWave2 3990566.118122 5415136.564609
wvZoom -win $_nWave2 4232001.756380 4543563.928573
wvSelectSignal -win $_nWave2 {( "G3" 43 )} 
wvSetPosition -win $_nWave2 {("G3" 43)}
wvSetPosition -win $_nWave2 {("G3" 42)}
wvSetPosition -win $_nWave2 {("G3" 49)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.u_dram.dram_dout\[31:0\]" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 845218002.812940 1662025316.455696
wvZoom -win $_nWave2 1247877585.698675 1342654805.636126
wvZoom -win $_nWave2 1282535922.102694 1297798920.250145
wvZoom -win $_nWave2 1286485840.047332 1288675468.473549
wvZoom -win $_nWave2 1287218795.835241 1287711539.222294
wvZoom -win $_nWave2 1287348045.682659 1287528579.652177
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 294760900.140647 490084388.185654
wvZoom -win $_nWave2 343248376.427441 376489082.550431
wvZoom -win $_nWave2 350705328.082276 356829846.369353
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 355632507.351128 356093353.663869
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomAll -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 316068917.018284 1218108298.171589
wvZoom -win $_nWave2 260081678.110306 282283772.583137
wvZoom -win $_nWave2 264453398.540956 265718074.808396
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 265169336.934212 -snap {("G3" 48)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 685764035.785728 735853042.383623
wvZoom -win $_nWave2 700382135.460894 701614987.240730
wvZoomAll -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 710267229.254571 -snap {("G3" 47)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 653445850.914205 820358649.789030
wvZoom -win $_nWave2 699810517.268318 704623052.256973
wvZoom -win $_nWave2 700923965.940078 701279321.899155
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 696061884.669480 -snap {("G3" 47)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 1566139240.506329 -snap {("G3" 47)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 1555485232.067511 -snap {("G3" 47)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_uart_tx" -win $_nTrace1
srcAction -pos 69 23 6 -win $_nTrace1 -name "u_uart_tx" -ctrlKey off
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 1175492264.416315 1473804500.703235
wvZoom -win $_nWave2 1265489415.869649 1312480935.509782
wvZoom -win $_nWave2 1284656139.772852 1292058460.728822
wvZoom -win $_nWave2 1288221955.422379 1289528553.565803
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 1288540794.772048 1288842176.059701
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 1441842475.386779 -snap {("G3" 49)}
wvSetMarker -win $_nWave2 1441830000.000000
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 419057665.260197 -snap {("G3" 47)}
wvZoom -win $_nWave2 174015471.167370 894936708.860759
wvSetCursor -win $_nWave2 266792254.921091 -snap {("G3" 47)}
wvSetCursor -win $_nWave2 352471361.229236 -snap {("G3" 47)}
wvSetCursor -win $_nWave2 439671398.418591 -snap {("G3" 47)}
wvSetCursor -win $_nWave2 526871435.607946 -snap {("G3" 47)}
wvSetCursor -win $_nWave2 614071472.797302 -snap {("G3" 46)}
wvSetCursor -win $_nWave2 695187786.461818 -snap {("G3" 47)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 320531812.723833 455387684.191091
wvZoom -win $_nWave2 345758016.528505 369751360.748770
wvZoom -win $_nWave2 352709674.628886 353502703.586940
wvZoom -win $_nWave2 353004690.324166 353126265.790309
wvSetCursor -win $_nWave2 353029740.683861 -snap {("G3" 52)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 51 )} 
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
srcAction -pos 25 9 9 -win $_nTrace1 -name "reg_bus_rdat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "timer_cnt" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetMarker -win $_nWave2 353050000.000000
wvShowDeltaFreq -win $_nWave2 -freq
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "462"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "462"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 720921237.693390 -snap {("G3" 51)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 1278481012.658228 -snap {("G3" 47)}
wvSetMarker -win $_nWave2 1288710000.000000
wvSetWindowTimeUnit -win $_nWave2 1.000000 ms
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 52 )} 
wvZoom -win $_nWave2 1.143530 1.530626
wvZoom -win $_nWave2 1.281273 1.303323
wvZoom -win $_nWave2 1.288546 1.289259
wvSetCursor -win $_nWave2 1.288804 -snap {("G3" 52)}
wvSelectSignal -win $_nWave2 {( "G3" 53 )} 
wvSetSearchMode -win $_nWave2 -value "80000200" -case off -skipGlitch off -X2Y \
           off
wvSelectSignal -win $_nWave2 {( "G3" 53 )} 
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 15.625879 109.381153
wvZoom -win $_nWave2 0.197796 5.867946
wvSelectSignal -win $_nWave2 {( "G3" 54 )} 
wvSelectSignal -win $_nWave2 {( "G3" 53 )} 
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSetSearchMode -win $_nWave2 -value 80000100
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvZoom -win $_nWave2 0.303046 0.554255
wvZoom -win $_nWave2 0.349684 0.355867
wvZoom -win $_nWave2 0.351675 0.352710
wvSetSearchMode -win $_nWave2 -value 80000200
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 106.540084 -snap {("G3" 50)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 0.955309 1.669128
wvZoom -win $_nWave2 1.268546 1.343342
wvZoom -win $_nWave2 1.284063 1.289323
wvZoom -win $_nWave2 1.285457 1.285790
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.285538 1.285666
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.257611 1.337163
wvZoom -win $_nWave2 1.282674 1.292744
wvZoom -win $_nWave2 1.285273 1.286031
wvZoom -win $_nWave2 1.285528 1.285611
wvSetCursor -win $_nWave2 1.285570 -snap {("G3" 53)}
wvSetMarker -win $_nWave2 1.285570
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.286759 1.288201
wvZoom -win $_nWave2 1.287306 1.287507
wvSelectSignal -win $_nWave2 {( "G3" 47 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 49 )} 
wvZoom -win $_nWave2 1.289686 1.291749
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 1.555099 -snap {("G3" 47)}
wvSetCursor -win $_nWave2 1.480835 -snap {("G3" 47)}
wvZoom -win $_nWave2 1.586290 1.716996
wvSetCursor -win $_nWave2 1.639418 -snap {("G3" 47)}
wvZoom -win $_nWave2 1.634179 1.648886
wvZoom -win $_nWave2 1.638544 1.641801
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.586801 1.697063
wvZoom -win $_nWave2 1.636969 1.647747
wvZoom -win $_nWave2 1.639743 1.640304
wvZoom -win $_nWave2 1.639870 1.639964
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 1.796976 -snap {("G3" 47)}
wvSetCursor -win $_nWave2 1.725949 -snap {("G3" 47)}
wvSetCursor -win $_nWave2 1.807630 -snap {("G3" 47)}
wvSetCursor -win $_nWave2 1.889311 -snap {("G3" 47)}
wvSetCursor -win $_nWave2 1.548383 -snap {("G3" 47)}
wvSetCursor -win $_nWave2 1.495113 -snap {("G3" 47)}
wvSetCursor -win $_nWave2 1.381470 -snap {("G3" 47)}
wvZoom -win $_nWave2 1.147082 1.914170
wvZoom -win $_nWave2 1.364477 1.396304
wvZoom -win $_nWave2 1.376877 1.379317
wvZoom -win $_nWave2 1.377500 1.377838
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1.523523 1.669128
wvZoom -win $_nWave2 1.551067 1.554651
wvZoom -win $_nWave2 1.551854 1.552161
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1.676231 1.800527
wvZoom -win $_nWave2 1.721771 1.729201
wvZoom -win $_nWave2 1.725883 1.726594
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1.537729 1.899965
wvZoom -win $_nWave2 1.635038 1.648539
wvZoom -win $_nWave2 1.639472 1.641836
wvZoom -win $_nWave2 1.639790 1.640092
wvZoom -win $_nWave2 1.639868 1.639941
wvSelectSignal -win $_nWave2 {( "G3" 48 )} 
wvSetPosition -win $_nWave2 {("G3" 48)}
wvSetPosition -win $_nWave2 {("G3" 55)}
wvSetPosition -win $_nWave2 {("G3" 42)}
wvSetPosition -win $_nWave2 {("G3" 41)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.reg_bus_addr\[31:0\]" -win \
           $_nTrace1
wvSetPosition -win $_nWave2 {("G3" 55)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAction -pos 49 17 8 -win $_nTrace1 -name "reg_bus_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 204 10 6 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAction -pos 169 12 2 -win $_nTrace1 -name "sum" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAction -pos 76 15 5 -win $_nTrace1 -name "hazard_rs1" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_ex_vld" -win $_nTrace1
srcAction -pos 281 6 8 -win $_nTrace1 -name "rs1_ex_vld" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en_d" -win $_nTrace1
srcAction -pos 278 12 11 -win $_nTrace1 -name "pc_jump_en_d" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAction -pos 274 5 6 -win $_nTrace1 -name "pc_jump_en" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAction -pos 152 31 6 -win $_nTrace1 -name "btype_bran_take" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b_type_funct3_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 241 7 3 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAction -pos 78 10 5 -win $_nTrace1 -name "load_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7\]" -win $_nTrace1
srcAction -pos 61 25 6 -win $_nTrace1 -name "dram_dout\[7\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAction -pos 207 14 8 -win $_nTrace1 -name "dram_dout_to_dbus" -ctrlKey off
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.639715 1.639943
wvSetCursor -win $_nWave2 1.639831 -snap {("G3" 68)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.639549 1.640079
srcHBSelect "tb" -win $_nTrace1
srcHBSelect "tb" -win $_nTrace1
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "tb.u_fpga_top.u_starsea_core.u_regs.regs\[1\]" \
          -line 31 -pos 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ra" -win $_nTrace1
srcSelect -signal "sp" -win $_nTrace1
srcSelect -signal "gp" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "tp" -win $_nTrace1
srcSelect -signal "t0" -win $_nTrace1
srcSelect -signal "t1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "t2" -win $_nTrace1
srcSelect -signal "s0_fp" -win $_nTrace1
srcSelect -signal "s1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a0" -win $_nTrace1
srcSelect -signal "a1" -win $_nTrace1
srcSelect -signal "a2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 1.068952 2.120148
wvZoom -win $_nWave2 1.613031 1.707653
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "a3" -win $_nTrace1
srcSelect -signal "a4" -win $_nTrace1
srcSelect -signal "a5" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 0.912693 1.047644
wvZoom -win $_nWave2 0.955874 0.974000
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.944655 1.111568
wvZoom -win $_nWave2 0.980104 0.996302
wvZoom -win $_nWave2 0.984478 0.985663
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1.278481 1.367264
wvSetCursor -win $_nWave2 1.286473 -snap {("G3" 88)}
wvZoom -win $_nWave2 1.285349 1.289844
wvZoom -win $_nWave2 1.286658 1.287069
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 1.286750 -snap {("G3" 87)}
wvZoomAll -win $_nWave2
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 1.012131 1.228762
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 0.877180 1.505767
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 0.950117 1.058860
wvZoom -win $_nWave2 1.274105 1.297735
wvZoom -win $_nWave2 1.284890 1.289210
wvSetCursor -win $_nWave2 1.286728 -snap {("G3" 88)}
wvSetMarker -win $_nWave2 1.286790
wvSetCursor -win $_nWave2 1.286746 -snap {("G3" 88)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "a6" -win $_nTrace1
srcSelect -signal "s10" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a7" -win $_nTrace1
srcSelect -signal "s2" -win $_nTrace1
srcSelect -signal "s3" -win $_nTrace1
srcSelect -signal "s4" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "s5" -win $_nTrace1
srcSelect -signal "s6" -win $_nTrace1
srcSelect -signal "s7" -win $_nTrace1
srcSelect -signal "s8" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "s9" -win $_nTrace1
srcSelect -signal "s10" -win $_nTrace1
srcSelect -signal "s11" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "t3" -win $_nTrace1
srcSelect -signal "t4" -win $_nTrace1
srcSelect -signal "t5" -win $_nTrace1
srcSelect -signal "t6" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 89 )} 
wvSelectSignal -win $_nWave2 {( "G3" 89 90 91 92 93 94 95 96 97 98 99 100 101 \
           102 103 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 88)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.942480 1.409166
wvZoom -win $_nWave2 1.232928 1.309725
wvZoom -win $_nWave2 1.280777 1.291687
wvZoom -win $_nWave2 1.286217 1.287390
wvZoom -win $_nWave2 1.286649 1.286977
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_id" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_id" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcSearchString "load_ex" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 93 )} 
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 87 )} 
wvSelectSignal -win $_nWave2 {( "G3" 88 )} 
wvSetPosition -win $_nWave2 {("G3" 89)}
wvSelectSignal -win $_nWave2 {( "G3" 89 )} 
wvScrollDown -win $_nWave2 0
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 89)}
wvSelectSignal -win $_nWave2 {( "G3" 88 )} 
wvSetPosition -win $_nWave2 {("G3" 88)}
wvSetPosition -win $_nWave2 {("G3" 89)}
srcTraceConnectivity "tb.a5\[31:0\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "tb.u_fpga_top.u_starsea_core.u_regs.regs\[15\]" \
          -line 45 -pos 1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "tb.u_fpga_top.u_starsea_core.u_regs.regs\[15\]" \
          -line 45 -pos 1
srcAction -pos 44 11 4 -win $_nTrace1 -name \
          "tb.u_fpga_top.u_starsea_core.u_regs.regs\[15\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 34 5 1 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 1.286732 -snap {("G3" 90)}
wvSetMarker -win $_nWave2 1.286750
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAction -pos 78 10 3 -win $_nTrace1 -name "load_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7\]" -win $_nTrace1
srcAction -pos 61 25 8 -win $_nTrace1 -name "dram_dout\[7\]" -ctrlKey off
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 95 )} 
wvSetPosition -win $_nWave2 {("G3" 95)}
wvSetPosition -win $_nWave2 {("G3" 94)}
wvSetPosition -win $_nWave2 {("G3" 93)}
wvSetPosition -win $_nWave2 {("G3" 92)}
wvSetPosition -win $_nWave2 {("G3" 91)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 91)}
wvSetPosition -win $_nWave2 {("G3" 92)}
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAction -pos 207 14 5 -win $_nTrace1 -name "dram_dout_to_dbus" -ctrlKey off
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 7 9 7 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "462"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
wvSetSearchMode -win $_nWave2 -value "40000fac" -case off -skipGlitch off -X2Y \
           off
wvSelectSignal -win $_nWave2 {( "G3" 95 )} 
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSetCursor -win $_nWave2 1.286712 -snap {("G3" 94)}
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 1.286550 -snap {("G3" 89)}
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 89 )} 
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "iram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAction -pos 5 3 5 -win $_nTrace1 -name "dram_we" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAction -pos 170 5 5 -win $_nTrace1 -name "store_ex" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAction -pos 170 5 3 -win $_nTrace1 -name "store_ex" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {285 285 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAction -pos 311 4 3 -win $_nTrace1 -name "store_ex" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "s_type" -win $_nTrace1
srcAction -pos 120 7 4 -win $_nTrace1 -name "s_type" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
wvSetCursor -win $_nWave2 1.286570 -snap {("G3" 101)}
wvSetMarker -win $_nWave2 1.286590
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
wvSetCursor -win $_nWave2 1.286750 -snap {("G3" 92)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {193 193 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 91 )} 
wvSetCursor -win $_nWave2 1.286684 -snap {("G3" 92)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 92 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetMarker -win $_nWave2 1.286730
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 107 )} 
wvSetCursor -win $_nWave2 1.286711 -snap {("G3" 108)}
wvZoom -win $_nWave2 1.286658 1.286865
wvSelectSignal -win $_nWave2 {( "G3" 102 )} 
wvSelectSignal -win $_nWave2 {( "G3" 101 )} 
wvSetPosition -win $_nWave2 {("G3" 101)}
wvSetPosition -win $_nWave2 {("G3" 100)}
wvSetPosition -win $_nWave2 {("G3" 105)}
wvSetPosition -win $_nWave2 {("G3" 89)}
wvSetPosition -win $_nWave2 {("G3" 105)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.u_alu.sum\[31:0\]" -win \
           $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {83 85 1 1 1 1} -backward
wvSelectSignal -win $_nWave2 {( "G3" 88 )} 
wvSetMarker -win $_nWave2 1.286750
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 1.286731 -snap {("G3" 88)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "imm_d" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "imm_d" -win $_nTrace1
srcAction -pos 76 39 3 -win $_nTrace1 -name "imm_d" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "imm" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "imm" -win $_nTrace1
srcAction -pos 213 5 1 -win $_nTrace1 -name "imm" -ctrlKey off
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "tb.u_fpga_top.u_starsea_core.u_regs.regs\[8\]" \
          -line 38 -pos 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.191772 0.781294
wvZoom -win $_nWave2 0.003731 0.036482
wvZoom -win $_nWave2 0.003777 0.007278
wvZoom -win $_nWave2 0.000165 0.000955
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 106 )} 
wvSelectAll -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "s0_fp" -win $_nTrace1
srcSelect -signal "a5" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 0.000270 -snap {("G3" 4)}
wvZoom -win $_nWave2 0.000195 0.000554
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 7 9 4 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 199 4 6 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 0.000291 -snap {("G3" 5)}
wvSetMarker -win $_nWave2 0.000330
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAction -pos 169 12 0 -win $_nTrace1 -name "sum" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 76 22 3 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAction -pos 78 6 9 -win $_nTrace1 -name "dram_dout_wb" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_as" -win $_nTrace1
srcAction -pos 202 6 6 -win $_nTrace1 -name "dram_as" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 0.000310 -snap {("G3" 7)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 11 )} 
wvSetPosition -win $_nWave2 {("G3" 10)}
wvSetPosition -win $_nWave2 {("G3" 9)}
wvSetPosition -win $_nWave2 {("G3" 8)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 8)}
wvSetPosition -win $_nWave2 {("G3" 9)}
wvSetPosition -win $_nWave2 {("G3" 10)}
wvSetPosition -win $_nWave2 {("G3" 9)}
wvSetPosition -win $_nWave2 {("G3" 8)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 8)}
wvSetPosition -win $_nWave2 {("G3" 9)}
wvSetPosition -win $_nWave2 {("G3" 10)}
wvSetPosition -win $_nWave2 {("G3" 11)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 11)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.338662 0.366582
wvZoom -win $_nWave2 0.352288 0.354428
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.364927 0.374270
wvZoom -win $_nWave2 0.366142 0.371911
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.344480 1.662025
wvZoom -win $_nWave2 0.873536 1.044020
wvZoom -win $_nWave2 0.953024 1.013328
wvZoom -win $_nWave2 0.985763 0.989961
wvZoom -win $_nWave2 1.040202 1.041501
wvZoom -win $_nWave2 1.040522 1.040873
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.949010 0.977377
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1.825387 2.045570
wvZoom -win $_nWave2 1.897387 1.915194
wvZoom -win $_nWave2 1.900080 1.903160
wvZoom -win $_nWave2 1.900530 1.901271
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4.204782 4.424965
wvZoom -win $_nWave2 4.245815 4.271518
wvZoom -win $_nWave2 4.253135 4.257528
wvZoom -win $_nWave2 4.254006 4.255276
wvZoom -win $_nWave2 4.254220 4.254718
wvSetCursor -win $_nWave2 4.254490 -snap {("G3" 6)}
wvSetMarker -win $_nWave2 4.254510
wvZoom -win $_nWave2 4.254376 4.254658
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSetCursor -win $_nWave2 4.254429 -snap {("G3" 5)}
wvSetMarker -win $_nWave2 4.254450
wvSetCursor -win $_nWave2 4.254450 -snap {("G3" 10)}
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 4.254432 -snap {("G3" 5)}
wvSetMarker -win $_nWave2 4.254450
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 4.254331 -snap {("G3" 13)}
wvSetMarker -win $_nWave2 4.254330
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 4.253836 4.254886
wvZoom -win $_nWave2 4.254277 4.254463
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAction -pos 4 9 2 -win $_nTrace1 -name "dram_wdat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_wdat\[7:0\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_wdat\[7:0\]" -win $_nTrace1
srcAction -pos 89 23 1 -win $_nTrace1 -name "store_wdat\[7:0\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs2_dat_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 4.254309 -snap {("G3" 15)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs2_dat_ex" -win $_nTrace1
srcAction -pos 160 14 3 -win $_nTrace1 -name "rs2_dat_ex" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcBackwardHistory -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 4.254127 4.254458
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {31 39 5 1 1 1} -backward
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {39 62 7 1 1 1}
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 0.809705 1.480907
wvZoom -win $_nWave2 0.940452 1.024943
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.001711 1.229870
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.399122 1.794470
wvZoom -win $_nWave2 1.587343 1.678257
wvZoom -win $_nWave2 1.624041 1.654985
wvZoom -win $_nWave2 1.634595 1.643909
wvSetCursor -win $_nWave2 1.639671 -snap {("G3" 38)}
wvSetMarker -win $_nWave2 1.639630
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1.189698 1.409880
wvZoom -win $_nWave2 1.281828 1.300563
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomAll -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 1.559037 1.779219
wvZoom -win $_nWave2 1.636612 1.645902
wvZoom -win $_nWave2 1.638826 1.641792
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 1.639289 1.640777
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 1.639612 -snap {("G3" 11)}
wvSetMarker -win $_nWave2 1.639610
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 1.639416 1.639902
wvSelectSignal -win $_nWave2 {( "G3" 12 )} 
wvSetSearchMode -win $_nWave2 -value "764" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave2 {( "G3" 12 )} 
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSetMarker -win $_nWave2 1.286750
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.286093 1.289245
wvZoom -win $_nWave2 1.286554 1.287507
wvZoom -win $_nWave2 1.286666 1.286995
wvSelectSignal -win $_nWave2 {( "G3" 16 )} 
wvScrollDown -win $_nWave2 51
wvSelectSignal -win $_nWave2 {( "G3" 16 17 18 19 20 21 22 23 24 25 26 27 28 29 \
           30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 \
           52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 \
           74 75 76 77 78 79 80 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 15)}
wvSelectSignal -win $_nWave2 {( "G3" 13 )} 
wvSelectSignal -win $_nWave2 {( "G3" 14 )} 
wvSetPosition -win $_nWave2 {("G3" 14)}
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSetCursor -win $_nWave2 1.286690 -snap {("G3" 5)}
wvSetCursor -win $_nWave2 1.286712 -snap {("G3" 10)}
wvSelectSignal -win $_nWave2 {( "G3" 10 )} 
wvSetMarker -win $_nWave2 1.286730
wvSelectSignal -win $_nWave2 {( "G3" 12 )} 
srcDeselectAll -win $_nTrace1
wvSetPosition -win $_nWave2 {("G3" 12)}
wvSetPosition -win $_nWave2 {("G3" 14)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.u_dram.dram_addr\[31:0\]" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 199 4 3 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAction -pos 169 12 3 -win $_nTrace1 -name "sum" -ctrlKey off
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvSelectSignal -win $_nWave2 {( "G3" 12 )} 
wvSetSearchMode -win $_nWave2 -value "fac" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave2 {( "G3" 12 )} 
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAction -pos 4 9 5 -win $_nTrace1 -name "dram_wdat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_wdat\[7:0\]" -win $_nTrace1
srcAction -pos 89 23 4 -win $_nTrace1 -name "store_wdat\[7:0\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs2_dat_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs2_dat_ex" -win $_nTrace1
srcAction -pos 160 14 5 -win $_nTrace1 -name "rs2_dat_ex" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs2" -win $_nTrace1
srcAction -pos 37 6 5 -win $_nTrace1 -name "regs\[rs2\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs2" -win $_nTrace1
srcAction -pos 156 22 1 -win $_nTrace1 -name "rs2" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "462"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 1.286571 -snap {("G3" 7)}
wvSetMarker -win $_nWave2 1.286590
wvSelectSignal -win $_nWave2 {( "G3" 7 )} 
wvSelectSignal -win $_nWave2 {( "G3" 17 )} 
wvSelectSignal -win $_nWave2 {( "G3" 16 )} 
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "462"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.286500 1.286859
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "462"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "462"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "sp" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 0.277278 0.446956
wvZoom -win $_nWave2 0.335389 0.370112
wvZoom -win $_nWave2 0.351871 0.365619
wvZoom -win $_nWave2 0.354800 0.358242
wvZoom -win $_nWave2 0.355585 0.356429
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.197095 1.416075
wvZoom -win $_nWave2 1.281638 1.307817
wvZoom -win $_nWave2 1.284547 1.290088
wvZoom -win $_nWave2 1.285186 1.287660
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "462"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 11 )} 
wvZoom -win $_nWave2 1.286336 1.286957
wvZoom -win $_nWave2 1.286523 1.286732
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 13 )} 
wvScrollDown -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 4
wvScrollDown -win $_nWave2 4
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout" -win $_nTrace1
srcAction -pos 8 10 7 -win $_nTrace1 -name "dram_dout" -ctrlKey off
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {193 193 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_as" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 1.285936 1.287104
wvSelectSignal -win $_nWave2 {( "G3" 19 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 1.286658 1.286861
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_dram" -win $_nTrace1
srcAction -pos 192 2 4 -win $_nTrace1 -name "u_dram" -ctrlKey off
wvSetCursor -win $_nWave2 1.286698 -snap {("G3" 20)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "462"
verdiWindowResize -win $_Verdi_1 "0" "25" "1914" "789"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "789"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1.395675 1.914170
wvZoom -win $_nWave2 1.537149 1.550640
wvZoom -win $_nWave2 1.540726 1.541675
wvSelectSignal -win $_nWave2 {( "G3" 20 )} 
wvZoom -win $_nWave2 1.540769 1.541075
wvSetCursor -win $_nWave2 1.540872 -snap {("G3" 22)}
wvSetMarker -win $_nWave2 1.540890
wvSelectSignal -win $_nWave2 {( "G3" 22 )} 
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 20 )} 
wvScrollDown -win $_nWave2 1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.234388 0.443917
wvZoom -win $_nWave2 0.333701 0.374958
wvZoom -win $_nWave2 0.349803 0.355055
wvZoom -win $_nWave2 0.351365 0.352898
wvZoom -win $_nWave2 0.351624 0.352022
wvSetCursor -win $_nWave2 0.351713 -snap {("G3" 19)}
wvScrollUp -win $_nWave2 1
wvSetPosition -win $_nWave2 {("G3" 19)}
wvSetPosition -win $_nWave2 {("G3" 18)}
wvSetPosition -win $_nWave2 {("G3" 22)}
wvSetPosition -win $_nWave2 {("G3" 9)}
wvSetPosition -win $_nWave2 {("G3" 8)}
wvSetPosition -win $_nWave2 {("G3" 7)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.dram_as" -win $_nTrace1
wvSetPosition -win $_nWave2 {("G3" 22)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1.885759 2.354536
wvZoom -win $_nWave2 2.067732 2.093445
wvZoom -win $_nWave2 2.075109 2.077876
wvZoom -win $_nWave2 2.075750 2.076043
wvSelectSignal -win $_nWave2 {( "G3" 19 )} 
wvSelectSignal -win $_nWave2 {( "G3" 22 )} 
wvSetCursor -win $_nWave2 2.075767 -snap {("G3" 19)}
wvSetMarker -win $_nWave2 2.075810
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 199 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 199 4 4 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1.818284 2.017159
wvZoom -win $_nWave2 1.893946 1.911848
wvZoom -win $_nWave2 1.899762 1.901550
wvZoom -win $_nWave2 1.900196 1.900651
wvSelectSignal -win $_nWave2 {( "G3" 20 )} 
wvSetPosition -win $_nWave2 {("G3" 20)}
wvSetPosition -win $_nWave2 {("G3" 19)}
wvSetPosition -win $_nWave2 {("G3" 28)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.dram_dout_to_dbus\[31:0\]" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAction -pos 207 14 9 -win $_nTrace1 -name "dram_dout_to_dbus" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 7 9 7 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rd" -win $_nTrace1
srcAction -pos 24 3 9 -win $_nTrace1 -name "reg_bus_rd" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAction -pos 206 10 7 -win $_nTrace1 -name "dram_dout_wb" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_as" -win $_nTrace1
srcAction -pos 202 6 4 -win $_nTrace1 -name "dram_as" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 204 10 4 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_as" -win $_nTrace1
wvSetCursor -win $_nWave2 1.900299 -snap {("G3" 22)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.010654 0.202426
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 0.001888 0.013756
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 0.001168 0.003146
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvZoom -win $_nWave2 0.001493 0.001860
wvZoom -win $_nWave2 0.001615 0.001768
wvSetCursor -win $_nWave2 0.001648 -snap {("G3" 4)}
wvSetMarker -win $_nWave2 0.001670
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 0.001708 -snap {("G3" 11)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 0.330274 0.507841
wvZoom -win $_nWave2 0.339764 0.348131
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.799051 1.218108
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomAll -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 1.722398 2.326125
wvZoom -win $_nWave2 1.876514 1.916847
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1.839592 2.279958
wvZoom -win $_nWave2 1.938380 1.993194
wvZoom -win $_nWave2 1.955958 1.969218
wvZoom -win $_nWave2 1.962895 1.964434
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 2.042018 2.187623
wvZoom -win $_nWave2 2.074170 2.081440
wvZoom -win $_nWave2 2.075561 2.077176
wvZoom -win $_nWave2 2.075666 2.076074
wvZoom -win $_nWave2 2.075744 2.075919
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 30 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvSetCursor -win $_nWave2 1.303340 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 1.381470 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 1.445394 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 1.534177 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 1.637166 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 1.729501 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 1.818284 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 1.907068 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 1.995851 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 2.077532 -snap {("G3" 29)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 1.012131 -snap {("G3" 25)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 0.759986 -snap {("G3" 31)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 1.282032 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 1.399226 -snap {("G3" 29)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 1.459599 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 1.573242 -snap {("G3" 29)}
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 29 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 1.654923 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 1.722398 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 1.804079 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 1.899965 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 1.988748 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 2.073980 -snap {("G3" 29)}
wvSetCursor -win $_nWave2 2.145007 -snap {("G3" 29)}
wvZoom -win $_nWave2 2.013608 2.127250
wvZoom -win $_nWave2 2.073386 2.079619
wvZoom -win $_nWave2 2.075420 2.076402
wvSetCursor -win $_nWave2 2.075751 -snap {("G3" 27)}
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4.616737 4.794304
wvZoom -win $_nWave2 4.774324 4.782191
wvSetCursor -win $_nWave2 4.776648 -snap {("G3" 29)}
wvZoom -win $_nWave2 4.776416 4.778025
wvZoom -win $_nWave2 4.776600 4.776882
wvZoomAll -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 4.844023 5.042897
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 4.948635 4.956327
wvZoom -win $_nWave2 4.950820 4.952443
srcDeselectAll -win $_nTrace1
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 4.606083 -snap {("G3" 27)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 29 )} 
wvSetCursor -win $_nWave2 0.241491 -snap {("G3" 29)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetWindowTimeUnit -win $_nWave2 1.000000 s
wvShowDeltaFreq -win $_nWave2 -delta
wvSetCursor -win $_nWave2 0.471912 -snap {("G3" 17)}
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 0.001329 -snap {("G3" 34)}
wvSetCursor -win $_nWave2 0.005023 -snap {("G3" 33)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 0.424129 0.446783
wvZoom -win $_nWave2 0.442386 0.444282
wvZoom -win $_nWave2 0.442855 0.442966
wvZoom -win $_nWave2 0.442890 0.442905
wvZoom -win $_nWave2 0.442895 0.442897
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 0.442896 -snap {("G3" 28)}
verdiWindowResize -win $_Verdi_1 "0" "25" "1914" "789"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 29 )} 
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 0.001296 -snap {("G3" 34)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetMarker -win $_nWave2 0.001286
verdiWindowResize -win $_Verdi_1 "0" "25" "1914" "789"
wvZoom -win $_nWave2 0.001286 0.001360
wvZoom -win $_nWave2 0.001306 0.001311
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.001209 0.001466
wvZoom -win $_nWave2 0.001280 0.001295
wvZoom -win $_nWave2 0.001288 0.001289
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 20 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 19 )} 
wvSetWindowTimeUnit -win $_nWave2 1.000000 ms
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 1.288131 -snap {("G3" 20)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.281901 1.287732
wvZoom -win $_nWave2 1.284722 1.285978
wvZoom -win $_nWave2 1.285491 1.285644
wvSelectSignal -win $_nWave2 {( "G3" 20 )} 
wvSelectSignal -win $_nWave2 {( "G3" 21 )} 
wvSelectSignal -win $_nWave2 {( "G3" 22 )} 
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {193 193 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 200 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 1.285571 -snap {("G3" 35)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.855872 2.592475
wvZoom -win $_nWave2 1.219802 1.473819
wvZoom -win $_nWave2 1.276071 1.317336
wvZoom -win $_nWave2 1.284545 1.293570
wvZoom -win $_nWave2 1.287014 1.288327
wvZoom -win $_nWave2 1.287306 1.287656
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.532700 1.093812
wvZoom -win $_nWave2 0.630954 0.701192
wvZoom -win $_nWave2 0.642068 0.650514
wvZoom -win $_nWave2 0.643517 0.644740
wvZoom -win $_nWave2 0.643692 0.643908
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_dram" -win $_nTrace1
srcAction -pos 192 2 4 -win $_nTrace1 -name "u_dram" -ctrlKey off
srcDeselectAll -win $_nTrace1
debReload
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.216632 0.511392
wvZoom -win $_nWave2 0.237360 0.278403
wvZoom -win $_nWave2 0.243133 0.245846
wvSelectSignal -win $_nWave2 {( "G3" 20 )} 
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 20 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 37)}
wvSetPosition -win $_nWave2 {("G3" 36)}
wvZoom -win $_nWave2 0.799051 1.079606
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.871261 1.111174
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 31 )} 
wvZoom -win $_nWave2 0.227286 0.454571
wvZoom -win $_nWave2 0.242630 0.277634
wvZoom -win $_nWave2 0.247701 0.250507
wvZoom -win $_nWave2 0.248149 0.248602
wvZoom -win $_nWave2 0.248172 0.248355
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.003040 0.004378
wvSetCursor -win $_nWave2 0.003609 -snap {("G3" 31)}
wvSetMarker -win $_nWave2 0.003630
wvSelectSignal -win $_nWave2 {( "G3" 30 )} 
wvSelectSignal -win $_nWave2 {( "G3" 31 )} 
wvSetPosition -win $_nWave2 {("G3" 31)}
wvSetPosition -win $_nWave2 {("G3" 36)}
wvSetPosition -win $_nWave2 {("G3" 20)}
wvSetPosition -win $_nWave2 {("G3" 15)}
wvSetPosition -win $_nWave2 {("G3" 36)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.u_dram.dram_dout\[31:0\]" -win \
           $_nTrace1
nsMsgSwitchTab -tab trace
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 0.003481 0.003907
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 32 )} 
wvZoom -win $_nWave2 0.003540 0.003784
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcAction -pos 32 5 9 -win $_nTrace1 -name "dram\[dram_addr>>2\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_dram" -win $_nTrace1
srcAction -pos 192 2 4 -win $_nTrace1 -name "u_dram" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_rd" -win $_nTrace1
srcSearchString "dram_rd" -win $_nTrace1 -next -case
wvZoom -win $_nWave2 0.003173 0.004460
wvZoom -win $_nWave2 0.003554 0.003787
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_rd" -win $_nTrace1
srcAction -pos 31 3 6 -win $_nTrace1 -name "dram_rd" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {193 193 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_as" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAction -pos 201 4 8 -win $_nTrace1 -name "dram_dout_to_dbus" -ctrlKey off
srcBackwardHistory -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1914" "789"
verdiWindowResize -win $_Verdi_1 "0" "25" "1910" "727"
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we_byte" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 199 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.003319 0.004394
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.884283 1.278481
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.873629 1.640717
wvZoom -win $_nWave2 1.219412 1.341866
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 1.282189 1.302942
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.251234 1.276687
wvZoom -win $_nWave2 1.287531 1.292131
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 1.287783 1.288809
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 1.288052 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 1.288034 -snap {("G3" 6)}
wvSetMarker -win $_nWave2 1.288030
wvSetMarker -win $_nWave2 1.288050
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.281742 1.297019
wvZoom -win $_nWave2 1.285406 1.292496
wvZoom -win $_nWave2 1.287141 1.289176
wvZoom -win $_nWave2 1.287566 1.288663
wvZoom -win $_nWave2 1.287852 1.288354
wvZoom -win $_nWave2 1.287946 1.288187
wvSelectSignal -win $_nWave2 {( "G3" 17 )} 
wvScrollDown -win $_nWave2 12
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 17 18 19 20 21 22 23 24 25 26 27 28 29 30 \
           31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 20)}
wvSelectSignal -win $_nWave2 {( "G3" 15 )} 
wvSelectSignal -win $_nWave2 {( "G3" 16 )} 
wvSelectSignal -win $_nWave2 {( "G3" 16 17 18 19 20 21 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 15)}
wvSelectSignal -win $_nWave2 {( "G3" 8 )} 
wvSelectSignal -win $_nWave2 {( "G3" 9 )} 
wvSelectSignal -win $_nWave2 {( "G3" 9 10 11 12 13 14 15 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 8)}
wvSelectSignal -win $_nWave2 {( "G3" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G3" 8)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.u_alu.a\[31:0\]" -win \
           $_nTrace1
nsMsgSwitchTab -tab trace
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 76 22 3 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAction -pos 78 10 2 -win $_nTrace1 -name "load_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7:0\]" -win $_nTrace1
srcAction -pos 61 29 0 -win $_nTrace1 -name "dram_dout\[7:0\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAction -pos 208 14 6 -win $_nTrace1 -name "dram_dout_to_dbus" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {193 193 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAction -pos 199 5 7 -win $_nTrace1 -name "dram_addr\[31\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 22 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G3" 22)}
wvSelectSignal -win $_nWave2 {( "G3" 20 )} 
wvSelectSignal -win $_nWave2 {( "G3" 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 \
           20 )} 
wvSelectSignal -win $_nWave2 {( "G3" 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 \
           )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSetCursor -win $_nWave2 1.288011 -snap {("G3" 6)}
wvSetMarker -win $_nWave2 1.288030
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.286039 1.290442
wvZoom -win $_nWave2 1.287296 1.288692
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAction -pos 169 12 0 -win $_nTrace1 -name "sum" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAction -pos 81 12 0 -win $_nTrace1 -name "a" -ctrlKey off
wvZoom -win $_nWave2 1.287789 1.288337
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAction -pos 81 12 0 -win $_nTrace1 -name "a" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 76 22 2 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.174015 0.543354
wvZoom -win $_nWave2 0.316608 0.361542
wvZoom -win $_nWave2 0.345016 0.355507
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 0.351774 0.352563
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.142053 0.262799
wvZoom -win $_nWave2 0.146893 0.154960
wvZoom -win $_nWave2 0.149452 0.150723
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.223734 0.458122
wvZoom -win $_nWave2 0.263293 0.269722
wvZoom -win $_nWave2 0.264848 0.265829
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.298312 0.500738
wvZoom -win $_nWave2 0.342299 0.365788
wvZoom -win $_nWave2 0.351202 0.354456
wvZoom -win $_nWave2 0.352001 0.352775
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.827461 1.385021
wvZoom -win $_nWave2 0.920780 1.006649
wvZoom -win $_nWave2 0.942881 0.972833
wvZoom -win $_nWave2 0.952549 0.958068
wvZoom -win $_nWave2 1.287387 1.289191
wvZoom -win $_nWave2 1.287775 1.288346
srcBackwardHistory -win $_nTrace1
wvZoom -win $_nWave2 1.287912 1.288173
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAction -pos 78 10 5 -win $_nTrace1 -name "load_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7:0\]" -win $_nTrace1
srcAction -pos 61 29 4 -win $_nTrace1 -name "dram_dout\[7:0\]" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7:0\]" -win $_nTrace1
srcAction -pos 61 29 7 -win $_nTrace1 -name "dram_dout\[7:0\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAction -pos 208 14 4 -win $_nTrace1 -name "dram_dout_to_dbus" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.284671 1.286974
wvZoom -win $_nWave2 1.285396 1.285973
wvZoom -win $_nWave2 1.285525 1.285696
srcDeselectAll -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 1.287336 1.288413
wvSetSearchMode -win $_nWave2 -value "764" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave2 {( "G3" 18 )} 
wvSearchPrev -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 1.287651 1.288251
wvSetCursor -win $_nWave2 1.287911 -snap {("G3" 18)}
wvSetCursor -win $_nWave2 1.287896 -snap {("G3" 18)}
wvScrollUp -win $_nWave2 1
wvSetMarker -win $_nWave2 1.287910
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1.047332 2.219099
wvZoom -win $_nWave2 1.250042 1.448633
wvZoom -win $_nWave2 1.280627 1.302693
wvZoom -win $_nWave2 1.287563 1.290248
wvZoom -win $_nWave2 1.287794 1.288362
wvZoom -win $_nWave2 1.287852 1.288025
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 1.388572 -snap {("G3" 19)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcSelect -signal "reg_bus_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 22 )} 
wvSelectSignal -win $_nWave2 {( "G3" 22 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvSetCursor -win $_nWave2 1.367264 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.477356 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.562588 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.622961 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.725949 -snap {("G3" 21)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 0.759986 1.445394
wvZoom -win $_nWave2 1.239579 1.355741
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1.139979 1.662025
wvZoom -win $_nWave2 1.269940 1.328679
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 1.374367 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.431188 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.548383 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.644269 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.566139 -snap {("G3" 21)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 1.388572 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.459599 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.569691 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.662025 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.708193 -snap {("G3" 21)}
wvZoom -win $_nWave2 1.608755 1.942581
wvZoom -win $_nWave2 1.684582 1.770269
wvZoom -win $_nWave2 1.718206 1.742189
wvZoom -win $_nWave2 1.726723 1.731833
wvZoom -win $_nWave2 1.727632 1.728725
wvZoom -win $_nWave2 1.727899 1.728268
wvSetCursor -win $_nWave2 1.727941 -snap {("G3" 18)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 1.420534 2.272855
wvZoom -win $_nWave2 1.716030 1.796946
wvZoom -win $_nWave2 1.725646 1.733158
wvZoom -win $_nWave2 1.727516 1.729259
wvZoom -win $_nWave2 1.727801 1.728193
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 1.409880 -snap {("G3" 9)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 2.169866 -snap {("G3" 19)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 1.626512 1.960338
wvZoom -win $_nWave2 1.713372 1.748351
wvZoom -win $_nWave2 1.727000 1.730271
wvZoom -win $_nWave2 1.727780 1.728385
wvZoomAll -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 1.083158 3.093214
wvZoom -win $_nWave2 1.671191 1.871914
wvZoom -win $_nWave2 1.720172 1.749673
wvZoom -win $_nWave2 1.724280 1.733346
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 1.648022 1.808788
wvZoom -win $_nWave2 1.721396 1.751921
wvZoom -win $_nWave2 1.726526 1.732086
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.905591 2.208931
wvZoom -win $_nWave2 1.693828 1.811146
wvSetCursor -win $_nWave2 1.734336 -snap {("G3" 13)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 1.818284 -snap {("G3" 19)}
wvSetCursor -win $_nWave2 1.882208 -snap {("G3" 19)}
wvSetCursor -win $_nWave2 2.017159 -snap {("G3" 19)}
wvSetCursor -win $_nWave2 1.981646 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.928376 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.786322 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.899965 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 1.981646 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 2.073980 -snap {("G3" 21)}
wvSetCursor -win $_nWave2 2.176969 -snap {("G3" 21)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 1.388572 2.216034
wvZoom -win $_nWave2 1.706872 1.802303
wvZoom -win $_nWave2 1.724589 1.737206
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 1.413432 2.116596
wvZoom -win $_nWave2 1.710126 1.748696
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 1.723118 1.733751
wvZoom -win $_nWave2 1.726401 1.727859
wvZoom -win $_nWave2 1.726699 1.727036
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1.669128 2.042018
wvZoom -win $_nWave2 1.717378 1.758548
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 1.724761 1.733591
wvZoom -win $_nWave2 1.726916 1.729195
wvZoom -win $_nWave2 1.727760 1.728397
wvZoom -win $_nWave2 1.727842 1.728085
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiWindowResize -win $_Verdi_1 "0" "25" "1910" "727"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "727"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvSetCursor -win $_nWave2 1.728004 -snap {("G3" 12)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1.221660 1.541280
wvZoom -win $_nWave2 1.278076 1.314039
wvZoom -win $_nWave2 1.285031 1.289761
wvZoom -win $_nWave2 1.286288 1.287186
wvZoom -win $_nWave2 1.286367 1.286652
wvSelectSignal -win $_nWave2 {( "G3" 7 )} 
wvSetCursor -win $_nWave2 1.286454 -snap {("G3" 6)}
wvSetMarker -win $_nWave2 1.286470
wvSelectSignal -win $_nWave2 {( "G3" 10 )} 
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
wvSetCursor -win $_nWave2 1.286391 -snap {("G3" 3)}
wvSetCursor -win $_nWave2 1.286409 -snap {("G3" 5)}
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "tb.u_fpga_top.u_starsea_core.u_regs.regs\[15\]" \
          -line 45 -pos 1
srcAction -pos 44 11 1 -win $_nTrace1 -name \
          "tb.u_fpga_top.u_starsea_core.u_regs.regs\[15\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
wvSetPosition -win $_nWave2 {("G3" 7)}
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSetPosition -win $_nWave2 {("G3" 5)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_val" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_val" -win $_nTrace1
srcAction -pos 33 7 4 -win $_nTrace1 -name "rd_val" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAction -pos 76 6 10 -win $_nTrace1 -name "dram_dout_wb" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_as" -win $_nTrace1
srcAction -pos 203 6 4 -win $_nTrace1 -name "dram_as" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAction -pos 78 14 5 -win $_nTrace1 -name "alu_rd_dat" -ctrlKey off
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 7 )} 
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we_byte" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 1.286429 -snap {("G3" 12)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 13 )} 
wvExpandBus -win $_nWave2 {("G3" 13)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 11
wvScrollUp -win $_nWave2 15
wvScrollUp -win $_nWave2 26
wvScrollUp -win $_nWave2 11
wvScrollUp -win $_nWave2 31
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 784
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 2
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 5
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G3" 13 )} 
wvSelectSignal -win $_nWave2 {( "G3" 14 )} 
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 929
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 23
wvSelectSignal -win $_nWave2 {( "G3" 14 15 16 17 18 19 20 21 22 23 24 25 26 27 \
           28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 \
           50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 \
           72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 \
           94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 \
           112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 \
           129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 \
           146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 \
           163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 \
           180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 \
           197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 \
           214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 \
           231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 \
           248 249 250 251 252 253 254 255 256 257 258 259 260 261 262 263 264 \
           265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 \
           282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 \
           299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 \
           316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 \
           333 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 \
           350 351 352 353 354 355 356 357 358 359 360 361 362 363 364 365 366 \
           367 368 369 370 371 372 373 374 375 376 377 378 379 380 381 382 383 \
           384 385 386 387 388 389 390 391 392 393 394 395 396 397 398 399 400 \
           401 402 403 404 405 406 407 408 409 410 411 412 413 414 415 416 417 \
           418 419 420 421 422 423 424 425 426 427 428 429 430 431 432 433 434 \
           435 436 437 438 439 440 441 442 443 444 445 446 447 448 449 450 451 \
           452 453 454 455 456 457 458 459 460 461 462 463 464 465 466 467 468 \
           469 470 471 472 473 474 475 476 477 478 479 480 481 482 483 484 485 \
           486 487 488 489 490 491 492 493 494 495 496 497 498 499 500 501 502 \
           503 504 505 506 507 508 509 510 511 512 513 514 515 516 517 518 519 \
           520 521 522 523 524 525 526 527 528 529 530 531 532 533 534 535 536 \
           537 538 539 540 541 542 543 544 545 546 547 548 549 550 551 552 553 \
           554 555 556 557 558 559 560 561 562 563 564 565 566 567 568 569 570 \
           571 572 573 574 575 576 577 578 579 580 581 582 583 584 585 586 587 \
           588 589 590 591 592 593 594 595 596 597 598 599 600 601 602 603 604 \
           605 606 607 608 609 610 611 612 613 614 615 616 617 618 619 620 621 \
           622 623 624 625 626 627 628 629 630 631 632 633 634 635 636 637 638 \
           639 640 641 642 643 644 645 646 647 648 649 650 651 652 653 654 655 \
           656 657 658 659 660 661 662 663 664 665 666 667 668 669 670 671 672 \
           673 674 675 676 677 678 679 680 681 682 683 684 685 686 687 688 689 \
           690 691 692 693 694 695 696 697 698 699 700 701 702 703 704 705 706 \
           707 708 709 710 711 712 713 714 715 716 717 718 719 720 721 722 723 \
           724 725 726 727 728 729 730 731 732 733 734 735 736 737 738 739 740 \
           741 742 743 744 745 746 747 748 749 750 751 752 753 754 755 756 757 \
           758 759 760 761 762 763 764 765 766 767 768 769 770 771 772 773 774 \
           775 776 777 778 779 780 781 782 783 784 785 786 787 788 789 790 791 \
           792 793 794 795 796 797 798 799 800 801 802 803 804 805 806 807 808 \
           809 810 811 812 813 814 815 816 817 818 819 820 821 822 823 824 825 \
           826 827 828 829 830 831 832 833 834 835 836 837 838 839 840 841 842 \
           843 844 845 846 847 848 849 850 851 852 853 854 855 856 857 858 859 \
           860 861 862 863 864 865 866 867 868 869 870 871 872 873 874 875 876 \
           877 878 879 880 881 882 883 884 885 886 887 888 889 890 891 892 893 \
           894 895 896 897 898 899 900 901 902 903 904 905 906 907 908 909 910 \
           911 912 913 914 915 916 917 918 919 920 921 922 923 924 925 926 927 \
           928 929 930 931 932 933 934 935 936 937 938 939 940 941 942 943 944 \
           945 946 947 948 949 950 951 952 953 954 955 956 957 958 959 960 961 \
           962 963 964 965 966 967 968 969 970 971 972 973 974 975 976 977 978 \
           979 980 981 982 983 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 67)}
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 17 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 14 )} 
wvSelectSignal -win $_nWave2 {( "G3" 16 )} 
wvSelectSignal -win $_nWave2 {( "G3" 17 )} 
wvSelectSignal -win $_nWave2 {( "G3" 18 )} 
wvSelectSignal -win $_nWave2 {( "G3" 17 )} 
wvSetCursor -win $_nWave2 1.286385 -snap {("G3" 24)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 2.539205 -snap {("G3" 17)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 0.312518 0.532700
wvZoom -win $_nWave2 0.342711 0.381886
wvZoom -win $_nWave2 0.351141 0.357450
wvZoom -win $_nWave2 0.352490 0.353537
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 0.490084 -snap {("G3" 9)}
wvZoom -win $_nWave2 0.092335 0.589522
wvZoom -win $_nWave2 0.172052 0.220303
wvZoom -win $_nWave2 0.177787 0.181282
wvZoom -win $_nWave2 0.178045 0.179171
wvSelectSignal -win $_nWave2 {( "G3" 13 )} 
wvSetPosition -win $_nWave2 {("G3" 13)}
wvCollapseBus -win $_nWave2 {("G3" 13)}
wvSetPosition -win $_nWave2 {("G3" 13)}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 13)}
wvSetPosition -win $_nWave2 {("G3" 12)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 0.145605 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.277004 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.337377 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.426160 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.536252 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.610830 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.710267 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.813256 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.870077 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.944655 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 1.523523 -snap {("G3" 29)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 0.024859 1.079606
wvSetCursor -win $_nWave2 0.093841 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.180624 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.265181 -snap {("G3" 28)}
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 0.617932 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 0.021308 0.898488
wvSetCursor -win $_nWave2 0.001851 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.012954 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.094380 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.185676 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.269569 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.356547 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.450927 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.536671 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.357781 -snap {("G3" 28)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 0.276355 -snap {("G3" 26)}
wvSetCursor -win $_nWave2 0.273271 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.357164 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.445376 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.536671 -snap {("G3" 28)}
wvSetCursor -win $_nWave2 0.626117 -snap {("G3" 28)}
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcSelect -signal "reg_bus_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 14 )} 
wvSelectSignal -win $_nWave2 {( "G3" 13 )} 
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 0.000617 -snap {("G3" 13)}
wvZoom -win $_nWave2 0.002467 0.083893
wvSetCursor -win $_nWave2 0.010422 -snap {("G3" 13)}
wvZoom -win $_nWave2 0.009620 0.015060
wvZoom -win $_nWave2 0.010408 0.010955
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000714 0.002561
wvZoom -win $_nWave2 0.000975 0.001227
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000884 0.001678
wvZoom -win $_nWave2 0.000975 0.001151
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000321 0.000807
wvZoom -win $_nWave2 0.000404 0.000553
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000874 0.001426
wvZoom -win $_nWave2 0.000976 0.001141
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 16 )} 
wvSelectSignal -win $_nWave2 {( "G3" 16 )} 
wvSetRadix -win $_nWave2 -format UDec
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 0.001011 -snap {("G3" 34)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 0.010698 -snap {("G3" 34)}
wvSetCursor -win $_nWave2 0.097586 -snap {("G3" 34)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 35 )} 
wvSelectSignal -win $_nWave2 {( "G3" 35 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvSetCursor -win $_nWave2 0.195884 -snap {("G3" 34)}
wvSetCursor -win $_nWave2 0.074170 -snap {("G3" 34)}
wvSetCursor -win $_nWave2 0.178768 -snap {("G3" 34)}
wvSetCursor -win $_nWave2 0.268152 -snap {("G3" 34)}
wvSetCursor -win $_nWave2 0.351831 -snap {("G3" 34)}
wvSetCursor -win $_nWave2 0.424099 -snap {("G3" 34)}
wvZoom -win $_nWave2 0.410786 0.654215
wvZoom -win $_nWave2 0.440573 0.470017
wvZoom -win $_nWave2 0.445004 0.448752
wvZoom -win $_nWave2 0.445927 0.446802
wvZoom -win $_nWave2 0.446280 0.446554
wvSelectSignal -win $_nWave2 {( "G3" 35 )} 
wvSetRadix -win $_nWave2 -format Hex
wvSelectSignal -win $_nWave2 {( "G3" 35 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G3" 35 )} 
wvSetRadix -win $_nWave2 -format Hex
verdiWindowResize -win $_Verdi_1 "0" "25" "1910" "727"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
verdiWindowResize -win $_Verdi_1 "0" "25" "1910" "727"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 35 )} 
wvSelectSignal -win $_nWave2 {( "G3" 35 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 35 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvSetCursor -win $_nWave2 0.446288 -snap {("G3" 34)}
wvScrollDown -win $_nWave2 0
wvSetMarker -win $_nWave2 0.446290
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 0.368677 -snap {("G3" 34)}
wvSetCursor -win $_nWave2 0.269626 -snap {("G3" 34)}
verdiWindowResize -win $_Verdi_1 "0" "25" "1910" "727"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvSelectSignal -win $_nWave2 {( "G3" 27 )} 
wvSelectAll -win $_nWave2
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_timer" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_timer" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_ctrl" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_ctrl" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_machine" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_machine" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtvec" -win $_nTrace1
srcAction -pos 43 8 0 -win $_nTrace1 -name "mtvec" -ctrlKey off
verdiWindowResize -win $_Verdi_1 "0" "25" "1910" "727"
verdiWindowResize -win $_Verdi_1 "0" "25" "1906" "723"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_machine" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_machine" -delim "."
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1906" "723"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_machine" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_machine" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_misalign_bran_take" -win $_nTrace1
srcAction -pos 38 4 8 -win $_nTrace1 -name "jalr_misalign_bran_take" -ctrlKey off
srcBackwardHistory -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1906" "723"
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_machine" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtvec" -win $_nTrace1
srcAction -pos 52 14 2 -win $_nTrace1 -name "mtvec" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtval" -win $_nTrace1
srcAction -pos 118 9 2 -win $_nTrace1 -name "mtval" -ctrlKey off
srcSearchString "mtval" -win $_nTrace1 -next -case
srcSearchString "mtval" -win $_nTrace1 -next -case
srcSearchString "mtval" -win $_nTrace1 -next -case
srcSearchString "mtval" -win $_nTrace1 -next -case
srcSearchString "mtval" -win $_nTrace1 -next -case
srcSearchString "mtval" -win $_nTrace1 -next -case
srcSearchString "mtval" -win $_nTrace1 -next -case
srcSearchString "mtval" -win $_nTrace1 -next -case
srcSearchString "mtval" -win $_nTrace1 -next -case
srcSearchString "mtval" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtvec" -win $_nTrace1
srcAction -pos 52 14 4 -win $_nTrace1 -name "mtvec" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtvec" -win $_nTrace1
srcAction -pos 52 14 4 -win $_nTrace1 -name "mtvec" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "ecall_bran_take" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ebreak_bran_take" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtvec" -win $_nTrace1
srcAction -pos 52 14 3 -win $_nTrace1 -name "mtvec" -ctrlKey off
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1906" "723"
verdiWindowResize -win $_Verdi_1 "0" "25" "1902" "719"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcSelect -signal "ecall_bran_take" -win $_nTrace1
srcAction -pos 24 4 10 -win $_nTrace1 -name "ecall_bran_take" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "j_misalign_exception" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "j_misalign_bran_take" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_misalign_exception" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_misalign_exception" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "misalign_bran_take" -win $_nTrace1
srcTraceLoad "tb.u_fpga_top.u_starsea_core.u_machine.misalign_bran_take" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_machine" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_machine" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "trap_addr" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "trap_addr" -win $_nTrace1
srcAction -pos 27 8 5 -win $_nTrace1 -name "trap_addr" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcTraceLoad "tb.u_fpga_top.u_starsea_core.u_machine.trap_addr\[31:0\]" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "trap_addr" -win $_nTrace1
srcAction -pos 82 9 3 -win $_nTrace1 -name "trap_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtvec" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtvec" -win $_nTrace1
srcAction -pos 52 14 2 -win $_nTrace1 -name "mtvec" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvZoomAll -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 0.796920 1.704641
wvZoom -win $_nWave2 0.957144 1.001827
wvZoom -win $_nWave2 0.967953 0.971567
wvZoom -win $_nWave2 0.969092 0.969821
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_machine" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_machine" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr" -win $_nTrace1
srcAction -pos 41 2 3 -win $_nTrace1 -name "intr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "tb.u_fpga_top.u_starsea_core.intr" -line 25 \
          -pos 1
srcAddSelectedToWave -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {59 59 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_starsea_core" -win $_nTrace1
srcAction -pos 58 2 9 -win $_nTrace1 -name "u_starsea_core" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr" -win $_nTrace1
srcSearchString "intr" -win $_nTrace1 -next -case
srcSearchString "intr" -win $_nTrace1 -next -case
srcSearchString "intr" -win $_nTrace1 -next -case
srcSearchString "intr" -win $_nTrace1 -next -case
srcSearchString "intr" -win $_nTrace1 -next -case
srcSearchString "intr" -win $_nTrace1 -next -case
srcSearchString "intr" -win $_nTrace1 -next -case
srcSearchString "intr" -win $_nTrace1 -next -case
srcSearchString "intr" -win $_nTrace1 -next -case
srcSearchString "intr" -win $_nTrace1 -next -case
srcSearchString "intr" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcAction -pos 103 2 1 -win $_nTrace1 -name "intr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_misalign_exception" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "j_misalign_exception" -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4.674979 5.412236
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 4.979836 5.143671
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 4.995966 5.045739
wvZoom -win $_nWave2 5.000132 5.005172
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 23 )} 
wvSelectSignal -win $_nWave2 {( "G3" 23 24 25 26 27 28 29 30 31 32 33 34 35 36 \
           37 38 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 21)}
wvSelectSignal -win $_nWave2 {( "G3" 17 )} 
wvSelectAll -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_machine" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_machine" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 4.999575 5.001872
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtval" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtval" -win $_nTrace1
srcAction -pos 49 8 3 -win $_nTrace1 -name "mtval" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtvec" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 0.494346 -snap {("G2" 0)}
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_pc" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_pc" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 4.645148 5.344051
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 4.985261 5.017699
wvZoom -win $_nWave2 4.998583 5.003145
wvZoom -win $_nWave2 4.999882 5.000874
srcDeselectAll -win $_nTrace1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.106540 0.417637
wvZoom -win $_nWave2 0.121417 0.142419
wvZoom -win $_nWave2 0.000399 0.002924
wvZoom -win $_nWave2 0.000559 0.001145
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000074 0.000395
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 0.000172 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 0.000122 -snap {("G2" 0)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4.768734 5.318481
wvZoom -win $_nWave2 4.991416 5.025824
wvZoom -win $_nWave2 4.999184 5.001289
wvZoom -win $_nWave2 4.999894 5.000430
wvSetCursor -win $_nWave2 5.000002 -snap {("G2" 0)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcSelect -signal "reg_bus_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_tx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "tvld" -win $_nTrace1
srcSelect -signal "tdata" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 4.988223
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 12 )} 
wvSelectSignal -win $_nWave2 {( "G3" 12 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvZoom -win $_nWave2 4.785781 4.883797
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4.858228 6.042954
wvSetCursor -win $_nWave2 5.007360 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.097339 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.174821 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.266467 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.357279 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.439760 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.528073 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.622218 -snap {("G3" 11)}
wvSetCursor -win $_nWave2 5.705532 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.790512 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.622218 -snap {("G3" 11)}
wvSetCursor -win $_nWave2 5.703032 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.793011 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.877159 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.957973 -snap {("G3" 12)}
srcDeselectAll -win $_nTrace1
wvZoom -win $_nWave2 5.747189 5.920482
wvZoom -win $_nWave2 5.778874 5.824452
wvZoom -win $_nWave2 5.788265 5.794098
wvZoom -win $_nWave2 5.789553 5.790685
wvZoom -win $_nWave2 5.789735 5.789970
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSetCursor -win $_nWave2 5.789777 -snap {("G2" 0)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 5.161505 5.840789
wvZoom -win $_nWave2 5.768179 5.808783
wvZoom -win $_nWave2 5.787025 5.794163
wvZoom -win $_nWave2 5.789173 5.790278
wvSelectSignal -win $_nWave2 {( "G3" 8 )} 
srcDeselectAll -win $_nTrace1
wvSetSearchMode -win $_nWave2 -value "8067" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave2 {( "G3" 8 )} 
wvSearchNext -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSetCursor -win $_nWave2 5.619400 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.694159 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.789596 -snap {("G3" 12)}
wvZoom -win $_nWave2 5.776076 5.816636
wvZoom -win $_nWave2 5.789111 5.794274
wvSetCursor -win $_nWave2 5.790723 -snap {("G3" 11)}
wvZoom -win $_nWave2 5.789706 5.790091
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 5.790730 5.791787
wvZoom -win $_nWave2 5.791074 5.791409
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 7 )} 
wvSetSearchMode -win $_nWave2 -value "c8" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave2 {( "G3" 7 )} 
wvSearchNext -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvZoom -win $_nWave2 5.733747 5.857299
wvZoom -win $_nWave2 5.788138 5.795436
wvZoom -win $_nWave2 5.789559 5.791525
wvZoom -win $_nWave2 5.790050 5.790708
wvZoom -win $_nWave2 5.790143 5.790539
verdiWindowResize -win $_Verdi_1 "0" "25" "1902" "719"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_machine" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_machine" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "mret_ex" -win $_nTrace1
srcAction -pos 48 2 6 -win $_nTrace1 -name "mret_ex" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "mret_ex" -win $_nTrace1
srcAction -pos 48 2 6 -win $_nTrace1 -name "mret_ex" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "mret_ex" -win $_nTrace1
srcSearchString "mret_ex" -win $_nTrace1 -next -case
srcSearchString "mret_ex" -win $_nTrace1 -next -case
srcSearchString "mret_ex" -win $_nTrace1 -next -case
srcSearchString "mret_ex" -win $_nTrace1 -next -case
srcSearchString "mret_ex" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcSelect -signal "mret_bran_take" -win $_nTrace1
srcAction -pos 54 6 11 -win $_nTrace1 -name "mret_bran_take" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "mret_bran_take" -win $_nTrace1
srcAction -pos 54 6 11 -win $_nTrace1 -name "mret_bran_take" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mret_bran_take" -win $_nTrace1
srcAction -pos 54 6 7 -win $_nTrace1 -name "mret_bran_take" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mret_addr" -win $_nTrace1
srcAction -pos 54 10 0 -win $_nTrace1 -name "mret_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "mepc" -win $_nTrace1
srcAction -pos 76 5 3 -win $_nTrace1 -name "mepc" -ctrlKey off
verdiWindowResize -win $_Verdi_1 "0" "25" "1902" "719"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1902" "719"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvZoom -win $_nWave2 4.977112 5.047934
wvZoom -win $_nWave2 4.998279 5.003707
wvZoom -win $_nWave2 4.999909 5.000367
wvSetCursor -win $_nWave2 5.000002 -snap {("G3" 1)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
verdiWindowResize -win $_Verdi_1 "0" "25" "1902" "719"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 5.000010 -snap {("G3" 6)}
wvSetMarker -win $_nWave2 5.000030
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "mepc" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 7 )} 
wvSearchNext -win $_nWave2
wvZoom -win $_nWave2 5.748903 5.974768
wvZoom -win $_nWave2 5.787024 5.796871
wvZoom -win $_nWave2 5.789974 5.791255
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_machine" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_machine" -delim "."
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
wvSetPosition -win $_nWave2 {("G3" 6)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "mret_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 5.790313 -snap {("G3" 5)}
wvScrollDown -win $_nWave2 0
wvSetMarker -win $_nWave2 5.790310
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4.261603 6.051477
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 12 )} 
wvZoom -win $_nWave2 4.615316 6.051477
wvSetCursor -win $_nWave2 4.998091 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.091007 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.184933 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.276839 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.350566 -snap {("G3" 11)}
wvSetCursor -win $_nWave2 5.445502 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.537408 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.598006 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.693952 -snap {("G3" 12)}
wvSetMarker -win $_nWave2 5.702630
wvSetCursor -win $_nWave2 5.787878 -snap {("G3" 12)}
wvSetMarker -win $_nWave2 5.789790
wvZoomAll -win $_nWave2
verdiWindowResize -win $_Verdi_1 "0" "25" "1902" "719"
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1902" "719"
verdiWindowResize -win $_Verdi_1 "0" "25" "1898" "715"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcHBSelect "tb.u_fpga_top.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_tx" -delim "."
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1898" "715"
verdiWindowResize -win $_Verdi_1 "0" "25" "1898" "773"
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 5.207679 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.288650 -snap {("G3" 12)}
wvSetCursor -win $_nWave2 5.352574 -snap {("G3" 12)}
verdiWindowResize -win $_Verdi_1 "0" "25" "1898" "773"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "773"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcHBSelect "tb.u_fpga_top.u_uart_tx" -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_tx" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {72 72 24 25 1 1}
wvScrollUp -win $_nWave2 1
verdiWindowResize -win $_Verdi_1 "0" "25" "1898" "773"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_tx" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_div_cnt" -win $_nTrace1
srcAction -pos 125 5 8 -win $_nTrace1 -name "clk_div_cnt" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_div_cnt_en" -win $_nTrace1
srcAction -pos 126 5 11 -win $_nTrace1 -name "clk_div_cnt_en" -ctrlKey off
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_machine" -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_ctrl" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_ctrl" -delim "."
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_machine" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_machine" -delim "."
verdiWindowResize -win $_Verdi_1 "0" "25" "1898" "773"
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "711"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "rxd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 0.336667 1.504346
srcDeselectAll -win $_nTrace1
srcSelect -signal "cstate" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 0.004106 0.222532
wvZoom -win $_nWave2 0.002150 0.047157
srcDeselectAll -win $_nTrace1
srcSelect -signal "rxd_final" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 0.000285 0.004304
srcDeselectAll -win $_nTrace1
srcSelect -signal "rxd_final" -win $_nTrace1
srcAction -pos 182 6 6 -win $_nTrace1 -name "rxd_final" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rxd_ff" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 0.000059 0.000684
srcDeselectAll -win $_nTrace1
srcSelect -signal "rxd_ff" -win $_nTrace1
srcAction -pos 168 6 4 -win $_nTrace1 -name "rxd_ff" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rxd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G3" 11 )} 
wvSelectSignal -win $_nWave2 {( "G3" 10 )} 
wvSelectSignal -win $_nWave2 {( "G3" 11 )} 
wvSelectSignal -win $_nWave2 {( "G3" 9 )} 
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 8 )} 
wvSetCursor -win $_nWave2 0.010183 -snap {("G3" 8)}
wvSetMarker -win $_nWave2 0.027970
srcDeselectAll -win $_nTrace1
srcSelect -signal "bit_time" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 0.018678 0.024473
wvZoom -win $_nWave2 0.019399 0.019966
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G3" 11 )} 
wvSelectSignal -win $_nWave2 {( "G3" 13 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetMarker -win $_nWave2 0.019630
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 9 )} 
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 9 )} 
schCreateWindow "/tb/u_fpga_top/u_uart_rx/cstate\[4:0\]" -delim "/" \
           -busContention
schCloseWindow -win $_nSchema3
wvSetCursor -win $_nWave2 0.146024 -snap {("G3" 7)}
wvSelectSignal -win $_nWave2 {( "G3" 8 )} 
wvSelectSignal -win $_nWave2 {( "G3" 9 )} 
wvZoom -win $_nWave2 0.007342 0.172944
srcDeselectAll -win $_nTrace1
srcSelect -signal "rdata" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 0.032264 -snap {("G3" 14)}
wvSetCursor -win $_nWave2 0.040649 -snap {("G3" 14)}
wvSelectSignal -win $_nWave2 {( "G3" 14 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
srcHBSelect "tb.u_fpga_top.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_tx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "tvld" -win $_nTrace1
srcSelect -signal "tdata" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 16 )} 
wvSelectSignal -win $_nWave2 {( "G3" 16 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvSetCursor -win $_nWave2 0.010248 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 0.097824 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 0.188428 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 0.270414 -snap {("G3" 15)}
wvSelectSignal -win $_nWave2 {( "G3" 14 )} 
wvZoomOut -win $_nWave2
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
wvZoom -win $_nWave2 0.020962 0.275305
wvSetCursor -win $_nWave2 0.085711 -snap {("G3" 14)}
wvSetMarker -win $_nWave2 0.084890
srcDeselectAll -win $_nTrace1
srcSelect -signal "rxd_final" -win $_nTrace1
debReload
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "rvld" -win $_nTrace1
srcSelect -signal "rdata" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 0.172101 -snap {("G3" 17)}
wvSetMarker -win $_nWave2 0.172070
wvSelectSignal -win $_nWave2 {( "G3" 18 )} 
wvSelectSignal -win $_nWave2 {( "G3" 18 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvSetCursor -win $_nWave2 0.085889 -snap {("G3" 17)}
wvZoom -win $_nWave2 0.078914 0.093401
wvZoom -win $_nWave2 0.084813 0.085781
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.025570 1.508608
wvSetCursor -win $_nWave2 0.083973 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.166364 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.252927 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.352005 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.432310 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.436482 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.436482 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.434396 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.349919 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.435439 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.518873 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.440653 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.518873 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.525130 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.606478 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.694084 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.776475 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.869295 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 0.956901 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 1.046592 -snap {("G3" 17)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4.453376 4.909367
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4.956245 6.013122
wvSetCursor -win $_nWave2 5.081108 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 5.170296 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 5.252052 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 5.339010 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 5.428198 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 5.516643 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 5.430428 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 5.013474 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 5.088540 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 5.176242 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 5.266173 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 5.350158 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 5.453468 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 5.529278 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 5.614006 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 5.706910 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 5.691302 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 5.781977 -snap {("G3" 17)}
wvSetCursor -win $_nWave2 5.868192 -snap {("G3" 17)}
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "711"
verdiWindowResize -win $_Verdi_1 "0" "25" "1898" "773"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
wvScrollUp -win $_nWave2 1
wvSelectAll -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "rvld" -win $_nTrace1
srcSelect -signal "rdata" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {84 84 24 25 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {84 89 1 3 1 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {83 91 1 1 1 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rxd" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {84 90 1 1 1 1} -backward
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
verdiWindowResize -win $_Verdi_1 "0" "25" "1898" "773"
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "711"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top" -delim "."
wvZoomAll -win $_nWave2
srcHBSelect "tb.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_uart_rx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "cstate" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 3.924937 4.500253
wvSetCursor -win $_nWave2 4.184274 -snap {("G3" 1)}
wvZoom -win $_nWave2 4.158785 4.292298
wvZoom -win $_nWave2 4.196342 4.219814
wvZoom -win $_nWave2 4.199032 4.203142
wvZoomAll -win $_nWave2
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "711"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {60 60 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_starsea_core" -win $_nTrace1
srcAction -pos 59 2 10 -win $_nTrace1 -name "u_starsea_core" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "iram_wdata" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr" -win $_nTrace1
srcAction -pos 21 3 0 -win $_nTrace1 -name "intr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "uart_rvld" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "uart_rvld" -win $_nTrace1
srcAction -pos 61 6 4 -win $_nTrace1 -name "uart_rvld" -ctrlKey off
srcDeselectAll -win $_nTrace1
debReload
wvZoomAll -win $_nWave2
srcHBSelect "tb.u_uart_rx" -win $_nTrace1
srcHBSelect "tb.u_uart_tx" -win $_nTrace1
srcHBSelect "tb.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_uart_tx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "tvld" -win $_nTrace1
srcSelect -signal "tdata" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "tdata" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "tdata" -win $_nTrace1
srcAction -pos 113 8 3 -win $_nTrace1 -name "tdata" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "tb_uart_tvld" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 5.003131 -snap {("G3" 7)}
wvSetMarker -win $_nWave2 5.000010
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 4.372412 -snap {("G3" 4)}
wvSetMarker -win $_nWave2 0.000000
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "tb_uart_tvld" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "tb_clk" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "tb_uart_tvld" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 7 )} 
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G3" 8 )} 
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_uart_tx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "txd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "uart_rxd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 9 )} 
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 4.811358 5.523047
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_tx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "tvld" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "tdata" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "txd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "rdata" -win $_nTrace1
srcTraceLoad "tb.u_fpga_top.u_uart_rx.rdata\[7:0\]" -win $_nTrace1
nsMsgSwitchTab -tab trace
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rdata" -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {88 88 24 25 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "uart_rdata" -win $_nTrace1
srcSearchString "uart_rdata" -win $_nTrace1 -next -case
srcSearchString "uart_rdata" -win $_nTrace1 -next -case
srcSearchString "uart_rdata" -win $_nTrace1 -next -case
srcSearchString "uart_rdata" -win $_nTrace1 -next -case
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "711"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "711"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4.760235 5.561420
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "rxd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rvld" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4.721880 5.685007
wvSetCursor -win $_nWave2 5.072724 -snap {("G3" 18)}
wvSetMarker -win $_nWave2 5.074350
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "rxd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rvld" -win $_nTrace1
wvZoom -win $_nWave2 4.747450 5.621083
srcHBSelect "tb.u_fpga_top.u_timer" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_timer" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {99 99 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "timer_cnt" -win $_nTrace1
srcTraceLoad "tb.u_fpga_top.timer_cnt\[31:0\]" -win $_nTrace1
nsMsgSwitchTab -tab trace
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
srcBackwardHistory -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {24 28 1 11 1 14} -backward
srcBackwardHistory -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {88 88 24 25 1 1}
srcDeselectAll -win $_nTrace1
debReload
wvZoomAll -win $_nWave2
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
srcAction -pos 27 9 8 -win $_nTrace1 -name "reg_bus_rdat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "trdy" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 1.640726 2.233091
wvZoom -win $_nWave2 1.827766 1.856510
wvZoom -win $_nWave2 1.837105 1.838419
wvZoom -win $_nWave2 1.837250 1.837727
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4.802851 5.429310
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_uart_rx_rdat" -win $_nTrace1
srcAction -pos 62 9 9 -win $_nTrace1 -name "reg_uart_rx_rdat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr_flag" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rdata_buf" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 5.069382 5.089648
wvZoom -win $_nWave2 5.074171 5.074513
wvSelectSignal -win $_nWave2 {( "G3" 23 )} 
wvSetRadix -win $_nWave2 -format Ascii
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAction -pos 265 11 6 -win $_nTrace1 -name "reg_bus_addr" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr_flag_clr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 5.072433 5.077667
wvZoom -win $_nWave2 5.074115 5.075183
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 5.199182 -snap {("G3" 14)}
srcDeselectAll -win $_nTrace1
debReload
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 25 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 8.469954 -snap {("G3" 22)}
wvScrollDown -win $_nWave2 1
wvSetMarker -win $_nWave2 5.074370
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 4.101801 10.824494
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvSetMarker -win $_nWave2 5.087630
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rdata_buf" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 5.122970 -snap {("G3" 19)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 4.304228 11.740741
wvSetCursor -win $_nWave2 5.067752 -snap {("G3" 24)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 23 )} 
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "rvld" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 4.957930 9.847620
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 8.714996 -snap {("G3" 25)}
wvSetMarker -win $_nWave2 8.661710
wvSetCursor -win $_nWave2 5.220475 -snap {("G3" 24)}
wvSetMarker -win $_nWave2 5.075310
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 24 )} 
srcDeselectAll -win $_nTrace1
wvZoom -win $_nWave2 7.116892 9.940210
wvSetCursor -win $_nWave2 8.578187 -snap {("G3" 14)}
wvSelectSignal -win $_nWave2 {( "G3" 15 )} 
wvSelectSignal -win $_nWave2 {( "G3" 15 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvSetCursor -win $_nWave2 8.667533 -snap {("G3" 15)}
wvSelectSignal -win $_nWave2 {( "G3" 15 )} 
wvSetRadix -win $_nWave2 -format Hex
srcHBSelect "tb.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_uart_tx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "trdy" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 4.943470 -snap {("G3" 28)}
wvSetMarker -win $_nWave2 5.000030
wvZoom -win $_nWave2 4.240304 6.360456
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {110 110 24 25 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "trdy" -win $_nTrace1
srcSearchString "trdy" -win $_nTrace1 -next -case
srcSearchString "trdy" -win $_nTrace1 -next -case
srcSearchString "trdy" -win $_nTrace1 -next -case
srcSearchString "trdy" -win $_nTrace1 -next -case
wvSetCursor -win $_nWave2 4.672684 -snap {("G3" 19)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 3.757675 12.270254
wvSetCursor -win $_nWave2 7.720634 -snap {("G3" 14)}
wvSelectSignal -win $_nWave2 {( "G3" 15 )} 
wvSelectSignal -win $_nWave2 {( "G3" 15 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvSetCursor -win $_nWave2 7.798456 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 7.894237 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 7.972060 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 8.031923 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 7.936142 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 7.876278 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 7.990019 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 8.061855 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 8.127705 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 8.223486 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 8.319268 -snap {("G3" 15)}
wvSetCursor -win $_nWave2 5.930717 -snap {("G3" 20)}
wvZoomAll -win $_nWave2
verdiWindowResize -win $_Verdi_1 "0" "25" "1894" "711"
verdiWindowResize -win $_Verdi_1 "0" "25" "1890" "649"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr_flag_clr" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr_flag_clr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 3.960011 13.281935
wvSetCursor -win $_nWave2 8.398086 -snap {("G3" 29)}
wvSetMarker -win $_nWave2 8.399770
wvSetCursor -win $_nWave2 5.428444 -snap {("G3" 22)}
wvSetMarker -win $_nWave2 5.422430
wvZoomAll -win $_nWave2
verdiWindowResize -win $_Verdi_1 "0" "25" "1890" "649"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1890" "649"
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "645"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "645"
verdiWindowResize -win $_Verdi_1 "0" "25" "1914" "789"
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "645"
verdiWindowResize -win $_Verdi_1 "0" "25" "1914" "789"
verdiWindowResize -win $_Verdi_1 "0" "25" "1914" "645"
verdiWindowResize -win $_Verdi_1 "0" "25" "1914" "789"
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "645"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "645"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "645"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvSetCursor -win $_nWave2 2.023363 -snap {("G3" 27)}
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcSelect -signal "reg_bus_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 4.191253 12.848358
wvZoom -win $_nWave2 4.952250 6.480332
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 5.477534 11.128499
wvSetCursor -win $_nWave2 8.148032 -snap {("G3" 30)}
wvSelectSignal -win $_nWave2 {( "G3" 32 )} 
srcHBSelect "tb.u_fpga_top.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_tx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "txd" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "tvld" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 4.352904 9.606474
wvSelectSignal -win $_nWave2 {( "G3" 32 )} 
wvSelectSignal -win $_nWave2 {( "G3" 31 )} 
wvZoom -win $_nWave2 7.829422 8.594183
wvZoom -win $_nWave2 8.131669 8.224172
wvSelectSignal -win $_nWave2 {( "G3" 32 )} 
wvSelectSignal -win $_nWave2 {( "G3" 32 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 5.593155 11.749960
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 3.743222 10.666016
wvZoom -win $_nWave2 4.862943 6.143319
wvZoom -win $_nWave2 5.145670 5.202395
wvZoom -win $_nWave2 5.160709 5.167610
wvZoom -win $_nWave2 5.162340 5.163572
srcDeselectAll -win $_nTrace1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 5.231840 7.211845
wvSetCursor -win $_nWave2 5.513106 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.446271 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.532600 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.617537 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.687157 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.763740 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.868171 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.929437 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.968424 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.047791 -snap {("G3" 30)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 6.583869 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.672983 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.723110 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.817794 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.951465 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.973743 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 7.073997 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 7.163111 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 7.335770 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 7.436023 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 7.525137 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 7.625391 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 7.708935 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 7.770201 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 7.903873 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 7.953999 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 8.070962 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 8.126658 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 8.193494 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 8.304886 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 8.410709 -snap {("G3" 30)}
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAction -pos 24 9 9 -win $_nTrace1 -name "reg_bus_addr" -ctrlKey off
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 7.569694 8.989952
wvSetCursor -win $_nWave2 8.139995 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 8.063089 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 7.964210 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 7.882311 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 7.967207 -snap {("G3" 30)}
wvZoom -win $_nWave2 7.939241 8.042115
wvZoom -win $_nWave2 7.960510 7.969191
wvZoom -win $_nWave2 7.962952 7.964588
wvZoom -win $_nWave2 7.963408 7.963753
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 7.963445 -snap {("G3" 32)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
srcHBSelect "tb.u_fpga_top.u_timer" -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr_flag" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr_flag" -win $_nTrace1
srcAction -pos 285 12 4 -win $_nTrace1 -name "intr_flag" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr_flag_clr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cstate" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "bit_time" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "rvld" -win $_nTrace1
srcSelect -signal "rdata" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 39 )} 
wvSelectSignal -win $_nWave2 {( "G3" 39 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvZoom -win $_nWave2 3.669471 12.509561
wvSetCursor -win $_nWave2 5.055786 -snap {("G3" 38)}
wvSetCursor -win $_nWave2 5.192553 -snap {("G3" 38)}
wvSetCursor -win $_nWave2 5.223636 -snap {("G3" 38)}
wvSetCursor -win $_nWave2 5.323103 -snap {("G3" 38)}
wvSetCursor -win $_nWave2 6.448318 -snap {("G3" 38)}
wvZoom -win $_nWave2 6.249385 7.250267
wvZoom -win $_nWave2 6.332440 6.561897
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 5.460924 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.540959 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.610668 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.680376 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.791393 -snap {("G3" 30)}
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 5.876592 -snap {("G3" 31)}
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 5.959210 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.028918 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.139935 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.191571 -snap {("G3" 30)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 5.455760 -snap {("G3" 28)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 5.497069 -snap {("G3" 30)}
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 5.605504 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.690703 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.768157 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.910155 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 5.959210 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.052154 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.121862 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.207062 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.297424 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.390369 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.312915 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.372296 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.434259 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.465241 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.550440 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.656294 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.568513 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.395532 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.423932 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.491059 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.555604 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.640803 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.767311 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.475568 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.565931 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.645966 -snap {("G3" 30)}
wvSetCursor -win $_nWave2 6.434259 -snap {("G3" 38)}
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_machine" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_machine" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 6.297424 6.754402
wvZoom -win $_nWave2 6.416328 6.452964
wvZoom -win $_nWave2 6.422151 6.422975
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4.003060 10.417053
wvSetCursor -win $_nWave2 5.130696 -snap {("G3" 41)}
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 5.792306 -snap {("G3" 42)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 14.205081 16.770186
wvZoom -win $_nWave2 15.397440 15.530926
wvZoom -win $_nWave2 15.419031 15.431891
wvSetCursor -win $_nWave2 15.422513 -snap {("G3" 41)}
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 15.423770 -snap {("G3" 35)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 15.423842 -snap {("G3" 30)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 15.422341 -snap {("G3" 18)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 15.422205 15.422838
wvSetCursor -win $_nWave2 15.422452 -snap {("G3" 1)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 18 )} 
wvSelectAll -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "rvld" -win $_nTrace1
srcSelect -signal "rdata" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 1 2 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvZoom -win $_nWave2 13.989526 18.688627
wvZoom -win $_nWave2 15.241958 16.061492
wvZoom -win $_nWave2 15.396990 15.518018
wvSetCursor -win $_nWave2 15.422012 -snap {("G3" 1)}
wvZoom -win $_nWave2 15.421587 15.425162
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "rxd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 14.679302 16.080410
wvZoom -win $_nWave2 15.292164 15.607462
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 8.837759 -snap {("G2" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "rxd" -win $_nTrace1
srcAction -pos 186 3 0 -win $_nTrace1 -name "rxd" -ctrlKey off
srcHBSelect "tb.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_uart_tx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "tvld" -win $_nTrace1
srcSelect -signal "tdata" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 13.364416 17.826406
wvSetCursor -win $_nWave2 15.353798 -snap {("G3" 5)}
wvZoom -win $_nWave2 15.259664 15.469898
wvZoom -win $_nWave2 15.345709 15.353545
wvZoom -win $_nWave2 15.347985 15.348883
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4.292823 23.303894
wvZoom -win $_nWave2 4.894439 7.915889
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 172.326165 -snap {("G3" 1)}
srcHBSelect "tb.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_uart_tx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "trdy" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 0.000000 26.370196
wvZoom -win $_nWave2 2.818755 9.476210
wvSetCursor -win $_nWave2 3.118387 -snap {("G3" 4)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 2.453041 45.381268
wvZoom -win $_nWave2 3.902096 9.788878
wvZoom -win $_nWave2 4.808710 6.232798
wvSetCursor -win $_nWave2 4.995984 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 14.795377 18.742281
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 15.267229 16.932589
wvSetCursor -win $_nWave2 15.425333 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.526051 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.603346 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.685326 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.420648 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.506141 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.598661 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.680641 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.745054 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.853970 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.928923 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.030812 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.138557 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.219365 -snap {("G3" 7)}
wvSelectSignal -win $_nWave2 {( "G3" 8 )} 
wvSelectSignal -win $_nWave2 {( "G3" 8 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvSetCursor -win $_nWave2 15.428846 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.522537 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.602175 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.680641 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.763792 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.853970 -snap {("G3" 8)}
wvSetCursor -win $_nWave2 15.932436 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.037839 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.131530 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.221707 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.303687 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.392694 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.471160 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.574220 -snap {("G3" 7)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 14.319777 23.295390
wvSetCursor -win $_nWave2 16.674140 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.724635 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.813003 -snap {("G3" 7)}
wvZoom -win $_nWave2 14.805798 20.290895
wvSetCursor -win $_nWave2 16.904176 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.989036 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 17.066183 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 17.158758 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 17.247476 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 17.340052 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 17.432627 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 17.513631 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 19.118272 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 19.183846 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 19.295708 -snap {("G3" 7)}
wvZoom -win $_nWave2 19.168417 19.554148
wvZoom -win $_nWave2 19.267698 19.276650
wvSetCursor -win $_nWave2 19.269675 -snap {("G3" 7)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 12.524253 24.144467
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 8 )} 
wvSelectSignal -win $_nWave2 {( "G3" 8 )} 
wvSetRadix -win $_nWave2 -format Hex
wvSelectSignal -win $_nWave2 {( "G3" 9 )} 
wvSelectSignal -win $_nWave2 {( "G3" 9 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvZoom -win $_nWave2 14.885886 17.607076
wvSetCursor -win $_nWave2 15.431272 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.515472 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.588190 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.427445 -snap {("G3" 9)}
wvSetCursor -win $_nWave2 15.513559 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.595845 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.681958 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.766158 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.859927 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.944126 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.049376 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.131663 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.229258 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.317285 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.444668 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.511645 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.143145 -snap {("G3" 6)}
wvSetCursor -win $_nWave2 16.231172 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.286667 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 16.382349 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.440840 -snap {("G3" 8)}
wvSetCursor -win $_nWave2 15.521213 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.592018 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.701095 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 15.337504 -snap {("G3" 8)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 15.941963 22.358438
wvSetCursor -win $_nWave2 19.091541 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 19.181787 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.522993 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.369575 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.482382 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.554579 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.658361 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.730558 -snap {("G3" 7)}
wvZoom -win $_nWave2 18.486894 19.673626
wvSetCursor -win $_nWave2 18.849090 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.923365 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.835737 -snap {("G3" 6)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 18.521783 21.278001
wvSetCursor -win $_nWave2 19.107140 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 19.184671 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 19.260263 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.952079 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.872610 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.767943 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.688474 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.612882 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.489996 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.559773 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.402773 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.484181 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.561711 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.672193 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.741970 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.833069 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.681884 -snap {("G3" 7)}
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "645"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 18.579156 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.668316 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.751662 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.842761 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.749724 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.732279 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 19.385476 19.587055
wvZoom -win $_nWave2 19.441612 19.454228
wvSetCursor -win $_nWave2 19.444078 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 19.444655 -snap {("G3" 7)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 18.430370 19.177633
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 18.580138 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.663167 -snap {("G3" 8)}
wvSetCursor -win $_nWave2 18.766165 -snap {("G3" 6)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 17.441346 22.049742
wvSetCursor -win $_nWave2 18.520527 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.588584 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.669603 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.757104 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.339043 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 18.559417 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.672844 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.747382 -snap {("G3" 7)}
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "645"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvSetCursor -win $_nWave2 18.967756 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 18.588584 19.074702
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 18.503462 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.584140 -snap {("G3" 7)}
wvSetCursor -win $_nWave2 18.652511 -snap {("G3" 7)}
wvZoom -win $_nWave2 18.634734 18.785150
wvSetCursor -win $_nWave2 18.664246 -snap {("G3" 7)}
wvZoom -win $_nWave2 18.661179 18.669324
wvZoom -win $_nWave2 18.662571 18.663161
wvZoom -win $_nWave2 18.662642 18.662775
wvSelectSignal -win $_nWave2 {( "G3" 9 )} 
wvSelectSignal -win $_nWave2 {( "G3" 9 )} 
wvSetRadix -win $_nWave2 -format Hex
wvSetCursor -win $_nWave2 18.662670 -snap {("G3" 8)}
wvSelectSignal -win $_nWave2 {( "G3" 8 )} 
wvSetCursor -win $_nWave2 18.662670 -snap {("G3" 9)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAction -pos 24 9 8 -win $_nTrace1 -name "reg_bus_addr" -ctrlKey off
srcHBSelect "tb.u_fpga_top.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_tx" -delim "."
srcHBSelect "tb.u_fpga_top.u_uart_rx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_rx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAction -pos 189 9 9 -win $_nTrace1 -name "reg_bus_addr" -ctrlKey off
verdiWindowResize -win $_Verdi_1 "0" "25" "1886" "645"
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAction -pos 23 3 8 -win $_nTrace1 -name "reg_bus_we" -ctrlKey off
wvZoom -win $_nWave2 4.630446 11.576114
wvZoomAll -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debExit
