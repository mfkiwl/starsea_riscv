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
srcSelect -signal "reg_bus_rd" -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcSelect -signal "reg_bus_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 467322.151533 6367264.314633
wvZoom -win $_nWave2 221802.336959 1426359.643826
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 382735.094556 678823.501392
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
srcAction -pos 25 9 9 -win $_nTrace1 -name "reg_bus_rdat" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 360306.540186 1190518.568144
srcSelect -win $_nTrace1 -range {35 35 1 6 1 1}
srcTBAddBrkPnt -win $_nTrace1 -line 35 -file \
           /home/IC/project/starsea_riscv/rtl/core/starsea_core.v
srcSelect -win $_nTrace1 -range {35 35 1 2 1 4}
wvSetCursor -win $_nWave2 413125.119177 -snap {("G2" 0)}
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "a5" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 393438.194281 640245.008838
srcDeselectAll -win $_nTrace1
srcSelect -signal "a4" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a3" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 630363.732265 -snap {("G1" 9)}
wvSetMarker -win $_nWave2 630000.000000
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_pc" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_pc" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 79937.429816 1162518.622185
wvZoom -win $_nWave2 414917.729364 935859.055015
wvSetCursor -win $_nWave2 587840046.701693
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiWindowResize -win $_Verdi_1 "0" "25" "1898" "723"
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
wvZoom -win $_nWave2 50617.780630 1061768.207978
wvZoom -win $_nWave2 312616.271927 919072.601111
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetMarker -win $_nWave2 590000.000000
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "a0" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 732821.409210 -snap {("G1" 11)}
wvSetMarker -win $_nWave2 730000.000000
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_pc" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_pc" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_sel" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "target_addr\[31:1\]" -win $_nTrace1
srcAction -pos 81 10 8 -win $_nTrace1 -name "target_addr\[31:1\]" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_sel" -win $_nTrace1
srcAction -pos 78 3 4 -win $_nTrace1 -name "pc_sel" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAction -pos 75 31 2 -win $_nTrace1 -name "pc_jump_en" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ecall_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ebreak_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mret_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "j_misalign_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_misalign_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "misalign_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 17 18 19 20 21 22 23 24 25 26 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 16)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_bran_take" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_bran_take" -win $_nTrace1
srcAction -pos 152 27 8 -win $_nTrace1 -name "jalr_bran_take" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_ex" -win $_nTrace1
srcAction -pos 196 5 2 -win $_nTrace1 -name "jalr_ex" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_inst" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_inst" -win $_nTrace1
srcAction -pos 151 7 5 -win $_nTrace1 -name "jalr_inst" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "opcode" -win $_nTrace1
srcAction -pos 148 6 5 -win $_nTrace1 -name "opcode" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 695641.321938 -snap {("G1" 19)}
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_machine" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_machine" -delim "."
srcBackwardHistory -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {285 285 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcForwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
wvSetCursor -win $_nWave2 671789.945197 -snap {("G1" 20)}
wvSetMarker -win $_nWave2 690000.000000
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_id" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_id" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcTraceLoad "tb.u_fpga_top.u_starsea_core.u_id.btype_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
debReload
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_bran_take" -win $_nTrace1
srcAction -pos 152 28 11 -win $_nTrace1 -name "jalr_bran_take" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_ex" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcTraceDriver "tb.u_fpga_top.u_starsea_core.jalr_bran_take" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_ex" -win $_nTrace1
srcAction -pos 196 5 4 -win $_nTrace1 -name "jalr_ex" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {285 285 3 4 1 1}
srcSearchString "jalr_ex" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 575507.549384 1046922.995551
wvSetCursor -win $_nWave2 833436.416981 -snap {("G1" 22)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 850886.150095 -snap {("G1" 12)}
wvSetMarker -win $_nWave2 870000.000000
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectAll -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rd" -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 11098901.098901 68930017.351070
wvZoom -win $_nWave2 0.000000 2876504.336429
wvZoom -win $_nWave2 197978.031252 1127975.673857
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
debExit
