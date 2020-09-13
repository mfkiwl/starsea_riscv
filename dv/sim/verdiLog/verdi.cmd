debImport "-f" "../flist" "-sv"
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiSetPrefEnv -bDisplayWelcome "off"
verdiDockWidgetHide -dock widgetDock_WelcomePage
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/home/IC/project/github/starsea_riscv/dv/sim/test.fsdb}
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {193 193 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we_byte" -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 467322.151533 6192018.507808
wvZoom -win $_nWave2 1357977.628593 2086394.747379
wvSetCursor -win $_nWave2 1494476.845763 -snap {("G1" 3)}
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
wvZoom -win $_nWave2 85286292.654714 163562753.036437
wvZoom -win $_nWave2 91488649.550196 99366095.534245
wvZoom -win $_nWave2 93602666.286222 94664230.724789
wvZoom -win $_nWave2 93902900.531714 94180417.666609
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAction -pos 196 4 8 -win $_nTrace1 -name "dram_wdat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "s_type_store_funct3_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_wdat\[7:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_wdat\[7:0\]" -win $_nTrace1
srcAction -pos 89 23 4 -win $_nTrace1 -name "store_wdat\[7:0\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs2_dat_ex" -win $_nTrace1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAction -pos 78 14 1 -win $_nTrace1 -name "alu_rd_dat" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {285 285 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 296 4 2 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs2_dat_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs2_dat_ex" -win $_nTrace1
srcAction -pos 160 14 4 -win $_nTrace1 -name "rs2_dat_ex" -ctrlKey off
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 176414112.203586 195691150.954309
wvZoom -win $_nWave2 179034183.982806 179703138.479650
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 6425679.583574 42058993.637941
wvZoom -win $_nWave2 7126392.526228 9104876.129015
wvZoom -win $_nWave2 7188184.379640 7602418.656221
wvSetCursor -win $_nWave2 7253110.631203 -snap {("G1" 14)}
wvSetMarker -win $_nWave2 7250000.000000
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 159 18 2 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAction -pos 78 14 7 -win $_nTrace1 -name "alu_rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_funct7_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_funct3_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "add_res" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAction -pos 138 12 0 -win $_nTrace1 -name "a" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 76 22 5 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAction -pos 78 14 3 -win $_nTrace1 -name "alu_rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "lui_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "auipc_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jal_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "add_res" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAction -pos 78 14 5 -win $_nTrace1 -name "alu_rd_dat" -ctrlKey off
srcAddSelectedToWave -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {343 343 3 4 1 1}
srcSearchString "alu_rd_dat" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcSelect -signal "csrr_rd_en" -win $_nTrace1
srcSelect -signal "csrr_rd_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "csrr_rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "csrr_rd_dat" -win $_nTrace1
srcAction -pos 362 8 4 -win $_nTrace1 -name "csrr_rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "csrr_rd_dat" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "system_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "system_funct3_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "system_funct12_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtval" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtval" -win $_nTrace1
srcAction -pos 118 9 1 -win $_nTrace1 -name "mtval" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "misalign_exception" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_misalign_exception" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_misalign_exception" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_misalign_exception" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "j_misalign_exception_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtval" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst_n" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtval" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mtval" -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 5075268.314111 9782541.342606
wvZoom -win $_nWave2 6874867.777288 7713410.341069
wvSetCursor -win $_nWave2 7127546.016576 -snap {("G1" 59)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 6541504.974131 8465933.483721
wvSetCursor -win $_nWave2 7130297.733860 -snap {("G1" 62)}
wvSetMarker -win $_nWave2 7130000.000000
srcDeselectAll -win $_nTrace1
srcSelect -signal "misalign_exception" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_misalign_exception" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "j_misalign_exception_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_misalign_exception" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_misalign_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_misalign_addr" -win $_nTrace1
srcAction -pos 166 5 9 -win $_nTrace1 -name "load_misalign_addr" -ctrlKey off
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_misalign_addr" -win $_nTrace1
srcAction -pos 389 4 2 -win $_nTrace1 -name "load_misalign_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_misalign_addr" -win $_nTrace1
srcAction -pos 389 4 2 -win $_nTrace1 -name "load_misalign_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_misalign_addr" -win $_nTrace1
srcSearchString "load_misalign_addr" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {390 390 2 3 1 1}
srcSearchString "load_misalign_addr" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {87 87 9 10 1 1}
srcSearchString "load_misalign_addr" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {390 390 5 6 1 1}
nsMsgSwitchTab -tab general
srcSearchString "load_misalign_addr" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {390 390 2 3 1 1}
srcSearchString "load_misalign_addr" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {87 87 9 10 1 1}
srcSearchString "load_misalign_addr" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {390 390 5 6 1 1}
srcSearchString "load_misalign_addr" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {390 390 2 3 1 1}
srcSearchString "load_misalign_addr" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {87 87 9 10 1 1}
srcSearchString "load_misalign_addr" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {390 390 5 6 1 1}
srcSearchString "load_misalign_addr" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {390 390 2 3 1 1}
srcSearchString "load_misalign_addr" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {87 87 9 10 1 1}
srcSearchString "load_misalign_addr" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {390 390 5 6 1 1}
wvSetCursor -win $_nWave2 7700168.987134 -snap {("G1" 65)}
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
verdiWindowResize -win $_Verdi_1 -2 "25" "1896" "771"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 -2 "25" "1896" "771"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 -2 "25" "1896" "771"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvSetCursor -win $_nWave2 375610179.294390 -snap {("G1" 65)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_pc" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_pc" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 5257374.204743 27455176.402545
wvZoom -win $_nWave2 5539821.658965 6091878.046765
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_id" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_id" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 71202.183042 426893.805950
wvSetCursor -win $_nWave2 273425.933949 -snap {("G1" 68)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {193 193 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcSelect -toggle -signal "dram_dout_to_dbus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
verdiWindowResize -win $_Verdi_1 -2 "25" "1896" "771"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvSetCursor -win $_nWave2 217058.377745 -snap {("G1" 68)}
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_dram" -win $_nTrace1
srcAction -pos 192 2 4 -win $_nTrace1 -name "u_dram" -ctrlKey off
wvSetCursor -win $_nWave2 319713.160759 -snap {("G1" 67)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 144004.705631 535697.504946
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 294505.864147 -snap {("G1" 70)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 222012.112972 -snap {("G1" 71)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 191202.268723 -snap {("G1" 72)}
wvSetCursor -win $_nWave2 248291.097773 -snap {("G1" 73)}
wvSetMarker -win $_nWave2 250000.000000
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 75 )} 
wvSetRadix -win $_nWave2 -format UDec
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_tx" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {68 68 24 25 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "uart_tvld" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "uart_tvld" -win $_nTrace1
srcAction -pos 72 5 7 -win $_nTrace1 -name "uart_tvld" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAction -pos 53 6 2 -win $_nTrace1 -name "reg_bus_we" -ctrlKey off
wvSetCursor -win $_nWave2 287709.574974 -snap {("G1" 68)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcSelect -signal "reg_bus_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_uart_tx" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_uart_tx" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "tvld" -win $_nTrace1
srcSelect -signal "tdata" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "txd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "trdy" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {55 55 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_rdat" -win $_nTrace1
srcAction -pos 64 4 8 -win $_nTrace1 -name "reg_bus_rdat" -ctrlKey off
wvSetCursor -win $_nWave2 360422209.369578 -snap {("G1" 78)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 18108733.371891 65425101.214575
wvZoom -win $_nWave2 21146394.928014 24786115.531297
wvZoom -win $_nWave2 111570.382865 911508.976993
wvZoom -win $_nWave2 249905.628466 692208.286642
wvSetCursor -win $_nWave2 448161.591501 -snap {("G1" 75)}
wvSelectSignal -win $_nWave2 {( "G1" 75 )} 
wvSelectSignal -win $_nWave2 {( "G1" 73 )} 
wvSelectSignal -win $_nWave2 {( "G1" 75 )} 
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we_byte" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {193 193 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -word -line 197 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_we" -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcSelect -signal "reg_bus_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 132000.099259 782791.286303
wvZoom -win $_nWave2 306272.117536 528723.009117
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAction -pos 22 9 10 -win $_nTrace1 -name "reg_bus_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 197 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 176005.101031 700932.595334
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_bus_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
debExit
