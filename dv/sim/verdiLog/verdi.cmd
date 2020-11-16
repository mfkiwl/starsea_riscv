debImport "-f" "../flist" "-sv"
verdiWindowResize -win $_Verdi_1 -2 "25" "1886" "645"
wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/home/IC/project/starsea_riscv/dv/sim/test.fsdb}
srcHBSelect "tb.u_fpga_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 3749917623.487032 9826591362.752161
wvZoom -win $_nWave2 5242818016.202713 5439828331.956985
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 5202791424.672717 5438976702.349309
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 6099263604.466859 -snap {("G1" 2)}
wvSetMarker -win $_nWave2 5376390000.000000
wvZoom -win $_nWave2 4902000748.775216 7703144033.789626
wvZoom -win $_nWave2 5192609274.021451 5561924274.855484
wvZoom -win $_nWave2 5366091536.660618 5408663871.050708
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 5304932145.612961 5419767030.307843
wvZoom -win $_nWave2 5772388863.915698 5778759387.057993
wvZoom -win $_nWave2 5776207506.029114 5776579272.869550
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvSetMarker -win $_nWave2 5776370000.000000
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
wvZoom -win $_nWave2 5315746835.300804 6175628805.750654
wvZoom -win $_nWave2 5748711315.498378 5822484592.850616
wvZoom -win $_nWave2 5770241491.377872 5783989675.975863
wvZoom -win $_nWave2 5775974735.727639 5778440127.480443
wvZoom -win $_nWave2 5776203590.657640 5777023654.159101
wvZoom -win $_nWave2 5776302782.585446 5776591707.911910
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcAction -pos 7 9 6 -win $_nTrace1 -name "inst_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc" -win $_nTrace1
srcAction -pos 141 6 0 -win $_nTrace1 -name "pc" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_sel" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "target_addr\[31:1\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "target_addr\[31:1\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAction -pos 76 33 0 -win $_nTrace1 -name "pc_jump_en" -ctrlKey off
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
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
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 9 10 11 12 13 14 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_bran_take" -win $_nTrace1
srcAction -pos 156 22 7 -win $_nTrace1 -name "jalr_bran_take" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 2690068504.781997 8224553707.243320
wvZoom -win $_nWave2 3593022489.992693 4242993677.623523
wvZoom -win $_nWave2 3772198794.880386 3843960733.317827
wvZoom -win $_nWave2 3782746084.003365 3800661335.863626
srcDeselectAll -win $_nTrace1
srcSelect -signal "tb_uart_tvld" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 2293173151.617440 9944433570.956400
srcHBSelect "tb" -win $_nTrace1
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "u_fpga_top" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "tb_uart_tvld" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvZoom -win $_nWave2 3450009290.968531 4709077461.239498
wvZoom -win $_nWave2 3667822771.900952 4114074781.617244
wvSetCursor -win $_nWave2 3793350763.381376 -snap {("G1" 6)}
wvSetMarker -win $_nWave2 3793290000.000000
wvZoom -win $_nWave2 3721172168.279585 3836971740.421154
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 3676790475.721719 3899594715.791574
wvZoom -win $_nWave2 3773464326.721775 3826423421.759476
wvZoom -win $_nWave2 3784935073.044215 3803370201.063668
wvZoom -win $_nWave2 3789705907.861974 3794243386.629068
wvSetCursor -win $_nWave2 3790474917.975536 -snap {("G1" 6)}
wvSetMarker -win $_nWave2 3790470000.000000
wvZoom -win $_nWave2 3789942035.448036 3791645983.170700
wvZoom -win $_nWave2 3790302716.365386 3790892267.898121
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 11)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.pc_jump_en" -win $_nTrace1
nsMsgSwitchTab -tab trace
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_misalign_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "j_misalign_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAction -pos 156 26 3 -win $_nTrace1 -name "btype_bran_take" -ctrlKey off
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
srcSelect -signal "btype_ex" -win $_nTrace1
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 436814345.991561 4474683544.303797
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvZoom -win $_nWave2 817316788.026549 1831043443.299030
wvZoom -win $_nWave2 908566444.759888 1052569809.292266
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 880717692.828422 916161558.922889
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 864610989.511165 1081561348.502897
wvZoom -win $_nWave2 963016743.062202 1006193220.976871
wvZoom -win $_nWave2 978076892.883350 985424788.562218
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvSetSearchMode -win $_nWave2 -value "X" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvZoomAll -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvZoom -win $_nWave2 1992299578.059072 2876582278.481012
wvZoom -win $_nWave2 2158335781.302782 2241664812.144231
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 3707594936.708860 4357489451.476793
wvZoom -win $_nWave2 3770664868.520922 3850187826.024171
wvZoom -win $_nWave2 3787553710.408875 3801702309.739623
wvZoom -win $_nWave2 3789414320.868513 3792976345.172597
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvZoom -win $_nWave2 3790311089.293360 3791713855.545320
wvZoom -win $_nWave2 3790411709.657065 3790665233.515542
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 3791074758.341110 3792084574.891329
wvZoom -win $_nWave2 3791614463.388937 3791728085.504292
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 3790009291.323751 3790735450.103182
wvZoom -win $_nWave2 3790161978.717550 3790432117.954061
wvSetCursor -win $_nWave2 3790270642.319872 -snap {("G1" 21)}
wvSetMarker -win $_nWave2 3790290000.000000
wvSetSearchMode -win $_nWave2 -value "Xxxxxxxx" -case off -skipGlitch off -X2Y \
           off
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
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
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvZoom -win $_nWave2 1252912916.680565 1337728278.206409
wvZoom -win $_nWave2 1283212637.956462 1294903081.598561
wvZoom -win $_nWave2 1285678976.277118 1287462960.996060
wvZoom -win $_nWave2 1286274892.410261 1286808080.529495
wvSetMarker -win $_nWave2 1286470000.000000
wvZoom -win $_nWave2 1286320637.100961 1286599979.681010
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 241 7 5 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAction -pos 78 10 1 -win $_nTrace1 -name "load_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7\]" -win $_nTrace1
srcAction -pos 61 25 3 -win $_nTrace1 -name "dram_dout\[7\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[31\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAction -pos 213 14 10 -win $_nTrace1 -name "dram_dout_to_dbus" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcAction -pos 32 5 12 -win $_nTrace1 -name "dram\[dram_addr>>2\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 205 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 205 4 6 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
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
srcSelect -signal "a" -win $_nTrace1
srcAction -pos 81 12 1 -win $_nTrace1 -name "a" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
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
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
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
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 76 22 5 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAction -pos 78 10 5 -win $_nTrace1 -name "load_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout\[7\]" -win $_nTrace1
srcAction -pos 61 25 7 -win $_nTrace1 -name "dram_dout\[7\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAction -pos 213 14 3 -win $_nTrace1 -name "dram_dout_to_dbus" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_tmp" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr>>2" -win $_nTrace1
srcAction -pos 32 5 11 -win $_nTrace1 -name "dram\[dram_addr>>2\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 205 4 6 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
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
srcSelect -signal "rd_dat" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 43 )} 
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "s0_fp" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 1286072136.141125 1287088927.417026
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a5" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 48 )} 
wvSelectSignal -win $_nWave2 {( "G1" 48 )} 
wvSetPosition -win $_nWave2 {("G1" 48)}
wvExpandBus -win $_nWave2 {("G1" 48)}
wvSetPosition -win $_nWave2 {("G1" 1074)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
verdiWindowResize -win $_Verdi_1 -2 "25" "1886" "645"
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 50)}
wvSelectSignal -win $_nWave2 {( "G1" 49 )} 
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 48 )} 
wvSetPosition -win $_nWave2 {("G1" 48)}
wvExpandBus -win $_nWave2 {("G1" 48)}
wvSetPosition -win $_nWave2 {("G1" 1074)}
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
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvSelectSignal -win $_nWave2 {( "G1" 1023 )} 
wvSetCursor -win $_nWave2 1286428336.385780 -snap {("G1" 1023)}
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
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 12
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 9
wvScrollUp -win $_nWave2 39
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 949
wvScrollUp -win $_nWave2 39
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 90
wvScrollUp -win $_nWave2 18
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 15
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 6
wvSelectSignal -win $_nWave2 {( "G1" 1016 )} 
wvScrollUp -win $_nWave2 1012
wvScrollDown -win $_nWave2 42
wvSelectSignal -win $_nWave2 {( "G1" 49 50 51 52 53 54 55 56 57 58 59 60 61 62 \
           63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 \
           85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 \
           106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 \
           123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 \
           140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 \
           157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 \
           174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 \
           191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 \
           208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 \
           225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 \
           242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 \
           259 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 \
           276 277 278 279 280 281 282 283 284 285 286 287 288 289 290 291 292 \
           293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 \
           310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 \
           327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 342 343 \
           344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359 360 \
           361 362 363 364 365 366 367 368 369 370 371 372 373 374 375 376 377 \
           378 379 380 381 382 383 384 385 386 387 388 389 390 391 392 393 394 \
           395 396 397 398 399 400 401 402 403 404 405 406 407 408 409 410 411 \
           412 413 414 415 416 417 418 419 420 421 422 423 424 425 426 427 428 \
           429 430 431 432 433 434 435 436 437 438 439 440 441 442 443 444 445 \
           446 447 448 449 450 451 452 453 454 455 456 457 458 459 460 461 462 \
           463 464 465 466 467 468 469 470 471 472 473 474 475 476 477 478 479 \
           480 481 482 483 484 485 486 487 488 489 490 491 492 493 494 495 496 \
           497 498 499 500 501 502 503 504 505 506 507 508 509 510 511 512 513 \
           514 515 516 517 518 519 520 521 522 523 524 525 526 527 528 529 530 \
           531 532 533 534 535 536 537 538 539 540 541 542 543 544 545 546 547 \
           548 549 550 551 552 553 554 555 556 557 558 559 560 561 562 563 564 \
           565 566 567 568 569 570 571 572 573 574 575 576 577 578 579 580 581 \
           582 583 584 585 586 587 588 589 590 591 592 593 594 595 596 597 598 \
           599 600 601 602 603 604 605 606 607 608 609 610 611 612 613 614 615 \
           616 617 618 619 620 621 622 623 624 625 626 627 628 629 630 631 632 \
           633 634 635 636 637 638 639 640 641 642 643 644 645 646 647 648 649 \
           650 651 652 653 654 655 656 657 658 659 660 661 662 663 664 665 666 \
           667 668 669 670 671 672 673 674 675 676 677 678 679 680 681 682 683 \
           684 685 686 687 688 689 690 691 692 693 694 695 696 697 698 699 700 \
           701 702 703 704 705 706 707 708 709 710 711 712 713 714 715 716 717 \
           718 719 720 721 722 723 724 725 726 727 728 729 730 731 732 733 734 \
           735 736 737 738 739 740 741 742 743 744 745 746 747 748 749 750 751 \
           752 753 754 755 756 757 758 759 760 761 762 763 764 765 766 767 768 \
           769 770 771 772 773 774 775 776 777 778 779 780 781 782 783 784 785 \
           786 787 788 789 790 791 792 793 794 795 796 797 798 799 800 801 802 \
           803 804 805 806 807 808 809 810 811 812 813 814 815 816 817 818 819 \
           820 821 822 823 824 825 826 827 828 829 830 831 832 833 834 835 836 \
           837 838 839 840 841 842 843 844 845 846 847 848 849 850 851 852 853 \
           854 855 856 857 858 859 860 861 862 863 864 865 866 867 868 869 870 \
           871 872 873 874 875 876 877 878 879 880 881 882 883 884 885 886 887 \
           888 889 890 891 892 893 894 895 896 897 898 899 900 901 902 903 904 \
           905 906 907 908 909 910 911 912 913 914 915 916 917 918 919 920 921 \
           922 923 924 925 926 927 928 929 930 931 932 933 934 935 936 937 938 \
           939 940 941 942 943 944 945 946 947 948 949 950 951 952 953 954 955 \
           956 957 958 959 960 961 962 963 964 965 966 967 968 969 970 971 972 \
           973 974 975 976 977 978 979 980 981 982 983 984 985 986 987 988 989 \
           990 991 992 993 994 995 996 997 998 999 1000 1001 1002 1003 1004 1005 \
           1006 1007 1008 1009 1010 1011 1012 1013 1014 1015 1016 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 106)}
wvSelectSignal -win $_nWave2 {( "G1" 48 )} 
wvSetPosition -win $_nWave2 {("G1" 48)}
wvCollapseBus -win $_nWave2 {("G1" 48)}
wvSetPosition -win $_nWave2 {("G1" 48)}
wvSetPosition -win $_nWave2 {("G1" 50)}
wvSelectSignal -win $_nWave2 {( "G1" 49 )} 
wvZoom -win $_nWave2 1286202273.983626 1286762867.767245
wvSetCursor -win $_nWave2 1286411609.636377 -snap {("G1" 50)}
wvScrollDown -win $_nWave2 0
wvSetMarker -win $_nWave2 1286410000.000000
wvZoom -win $_nWave2 1286339859.939739 1286610301.103989
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 42 )} 
wvSelectSignal -win $_nWave2 {( "G1" 41 )} 
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("G1" 41)}
wvSetPosition -win $_nWave2 {("G1" 50)}
wvSetPosition -win $_nWave2 {("G1" 34)}
wvSetPosition -win $_nWave2 {("G1" 50)}
wvScrollDown -win $_nWave2 0
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.u_alu.sum\[31:0\]" -win \
           $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 1286348608.387351 -snap {("G1" 46)}
wvSelectSignal -win $_nWave2 {( "G1" 48 )} 
wvSelectSignal -win $_nWave2 {( "G1" 48 )} 
wvSetPosition -win $_nWave2 {("G1" 48)}
wvExpandBus -win $_nWave2 {("G1" 48)}
wvSetPosition -win $_nWave2 {("G1" 1074)}
wvScrollUp -win $_nWave2 17
wvScrollUp -win $_nWave2 1040
wvScrollDown -win $_nWave2 41
wvSelectSignal -win $_nWave2 {( "G1" 48 )} 
wvSetPosition -win $_nWave2 {("G1" 48)}
wvCollapseBus -win $_nWave2 {("G1" 48)}
wvSetPosition -win $_nWave2 {("G1" 48)}
wvSetPosition -win $_nWave2 {("G1" 50)}
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 47 )} 
wvSelectSignal -win $_nWave2 {( "G1" 46 47 )} 
wvSetPosition -win $_nWave2 {("G1" 46)}
wvSetPosition -win $_nWave2 {("G1" 47)}
wvSetPosition -win $_nWave2 {("G1" 48)}
wvSetPosition -win $_nWave2 {("G1" 49)}
wvSetPosition -win $_nWave2 {("G1" 50)}
wvSetPosition -win $_nWave2 {("G1" 51)}
wvSetPosition -win $_nWave2 {("G1" 50)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 50)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetMarker -win $_nWave2 1286370000.000000
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcTraceLoad "tb.u_fpga_top.u_starsea_core.u_alu.load_ex" -win $_nTrace1
srcSearchString "load_ex" -win $_nTrace1 -next -case
srcSearchString "load_ex" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("G1" 52)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {198 198 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_to_dbus" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 3)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 4)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_ex" -win $_nTrace1
srcAction -pos 136 5 7 -win $_nTrace1 -name "i_type_ari_ex" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {291 291 3 4 1 1}
srcSearchString "load_ex" -win $_nTrace1 -next -case
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_ex" -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {291 291 3 4 1 1}
srcSearchString "i_type_ari_ex" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_ex" -win $_nTrace1
srcAction -pos 312 4 11 -win $_nTrace1 -name "i_type_ari_ex" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_ex" -win $_nTrace1
srcAction -pos 312 4 11 -win $_nTrace1 -name "i_type_ari_ex" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "opcode" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "opcode" -win $_nTrace1
srcAction -pos 100 7 4 -win $_nTrace1 -name "opcode" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "opcode" -win $_nTrace1
srcAction -pos 100 7 3 -win $_nTrace1 -name "opcode" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst\[6:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst\[6:0\]" -win $_nTrace1
srcAction -pos 69 6 3 -win $_nTrace1 -name "inst\[6:0\]" -ctrlKey off
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 8 9 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 7)}
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAction -pos 139 10 0 -win $_nTrace1 -name "a" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_funct7_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_funct3_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAction -pos 138 12 0 -win $_nTrace1 -name "a" -ctrlKey off
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 8 9 10 11 12 13 14 15 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 7)}
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_regs" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_regs" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_val" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 1286390011.370729 -snap {("G1" 50)}
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcSearchString "store_ex" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcSearchString "store_ex" -win $_nTrace1 -next -case
srcSearchString "store_ex" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 14 15 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 13)}
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 12)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 1286410170.838669 -snap {("G2" 15)}
wvSetMarker -win $_nWave2 1286410000.000000
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {198 198 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAction -pos 201 4 7 -win $_nTrace1 -name "dram_wdat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "s_type_store_funct3_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[1:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_wdat\[15:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[1:0\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_wdat\[15:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "s_type_store_funct3_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[1:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[1:0\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[1:0\]" -win $_nTrace1
srcAction -pos 95 9 6 -win $_nTrace1 -name "dram_addr\[1:0\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 14 15 16 17 18 19 20 21 22 23 24 25 )} 
wvSelectSignal -win $_nWave2 {( "G2" 13 )} 
wvSelectSignal -win $_nWave2 {( "G2" 13 14 15 16 17 18 19 20 21 22 23 24 25 )} \
           
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 12)}
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "a0" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1283713461.634316 1288716052.621951
wvZoom -win $_nWave2 1285250826.093632 1286939464.401694
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 1285746017.495575 1286659212.192410
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
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
srcDeselectAll -win $_nTrace1
srcSelect -signal "a5" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1284681908.062676 1287795246.944713
wvZoom -win $_nWave2 1285465716.303751 1286810013.120608
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 1285651951.516025 1286213493.224332
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 1285791744.599503 -snap {("G2" 14)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 1285989587.353273 -snap {("G1" 49)}
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1285681568.694169 1286681444.647358
wvSetCursor -win $_nWave2 1286109785.610661 -snap {("G1" 49)}
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "s0_fp" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
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
wvZoom -win $_nWave2 1117475990.754689 1477487585.714318
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 16 )} 
wvExpandBus -win $_nWave2 {("G2" 16)}
wvSelectSignal -win $_nWave2 {( "G2" 1040 )} 
wvExpandBus -win $_nWave2 {("G2" 1040)}
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvSelectSignal -win $_nWave2 {( "G2" 1069 )} 
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvScrollUp -win $_nWave2 1
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
wvZoomAll -win $_nWave2
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
srcDeselectAll -win $_nTrace1
wvZoom -win $_nWave2 660548523.206751 2993776371.308017
wvZoom -win $_nWave2 6563228.827289 134546190.959426
wvZoom -win $_nWave2 12323362.144066 25103657.940665
wvSelectSignal -win $_nWave2 {( "G2" 1069 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 1040 )} 
wvSetPosition -win $_nWave2 {("G2" 1040)}
wvCollapseBus -win $_nWave2 {("G2" 1040)}
wvSetPosition -win $_nWave2 {("G2" 1040)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 372890295.358650 -snap {("G2" 1036)}
wvSetMarker -win $_nWave2 363190000.000000
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 2461075949.367088 -snap {("G2" 1034)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 213080168.776371 1235864978.902953
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 462 )} 
wvSelectSignal -win $_nWave2 {( "G2" 461 )} 
wvSelectSignal -win $_nWave2 {( "G2" 462 )} 
wvSetCursor -win $_nWave2 363225266.606135 -snap {("G2" 463)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 26
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 255
wvScrollUp -win $_nWave2 26
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 90
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 8
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 5
wvScrollUp -win $_nWave2 27
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 131
wvScrollUp -win $_nWave2 26
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 10
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 26
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 45
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 4
wvScrollUp -win $_nWave2 27
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 55
wvScrollUp -win $_nWave2 26
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 35
wvScrollUp -win $_nWave2 94
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 353874913.208353 -snap {("G2" 1035)}
wvSetMarker -win $_nWave2 352850000.000000
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
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G2" 995 )} 
wvSelectSignal -win $_nWave2 {( "G2" 995 996 )} 
wvZoom -win $_nWave2 12227385.212484 200672969.075469
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 74578059.071730 1214556962.025316
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst_n" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we_byte" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 86603152.984733 134703528.636783
wvZoom -win $_nWave2 90290171.934149 93537454.678591
wvZoom -win $_nWave2 90758310.445118 91911529.703869
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 3944626.212773 28235219.207215
wvZoom -win $_nWave2 4952463.756142 8266370.254681
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 58261.366008 1095313.680952
wvSetCursor -win $_nWave2 214329.717202 -snap {("G2" 1040)}
wvSetMarker -win $_nWave2 210000.000000
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 88162.311798 403216.179629
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 8
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 15
wvScrollUp -win $_nWave2 29
wvScrollUp -win $_nWave2 16
wvScrollUp -win $_nWave2 33
wvScrollUp -win $_nWave2 29
wvScrollUp -win $_nWave2 17
wvScrollUp -win $_nWave2 26
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 644
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 26
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 691
wvScrollUp -win $_nWave2 27
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 235
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 4
wvScrollUp -win $_nWave2 26
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 315
wvScrollUp -win $_nWave2 24
wvScrollDown -win $_nWave2 10
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 8
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 13
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 6
wvScrollUp -win $_nWave2 26
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 74
wvScrollUp -win $_nWave2 107
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvSetCursor -win $_nWave2 190743.142181 -snap {("G2" 1042)}
wvSetMarker -win $_nWave2 190000.000000
wvSetCursor -win $_nWave2 209132.362315 -snap {("G2" 1040)}
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 8
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 12
wvScrollUp -win $_nWave2 15
wvScrollUp -win $_nWave2 8
wvScrollUp -win $_nWave2 13
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 11
wvScrollUp -win $_nWave2 20
wvScrollUp -win $_nWave2 11
wvScrollUp -win $_nWave2 18
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 13
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 11
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 16
wvScrollUp -win $_nWave2 13
wvScrollUp -win $_nWave2 8
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 11
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 15
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 29
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 13
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 11
wvScrollUp -win $_nWave2 12
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 17
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 15
wvScrollUp -win $_nWave2 16
wvScrollUp -win $_nWave2 15
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 15
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 13
wvScrollUp -win $_nWave2 12
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 26
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 267
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 46 )} 
wvSetPosition -win $_nWave2 {("G1" 46)}
wvExpandBus -win $_nWave2 {("G1" 46)}
wvSetPosition -win $_nWave2 {("G2" 1043)}
wvScrollUp -win $_nWave2 1046
wvScrollDown -win $_nWave2 26
wvSelectSignal -win $_nWave2 {( "G1" 46 )} 
wvSetPosition -win $_nWave2 {("G1" 46)}
wvCollapseBus -win $_nWave2 {("G1" 46)}
wvSetPosition -win $_nWave2 {("G1" 46)}
wvSetPosition -win $_nWave2 {("G2" 1043)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 16 )} 
wvSetPosition -win $_nWave2 {("G2" 16)}
wvCollapseBus -win $_nWave2 {("G2" 16)}
wvSetPosition -win $_nWave2 {("G2" 16)}
wvSetPosition -win $_nWave2 {("G2" 19)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSetPosition -win $_nWave2 {("G2" 0)}
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ra" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 171246.137702 -snap {("G2" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "tb.u_fpga_top.u_starsea_core.u_regs.regs\[1\]" \
          -line 145 -pos 1
srcAction -pos 144 11 11 -win $_nTrace1 -name \
          "tb.u_fpga_top.u_starsea_core.u_regs.regs\[1\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 34 5 4 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAction -pos 78 14 6 -win $_nTrace1 -name "alu_rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcSearchString "store_ex" -win $_nTrace1 -next -case
srcAddSelectedToWave -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAction -pos 78 14 2 -win $_nTrace1 -name "alu_rd_dat" -ctrlKey off
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_regs" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_regs" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_val" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 26 8 4 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAction -pos 78 14 2 -win $_nTrace1 -name "alu_rd_dat" -ctrlKey off
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
srcSelect -signal "add_res" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "lui_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jal_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 15 )} 
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {198 198 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 205 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 18 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 362236286.919831 3068354430.379746
wvZoom -win $_nWave2 1123450954.559720 1544022058.430776
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 1278133575.743643 1301794397.339764
wvZoom -win $_nWave2 1285754290.434296 1287767623.354923
wvZoom -win $_nWave2 1286279569.276161 1286777947.045542
wvSetCursor -win $_nWave2 1286447097.105651 -snap {("G2" 22)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 21 )} 
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 543354430.379747 2525000000.000000
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 851331695.419134 1347439868.966821
wvZoom -win $_nWave2 903663781.236367 1003792505.433403
wvZoom -win $_nWave2 917042443.400461 930632347.598793
wvSelectSignal -win $_nWave2 {( "G2" 27 )} 
wvSearchPrev -win $_nWave2
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
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvZoom -win $_nWave2 1286277020.206675 1286917332.148509
wvZoom -win $_nWave2 1286335557.865943 1286680930.059604
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 205 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvBusWaveform -win $_nWave2 -analog
wvSetPosition -win $_nWave2 {("G2" 21)}
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 106540084.388186 799050632.911392
wvSetCursor -win $_nWave2 329097975.158216 -snap {("G2" 21)}
wvSetCursor -win $_nWave2 345655892.633455 -snap {("G2" 21)}
wvZoom -win $_nWave2 340785916.905443 377310734.865528
wvZoom -win $_nWave2 344073664.232327 348697058.910819
wvZoom -win $_nWave2 345341683.869861 346326837.588274
wvSetCursor -win $_nWave2 345687388.304039 -snap {("G2" 21)}
wvSetCursor -win $_nWave2 345631964.747448 -snap {("G2" 21)}
wvSetCursor -win $_nWave2 345530816.756668 -snap {("G2" 21)}
wvSetCursor -win $_nWave2 345480935.555736 -snap {("G2" 21)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 42616033.755274 607278481.012658
wvZoom -win $_nWave2 52146201.641461 98208679.758097
wvZoom -win $_nWave2 2850561.233660 6122228.104110
wvSetCursor -win $_nWave2 3582199.816502 -snap {("G2" 21)}
srcDeselectAll -win $_nTrace1
srcSelect -word -line 202 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 4366755.655337 -snap {("G2" 21)}
wvSetCursor -win $_nWave2 4438078.913413 -snap {("G2" 21)}
wvSetCursor -win $_nWave2 4444981.164195 -snap {("G2" 21)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 342204390.747741 382844843.349452
wvZoom -win $_nWave2 351264182.220796 356780080.499368
wvSetCursor -win $_nWave2 352470542.533384 -snap {("G2" 22)}
wvSetCursor -win $_nWave2 352311504.678657 -snap {("G2" 21)}
wvSetCursor -win $_nWave2 352365810.287588 -snap {("G2" 21)}
wvSetCursor -win $_nWave2 352346415.427255 -snap {("G2" 21)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1213466589.509444 1410083925.616539
wvZoom -win $_nWave2 1273336706.621779 1307903748.834700
wvZoom -win $_nWave2 1282695575.293275 1289526333.986545
wvSetCursor -win $_nWave2 1284011769.302814 -snap {("G2" 22)}
wvZoom -win $_nWave2 1286106151.011862 1287508810.321592
wvSetCursor -win $_nWave2 1286451390.644196 -snap {("G2" 21)}
wvZoom -win $_nWave2 1286319213.184630 1286659520.823066
wvSelectSignal -win $_nWave2 {( "G2" 19 )} 
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvSetCursor -win $_nWave2 1286495828.540657 -snap {("G2" 21)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 1267827004.219409 1640717299.578059
srcDeselectAll -win $_nTrace1
wvZoom -win $_nWave2 1297458933.456361 1316339454.740343
wvSetCursor -win $_nWave2 1302623858.054783 -snap {("G2" 25)}
wvZoomAll -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 13
wvScrollDown -win $_nWave2 10
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 18
wvScrollDown -win $_nWave2 22
wvScrollDown -win $_nWave2 14
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G2" 33 )} 
wvSelectAll -win $_nWave2
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 26 )} 
wvSelectAll -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSelectGroup -win $_nWave2 {G2}
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
wvSetCursor -win $_nWave2 1129669901.195462
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 2386497890.295359 -snap {("G1" 0)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 2270663460775.246094 2494454811476.652344
wvZoom -win $_nWave2 2387280472638.637207 2419070805157.402344
wvZoom -win $_nWave2 2404874700270.330566 2408787012640.783691
wvZoom -win $_nWave2 2407284816751.706543 2407777294891.166016
wvZoom -win $_nWave2 2469509008490.877441 2469546411893.874512
wvZoom -win $_nWave2 2469536285093.484863 2469541098611.592285
wvZoom -win $_nWave2 2469539995090.563477 2469540221887.830078
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 371166142626.722900 499436794858.016846
wvZoom -win $_nWave2 385147824128.704651 388575591206.615417
wvZoom -win $_nWave2 385562434492.554199 385632339728.320312
wvZoom -win $_nWave2 385571529055.521606 385574871921.929565
wvZoom -win $_nWave2 385572053288.417725 385572163776.969849
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 4942925.268581 5460092.499901
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
wvZoom -win $_nWave2 475206129.716376 529579244.872011
wvZoom -win $_nWave2 501551471.729122 508166485.035680
wvZoom -win $_nWave2 505319517.283468 505984740.140597
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 1735747549342.615967 2458975694902.039062
wvZoom -win $_nWave2 2201115870852.371094 2263673579645.485840
wvZoom -win $_nWave2 2239785509410.140137 2241985147553.358398
wvZoom -win $_nWave2 2240775501260.814941 2240953390421.483398
wvZoom -win $_nWave2 2240851936054.885742 2240860818003.132812
wvZoom -win $_nWave2 2240855377653.679199 2240856595642.362793
wvZoom -win $_nWave2 2240855715983.869141 2240855900138.276367
wvSetCursor -win $_nWave2 2240855769986.954590 -snap {("G2" 1)}
wvSetMarker -win $_nWave2 2240855770000.000000
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 84604047216.385361 185583071313.361450
wvZoom -win $_nWave2 104203351471.489288 119257889522.515259
wvZoom -win $_nWave2 109592071491.071030 112143508671.308212
wvZoom -win $_nWave2 110772694321.236328 110896498235.045303
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 98249861283.544296 -snap {("G2" 1)}
wvSetWindowTimeUnit -win $_nWave2 1.000000 ms
wvZoom -win $_nWave2 60.041582 537.645074
wvZoom -win $_nWave2 95.307663 175.244112
wvZoom -win $_nWave2 109.810900 116.612806
wvZoom -win $_nWave2 110.576234 111.575952
wvZoom -win $_nWave2 110.757618 110.939704
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 110.848661 -snap {("G2" 2)}
wvSetMarker -win $_nWave2 110.852750
wvZoom -win $_nWave2 110.697050 111.512469
wvZoom -win $_nWave2 110.947640 110.983192
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSetSearchMode -win $_nWave2 -value "Xxxxxxxx" -case off -skipGlitch off -X2Y \
           off
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSearchNext -win $_nWave2
wvZoom -win $_nWave2 111.255682 111.261007
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 111.259483 111.269250
wvZoom -win $_nWave2 111.261489 111.262457
wvZoom -win $_nWave2 111.261587 111.261783
wvSetMarker -win $_nWave2 111.261630
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a5" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 111.261573 -snap {("G2" 1)}
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 111.261063 111.262014
wvZoom -win $_nWave2 111.261313 111.261761
wvSetCursor -win $_nWave2 111.261433 -snap {("G2" 7)}
wvSetCursor -win $_nWave2 111.261333 -snap {("G2" 7)}
wvZoom -win $_nWave2 111.261323 111.261474
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 111.261134 111.261558
wvSelectGroup -win $_nWave2 {G3}
wvZoom -win $_nWave2 111.261158 111.261283
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 111.261128 111.262172
wvZoom -win $_nWave2 111.261393 111.261874
wvZoom -win $_nWave2 111.261541 111.261780
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 111.260863 111.261520
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 111.261195 111.261797
wvZoom -win $_nWave2 111.261506 111.261736
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvSetCursor -win $_nWave2 111.261564 -snap {("G2" 6)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 112.612869 121.065049
wvZoom -win $_nWave2 116.072200 117.005388
wvZoom -win $_nWave2 116.182450 116.265794
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 103.912096 131.505977
wvZoom -win $_nWave2 114.254950 117.262722
wvZoom -win $_nWave2 116.042269 116.488570
wvZoom -win $_nWave2 116.293666 116.347649
wvZoom -win $_nWave2 116.313597 116.322252
wvZoom -win $_nWave2 116.317772 116.320335
wvZoom -win $_nWave2 116.318421 116.318942
wvZoom -win $_nWave2 116.318543 116.318723
wvSetCursor -win $_nWave2 116.318612 -snap {("G2" 2)}
wvSetMarker -win $_nWave2 116.318630
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvSetCursor -win $_nWave2 116.318599 -snap {("G2" 6)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 101.923347 138.715190
wvZoom -win $_nWave2 115.713820 117.369712
wvZoom -win $_nWave2 116.225027 116.449772
wvZoom -win $_nWave2 116.312270 116.328865
wvZoom -win $_nWave2 116.318175 116.320369
wvZoom -win $_nWave2 116.318348 116.318815
wvZoom -win $_nWave2 116.318449 116.318663
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSetCursor -win $_nWave2 116.318511 -snap {("G2" 2)}
wvSetMarker -win $_nWave2 116.318530
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 116.318532 -snap {("G2" 6)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 103.912096 135.234880
wvZoom -win $_nWave2 115.101951 116.291424
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 112.364276 129.268636
wvZoom -win $_nWave2 115.918709 117.036156
wvZoom -win $_nWave2 116.146599 116.393349
wvZoom -win $_nWave2 116.302943 116.323766
wvZoom -win $_nWave2 116.313516 116.315434
wvZoom -win $_nWave2 116.314124 116.314533
wvZoom -win $_nWave2 116.314198 116.314338
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvSetCursor -win $_nWave2 116.314221 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 114.353024 124.296765
wvZoom -win $_nWave2 116.066256 116.807492
wvZoom -win $_nWave2 116.293006 116.344089
wvZoom -win $_nWave2 116.314237 116.317398
wvZoom -win $_nWave2 116.314390 116.315084
wvZoom -win $_nWave2 116.314430 116.314815
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 116.314535 -snap {("G2" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvSetCursor -win $_nWave2 64.344781 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 3.244275 23.070398
wvZoom -win $_nWave2 4.763999 7.399116
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 3.119871 21.579109
wvZoom -win $_nWave2 4.833387 6.715658
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "intr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 5.045176 5.197399
wvZoom -win $_nWave2 5.072045 5.084998
wvZoom -win $_nWave2 5.073202 5.077018
wvZoom -win $_nWave2 5.074219 5.075945
wvZoom -win $_nWave2 5.074776 5.075326
wvSetCursor -win $_nWave2 5.074994 -snap {("G2" 7)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 6.759721 26.518905
wvZoom -win $_nWave2 7.579546 9.302569
wvZoom -win $_nWave2 7.899432 8.155099
wvZoom -win $_nWave2 7.954270 7.988251
wvZoom -win $_nWave2 7.965429 7.969109
wvSetCursor -win $_nWave2 7.965885 -snap {("G2" 7)}
wvSetMarker -win $_nWave2 7.965910
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvZoom -win $_nWave2 7.965797 7.966382
wvZoom -win $_nWave2 7.965844 7.966081
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSetCursor -win $_nWave2 7.965888 -snap {("G2" 5)}
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSetCursor -win $_nWave2 7.965889 -snap {("G2" 5)}
wvSetCursor -win $_nWave2 7.965929 -snap {("G2" 2)}
wvSetMarker -win $_nWave2 7.965930
wvSetCursor -win $_nWave2 7.965891 -snap {("G2" 4)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 5.979753 21.839098
wvZoom -win $_nWave2 7.117343 10.217834
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 5.719764 34.578572
wvZoom -win $_nWave2 7.323031 10.773099
wvZoom -win $_nWave2 7.757322 8.230433
wvZoom -win $_nWave2 7.925672 8.015836
wvZoom -win $_nWave2 7.959658 7.976968
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
srcDeselectAll -win $_nTrace1
wvZoom -win $_nWave2 7.965246 7.967035
wvZoom -win $_nWave2 7.965676 7.966279
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
srcDeselectAll -win $_nTrace1
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
srcDeselectAll -win $_nTrace1
wvSetPosition -win $_nWave2 {("G2" 4)}
srcTraceConnectivity "tb.u_fpga_top.u_starsea_core.u_alu.load_ex" -win $_nTrace1
nsMsgSwitchTab -tab trace
wvSetPosition -win $_nWave2 {("G2" 5)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAction -pos 76 6 6 -win $_nTrace1 -name "load_ex" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "opcode" -win $_nTrace1
srcAction -pos 112 7 2 -win $_nTrace1 -name "opcode" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {291 291 3 4 1 1}
srcSearchString "load_ex" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 4.679807 20.019173
wvZoom -win $_nWave2 7.247155 9.393803
wvZoom -win $_nWave2 7.906849 8.062338
wvZoom -win $_nWave2 7.963053 7.977268
wvZoom -win $_nWave2 7.964662 7.968321
wvZoom -win $_nWave2 7.965653 7.966538
wvZoom -win $_nWave2 7.965824 7.966204
wvSetCursor -win $_nWave2 7.965927 -snap {("G2" 8)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 109.381153 148.907525
wvZoom -win $_nWave2 116.719383 123.446093
wvZoom -win $_nWave2 117.769544 118.360851
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 106.895218 137.720816
wvZoom -win $_nWave2 118.167588 119.598312
wvZoom -win $_nWave2 118.553944 118.728006
wvZoom -win $_nWave2 118.586382 118.600336
wvZoom -win $_nWave2 118.589218 118.591887
wvZoom -win $_nWave2 118.589789 118.590532
wvZoom -win $_nWave2 118.589947 118.590215
wvSetCursor -win $_nWave2 118.590010 -snap {("G2" 2)}
wvSetMarker -win $_nWave2 118.590030
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_pc" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_pc" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 118.589655 118.590116
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {291 291 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "jal_ex" -win $_nTrace1
srcSelect -signal "jal_imm_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 7)}
wvZoom -win $_nWave2 118.589548 118.591093
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 67.617440 85.267581
wvZoom -win $_nWave2 70.149528 70.807374
wvZoom -win $_nWave2 70.220309 70.302655
wvZoom -win $_nWave2 70.231369 70.238319
wvSetCursor -win $_nWave2 70.231716 -snap {("G2" 7)}
wvScrollDown -win $_nWave2 0
wvSetMarker -win $_nWave2 70.231750
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 70.231423 70.232845
wvZoom -win $_nWave2 70.231570 70.231974
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSetCursor -win $_nWave2 70.231630 -snap {("G2" 3)}
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "jal_imm_ex" -win $_nTrace1
srcSearchString "jal_imm_ex" -win $_nTrace1 -next -case
srcSearchString "jal_imm_ex" -win $_nTrace1 -next -case
srcSearchString "jal_imm_ex" -win $_nTrace1 -next -case
srcSearchString "jal_imm_ex" -win $_nTrace1 -next -case
srcSearchString "jal_imm_ex" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcSelect -signal "jal_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jal_ex" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 8 )} 
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
wvZoom -win $_nWave2 70.201315 70.299361
wvZoom -win $_nWave2 70.260543 70.268679
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 91.731013 146.918776
wvZoom -win $_nWave2 112.727201 118.432265
wvZoom -win $_nWave2 113.176545 114.083257
wvZoom -win $_nWave2 113.231382 113.384413
wvZoom -win $_nWave2 113.249138 113.284114
wvZoom -win $_nWave2 113.253713 113.269553
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 112.814642 112.853139
wvZoom -win $_nWave2 112.818297 112.820950
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 111.618495 131.257384
wvZoom -win $_nWave2 117.598551 118.827707
wvZoom -win $_nWave2 118.034201 118.102488
wvZoom -win $_nWave2 118.047263 118.051393
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 110.126934 128.771449
wvZoom -win $_nWave2 117.194018 120.157211
wvZoom -win $_nWave2 118.383879 118.769386
wvZoom -win $_nWave2 118.564704 118.602116
wvZoom -win $_nWave2 118.569440 118.593092
wvSetCursor -win $_nWave2 118.581050 -snap {("G2" 8)}
wvSetCursor -win $_nWave2 118.580651 -snap {("G2" 8)}
wvSetCursor -win $_nWave2 118.571203 -snap {("G2" 8)}
wvZoom -win $_nWave2 118.588535 118.592593
wvZoom -win $_nWave2 118.589502 118.590964
wvZoom -win $_nWave2 118.589845 118.590358
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 29.582630 47.232771
wvZoom -win $_nWave2 31.444459 32.586381
wvZoom -win $_nWave2 31.562506 31.591415
wvZoom -win $_nWave2 31.564295 31.568585
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 8 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvScrollDown -win $_nWave2 0
wvVerilogExpression -win $_nWave2 "logical_expression_2s" \
           "\"/tb/u_fpga_top/u_starsea_core/jal_ex\"&\"/tb/u_fpga_top/u_starsea_core/u_pc/pc_jump_en\"==1"
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 8 )} 
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 2.485935 8.700774
wvZoom -win $_nWave2 2.686978 3.770860
wvZoom -win $_nWave2 2.959092 3.106201
wvZoom -win $_nWave2 3.005231 3.012576
wvZoom -win $_nWave2 3.007132 3.008269
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 9 )} 
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvZoom -win $_nWave2 3.007298 3.007780
wvSetCursor -win $_nWave2 3.007526 -snap {("G2" 8)}
srcSearchString "jal_imm_ex" -win $_nTrace1 -next -case
srcSearchString "jal_imm_ex" -win $_nTrace1 -next -case
srcSearchString "jal_imm_ex" -win $_nTrace1 -next -case
srcSearchString "jal_imm_ex" -win $_nTrace1 -next -case
srcSearchString "jal_imm_ex" -win $_nTrace1 -next -case
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 108.635373 141.449719
wvZoom -win $_nWave2 118.142764 120.981136
wvZoom -win $_nWave2 118.478099 118.767525
wvZoom -win $_nWave2 118.581698 118.616299
wvZoom -win $_nWave2 118.587684 118.594424
wvZoom -win $_nWave2 118.589798 118.590500
wvZoom -win $_nWave2 118.589934 118.590136
wvSetCursor -win $_nWave2 118.590010 -snap {("G2" 2)}
wvSetMarker -win $_nWave2 118.590030
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 103.663502 118.330520
wvZoom -win $_nWave2 106.582466 107.490129
wvZoom -win $_nWave2 106.752892 106.807786
wvZoom -win $_nWave2 106.762697 106.766017
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jal_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_ex" -win $_nTrace1
srcAction -pos 59 2 6 -win $_nTrace1 -name "btype_ex" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAction -pos 48 4 4 -win $_nTrace1 -name "dram_we" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAction -pos 164 5 6 -win $_nTrace1 -name "store_ex" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "lui_ex" -win $_nTrace1
srcAction -pos 148 5 3 -win $_nTrace1 -name "lui_ex" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "auipc_ex" -win $_nTrace1
srcAction -pos 149 5 5 -win $_nTrace1 -name "auipc_ex" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_ex" -win $_nTrace1
srcAction -pos 150 5 5 -win $_nTrace1 -name "jalr_ex" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_ex" -win $_nTrace1
srcAction -pos 136 5 6 -win $_nTrace1 -name "i_type_ari_ex" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAction -pos 123 5 6 -win $_nTrace1 -name "r_type_ex" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAction -pos 110 5 7 -win $_nTrace1 -name "r_type_ex" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {291 291 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
srcSearchString "load_ex" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAction -pos 50 2 3 -win $_nTrace1 -name "load_ex" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAction -pos 50 2 3 -win $_nTrace1 -name "load_ex" -ctrlKey off
srcBackwardHistory -win $_nTrace1
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSelectSignal -win $_nWave2 {( "G2" 10 )} 
wvSelectSignal -win $_nWave2 {( "G2" 9 )} 
wvVerilogExpression -win $_nWave2 "logical_expression_3" \
           "\"/tb/u_fpga_top/u_starsea_core/u_alu/load_ex\"&\"/tb/u_fpga_top/u_starsea_core/u_pc/pc_jump_en\"==1"
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvZoom -win $_nWave2 97.448664 145.427215
wvZoom -win $_nWave2 112.665490 120.155812
wvZoomAll -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 15.412799 61.651195
wvZoom -win $_nWave2 1.495757 5.690379
wvZoom -win $_nWave2 1.708143 2.407247
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 105.900844 157.111111
wvZoom -win $_nWave2 117.821096 121.998586
wvZoom -win $_nWave2 118.543784 118.708299
wvZoom -win $_nWave2 118.588673 118.600936
wvZoom -win $_nWave2 118.589664 118.592743
wvZoom -win $_nWave2 118.589900 118.590507
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 14.418425 42.012307
wvZoom -win $_nWave2 16.417138 19.036810
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcAction -pos 50 2 5 -win $_nTrace1 -name "load_ex" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {291 291 3 4 1 1}
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 16.655767 30.825598
wvZoom -win $_nWave2 17.283544 18.050827
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "lui_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "auipc_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "s_type_store_funct3_wb" -win $_nTrace1
srcAction -pos 321 4 20 -win $_nTrace1 -name "s_type_store_funct3_wb" -ctrlKey \
          off
srcBackwardHistory -win $_nTrace1
wvSetCursor -win $_nWave2 102.171941 -snap {("G2" 8)}
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 8 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetMarker -win $_nWave2 111.336910
wvZoom -win $_nWave2 98.194444 150.150492
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 115.768888 120.153365
wvZoom -win $_nWave2 117.711378 118.096792
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 112.115682 129.268636
wvZoom -win $_nWave2 118.074584 119.027526
wvZoom -win $_nWave2 118.514868 118.664309
wvZoom -win $_nWave2 118.577293 118.604407
wvZoom -win $_nWave2 118.589401 118.592737
wvZoom -win $_nWave2 118.589849 118.590499
wvZoom -win $_nWave2 118.589948 118.590160
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 -2 "25" "1882" "641"
verdiWindowResize -win $_Verdi_1 -2 "25" "1878" "637"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 -2 "25" "1878" "579"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 -2 "25" "1878" "579"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvSetCursor -win $_nWave2 118.589977 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 118.590011 -snap {("G2" 2)}
wvZoomAll -win $_nWave2
srcHBSelect "tb.u_fpga_top.u_timer" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_timer" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {123 123 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "timer_cnt" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 98.691632 108.138186
wvZoom -win $_nWave2 101.309031 101.727549
wvZoom -win $_nWave2 101.424992 101.449715
wvZoom -win $_nWave2 101.431685 101.434311
wvZoom -win $_nWave2 101.432345 101.432653
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 99.437412 -snap {("G2" 6)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 12.579631 13.412325
wvZoom -win $_nWave2 12.810350 12.843728
wvZoom -win $_nWave2 12.819926 12.820631
wvSetCursor -win $_nWave2 12.820128 -snap {("G2" 12)}
wvSetMarker -win $_nWave2 12.820150
wvSetWindowTimeUnit -win $_nWave2 1.000000 ns
wvSetCursor -win $_nWave2 13135348.064515 -snap {("G2" 12)}
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
wvScrollDown -win $_nWave2 0
wvSetMarker -win $_nWave2 13135370.000000
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 -2 "25" "1878" "579"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "579"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 -2 "25" "1878" "579"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 -2 "25" "1878" "579"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 -2 "25" "1878" "579"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvSetCursor -win $_nWave2 13135347.049754 -snap {("G2" 7)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 110126933.895921 127031293.952180
wvZoom -win $_nWave2 117580544.131677 119232939.383308
wvZoom -win $_nWave2 117775763.823776 118032570.680745
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 118054422.741003 119178449.377978
wvZoom -win $_nWave2 118463878.295116 118736585.179614
wvZoom -win $_nWave2 118569739.195411 118623244.976547
wvZoom -win $_nWave2 118584865.302303 118595739.543336
wvZoom -win $_nWave2 118588696.522242 118592153.032050
wvZoom -win $_nWave2 118589680.971196 118590485.545560
wvZoom -win $_nWave2 118589932.188412 118590237.722981
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSetCursor -win $_nWave2 118590008.249748 -snap {("G2" 2)}
wvSetMarker -win $_nWave2 118590030.000000
wvSetCursor -win $_nWave2 118589970.648799 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 116838959.212377 132251758.087201
wvZoom -win $_nWave2 121673071.939566 122756953.716979
wvZoom -win $_nWave2 122207390.593485 122292759.622367
wvZoom -win $_nWave2 122236507.315628 122249054.521701
wvZoom -win $_nWave2 122240169.123280 122242463.267850
wvZoom -win $_nWave2 122240656.346590 122241179.063074
wvZoom -win $_nWave2 122240745.303876 122240998.207492
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSetCursor -win $_nWave2 122240808.618629 -snap {("G2" 2)}
wvSetMarker -win $_nWave2 122240830.000000
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvScrollDown -win $_nWave2 7
wvSelectSignal -win $_nWave2 {( "G2" 6 7 8 9 10 11 12 13 14 15 16 17 18 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 7 8 9 10 11 12 13 14 15 16 17 18 )} 
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 18 )} 
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "G2" 5 6 7 8 9 10 11 12 13 14 15 16 17 18 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 4)}
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_iram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_iram" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {186 186 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "inst_addr" -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {198 198 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 204 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAction -pos 205 4 4 -win $_nTrace1 -name "dram_addr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAction -pos 169 12 2 -win $_nTrace1 -name "sum" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a4" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {198 198 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 205 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetSearchMode -win $_nWave2 -value "6dc" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
wvSearchPrev -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -word -line 202 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
wvSearchPrev -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 107411538.361723 107411876.277947
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSearchNext -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G2" 12 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSetMarker -win $_nWave2 107411690.000000
wvSetCursor -win $_nWave2 107411667.887703 -snap {("G2" 13)}
wvZoom -win $_nWave2 107411597.547898 107411937.840467
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 107411331.200716 107411937.122505
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 107411601.777589 107411790.968358
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 107411629.983156 -snap {("G2" 1)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 107411671.094231 -snap {("G2" 13)}
wvSetCursor -win $_nWave2 107411633.708432 -snap {("G2" 2)}
wvSetMarker -win $_nWave2 107411670.000000
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAction -pos 202 4 5 -win $_nTrace1 -name "dram_we" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sum" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 15)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 16 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 15)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 159 18 3 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_rd_dat" -win $_nTrace1
srcAction -pos 78 14 4 -win $_nTrace1 -name "alu_rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs2" -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_funct7_ex" -win $_nTrace1
srcSelect -signal "r_type_funct3_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_dat_ex" -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 107411671.094231 -snap {("G2" 14)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "store_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat" -win $_nTrace1
srcAction -pos 4 9 6 -win $_nTrace1 -name "dram_wdat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "s_type_store_funct3_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "s_type_store_funct3_wb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[1:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "s_type_store_funct3_wb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[1:0\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 9 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "s_type_store_funct3_wb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr\[1:0\]" -win $_nTrace1
wvSetCursor -win $_nWave2 107411671.227276 -snap {("G2" 18)}
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 121013762.324808 124815365.372886
wvZoom -win $_nWave2 122171353.126360 122387900.135427
wvZoom -win $_nWave2 122226936.570962 122252520.183848
wvZoom -win $_nWave2 122239134.664807 122243128.730954
wvZoom -win $_nWave2 122240272.215285 122241920.961296
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 122240625.849190 122241153.401535
verdiWindowResize -win $_Verdi_1 -2 "25" "1878" "579"
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
wvZoom -win $_nWave2 122240749.760832 122240972.356759
wvSetCursor -win $_nWave2 122240790.147403 -snap {("G2" 7)}
wvSetCursor -win $_nWave2 122240808.931869 -snap {("G2" 6)}
wvSetMarker -win $_nWave2 122240830.000000
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 -2 "25" "1878" "579"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 -2 "25" "1878" "579"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_id" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_id" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 16
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSetPosition -win $_nWave2 {("G2" 2)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
srcSearchString "jalr_ex" -win $_nTrace1 -next -case
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {216 216 3 4 1 1}
srcSearchString "jalr_ex" -win $_nTrace1 -next -case
srcSearchString "jalr_ex" -win $_nTrace1 -next -case
srcSearchString "jalr_ex" -win $_nTrace1 -next -case
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
srcSearchString "jalr_ex" -win $_nTrace1 -next -case
srcSearchString "jalr_ex" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "add_res" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_d" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "hazard_rs1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "imm_d" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "target_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_dat" -win $_nTrace1
srcAction -pos 154 18 3 -win $_nTrace1 -name "rd_dat" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_dout_wb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "load_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcBackwardHistory -win $_nTrace1
verdiWindowResize -win $_Verdi_1 -2 "25" "1878" "579"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 122240789.208179 -snap {("G2" 3)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 110624120.956399 148658931.082982
wvZoom -win $_nWave2 122018515.551183 122981422.136666
wvZoom -win $_nWave2 122204731.662920 122311721.283529
wvZoom -win $_nWave2 122230613.821472 122236181.495118
wvZoom -win $_nWave2 122231604.413125 122232305.266558
wvZoom -win $_nWave2 122231818.316328 122232115.020806
verdiWindowResize -win $_Verdi_1 -2 "25" "1878" "579"
verdiWindowResize -win $_Verdi_1 -2 "25" "1874" "517"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 114104430.379747 148907524.613221
wvZoom -win $_nWave2 123967754.554166 124750946.548168
wvZoom -win $_nWave2 124370916.677595 124444719.579983
wvZoom -win $_nWave2 124410153.663580 124412748.702342
verdiWindowResize -win $_Verdi_1 -2 "25" "1874" "517"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 108386779.184248 122059423.347398
wvZoom -win $_nWave2 112886636.756882 113463541.573893
wvZoom -win $_nWave2 113241218.198479 113291930.647231
wvZoom -win $_nWave2 113262330.553999 113266752.736591
wvZoom -win $_nWave2 113263303.931643 113263801.504931
wvZoom -win $_nWave2 113263376.713065 113263561.815927
wvSetCursor -win $_nWave2 113263450.910350 -snap {("G2" 9)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 113252772.349740 113255438.247492
wvSetCursor -win $_nWave2 113253825.960485 -snap {("G2" 5)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 113252425.520468 113263704.030225
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 113258699.290646 113270310.920945
wvZoom -win $_nWave2 113263100.604757 113264954.219439
wvZoom -win $_nWave2 113263289.616042 113263668.942254
srcDeselectAll -win $_nTrace1
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a5" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 113262848.669303 113263617.991942
wvSetCursor -win $_nWave2 113262426.245143 -snap {("G2" 1)}
wvSetMarker -win $_nWave2 113262430.000000
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_pc" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_pc" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jal_imm" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "target_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ecall_bran_take" -win $_nTrace1
srcSelect -signal "ebreak_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mret_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_inst" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "halt_pc" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAction -pos 31 3 9 -win $_nTrace1 -name "pc_jump_en" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "jalr_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "btype_bran_take" -win $_nTrace1
srcAction -pos 156 26 7 -win $_nTrace1 -name "btype_bran_take" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 204 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcSelect -signal "load_ex" -win $_nTrace1
srcSelect -signal "s_type_store_funct3_ex" -win $_nTrace1
srcSelect -signal "store_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_load_funct3_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcSearchString "i_type_ari_ex" -win $_nTrace1 -next -case
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_type_ari_ex" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 312 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 113261329.067720 113266089.995447
wvZoom -win $_nWave2 113263240.804502 113264044.336608
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 10
wvSelectSignal -win $_nWave2 {( "G2" 48 )} 
wvSelectSignal -win $_nWave2 {( "G2" 35 36 37 38 39 40 41 42 43 44 45 46 47 48 \
           )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 33)}
wvSelectSignal -win $_nWave2 {( "G2" 35 )} 
wvSelectSignal -win $_nWave2 {( "G2" 35 36 37 38 39 40 41 42 43 44 45 46 47 )} \
           
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 33)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 113263346.472927 -snap {("G2" 6)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 113263262.842300 113263535.771982
wvSetCursor -win $_nWave2 113263411.590896 -snap {("G2" 34)}
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
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_dram" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_dram" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 27 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetSearchMode -win $_nWave2 -value "5b0" -case off -skipGlitch off -X2Y off
wvSelectSignal -win $_nWave2 {( "G2" 35 )} 
wvSearchPrev -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 35 )} 
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 111265155.587746 111265467.288030
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 36 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
verdiWindowResize -win $_Verdi_1 -2 "25" "1874" "517"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvSetCursor -win $_nWave2 111265168.082015 -snap {("G2" 18)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 37 )} 
wvExpandBus -win $_nWave2 {("G2" 37)}
srcDeselectAll -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 667
wvScrollDown -win $_nWave2 27
wvSelectSignal -win $_nWave2 {( "G2" 405 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 44
wvScrollDown -win $_nWave2 3
wvScrollUp -win $_nWave2 70
wvScrollUp -win $_nWave2 43
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 115
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 17
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 4
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 37 )} 
wvSetPosition -win $_nWave2 {("G2" 37)}
wvCollapseBus -win $_nWave2 {("G2" 37)}
wvSetPosition -win $_nWave2 {("G2" 37)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 104906469.760900 130263009.845288
wvZoom -win $_nWave2 112609722.444765 114589030.426036
wvZoom -win $_nWave2 113206855.443269 113386412.918363
wvZoom -win $_nWave2 113260394.380921 113269990.982966
wvZoom -win $_nWave2 113263195.076996 113264396.339418
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 113262886.735994 113264008.590070
wvZoom -win $_nWave2 113263180.216713 113263599.136906
wvSetCursor -win $_nWave2 113263411.477144 -snap {("G2" 12)}
wvZoom -win $_nWave2 113263318.383768 113263543.163028
wvSelectSignal -win $_nWave2 {( "G2" 13 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
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
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_addr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("G2" 37)}
wvSetPosition -win $_nWave2 {("G2" 36)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 36)}
wvSetPosition -win $_nWave2 {("G2" 37)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_rd" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 37 )} 
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G2" 39 )} 
wvSelectSignal -win $_nWave2 {( "G2" 39 )} 
wvSetPosition -win $_nWave2 {("G2" 39)}
wvExpandBus -win $_nWave2 {("G2" 39)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 540
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 404 )} 
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 107889592.123769 119822081.575246
wvZoom -win $_nWave2 111011171.642652 111514652.210225
wvZoom -win $_nWave2 111227859.481809 111323102.992833
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 10
wvScrollUp -win $_nWave2 319
wvScrollUp -win $_nWave2 37
wvSelectSignal -win $_nWave2 {( "G2" 39 )} 
wvSetPosition -win $_nWave2 {("G2" 39)}
wvCollapseBus -win $_nWave2 {("G2" 39)}
wvSetPosition -win $_nWave2 {("G2" 39)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 101923347.398031 132003164.556962
wvZoom -win $_nWave2 112859539.712464 114509487.489114
wvZoom -win $_nWave2 113237797.782152 113308576.132628
wvZoom -win $_nWave2 113262087.398859 113269901.886218
wvZoom -win $_nWave2 113263290.895798 113263889.896587
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 113263359.557534 113263605.560671
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
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G2" 35 )} 
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 111265115.078856 111265521.970121
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvSelectSignal -win $_nWave2 {( "G2" 31 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we_byte" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 40 )} 
wvSelectSignal -win $_nWave2 {( "G2" 40 )} 
wvExpandBus -win $_nWave2 {("G2" 40)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we_byte\[0\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we_byte\[1\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_we_byte\[0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "dram_wdat\[7:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
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
wvSelectSignal -win $_nWave2 {( "G2" 39 )} 
wvSetPosition -win $_nWave2 {("G2" 39)}
wvExpandBus -win $_nWave2 {("G2" 39)}
wvSetPosition -win $_nWave2 {("G2" 1071)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 133
wvScrollUp -win $_nWave2 461
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 404 )} 
wvSetCursor -win $_nWave2 111265269.308330 -snap {("G2" 404)}
wvZoomOut -win $_nWave2
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
wvSetCursor -win $_nWave2 111270665.911213 -snap {("G2" 404)}
wvSetMarker -win $_nWave2 111270570.000000
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 181
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "G2" 39 )} 
wvSetPosition -win $_nWave2 {("G2" 39)}
wvCollapseBus -win $_nWave2 {("G2" 39)}
wvSetPosition -win $_nWave2 {("G2" 39)}
wvSetPosition -win $_nWave2 {("G2" 47)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 111269292.438590 111271892.880090
wvZoom -win $_nWave2 111270331.152123 111271064.469311
wvSetCursor -win $_nWave2 111270550.837840 -snap {("G2" 36)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 104160689.170183 127279887.482419
wvZoom -win $_nWave2 110956627.914485 115053701.033109
wvZoom -win $_nWave2 112587389.788620 113106006.639079
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 98940225.035162 121313642.756681
wvZoom -win $_nWave2 107074582.955009 108411953.212624
wvZoom -win $_nWave2 107468646.343144 107574921.194839
wvZoom -win $_nWave2 107499960.803621 107509601.771179
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 107500828.626278 107502713.428655
wvZoom -win $_nWave2 107501283.258560 107501847.903998
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 107500699.950436 107501043.026145
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 107476845.573072 107489012.938873
wvZoom -win $_nWave2 107482689.673451 107484409.533174
wvZoom -win $_nWave2 107483295.615539 107483941.470034
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 111121308.016878 118081926.863572
wvZoom -win $_nWave2 112178617.208703 113862479.995808
wvZoom -win $_nWave2 112936473.878002 113481183.359062
wvZoom -win $_nWave2 113244836.136969 113287355.653423
wvZoom -win $_nWave2 113262627.355107 113267202.239789
wvZoom -win $_nWave2 113263248.278267 113263685.819981
wvSetCursor -win $_nWave2 113263263.355235 -snap {("G2" 10)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 113262984.583999 113264008.591611
wvZoom -win $_nWave2 113263331.680714 113263690.299413
verdiWindowResize -win $_Verdi_1 -2 "25" "1874" "517"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
verdiWindowResize -win $_Verdi_1 -2 "25" "1874" "517"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvSetCursor -win $_nWave2 113263414.147869 -snap {("G2" 9)}
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 34 )} 
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvZoomOut -win $_nWave2
wvSetMarker -win $_nWave2 111265330.000000
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
verdiWindowResize -win $_Verdi_1 -2 "25" "1874" "517"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "t0" -win $_nTrace1
wvSelectGroup -win $_nWave2 {G1}
wvSetPosition -win $_nWave2 {("G1" 0)}
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a0" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_id" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_id" -delim "."
verdiWindowResize -win $_Verdi_1 -2 "25" "1874" "517"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "a1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb.u_fpga_top.u_starsea_core.u_alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb.u_fpga_top.u_starsea_core.u_alu" -delim "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {291 291 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_type_ex" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pc_jump_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 299 -pos 1 -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 111261746.864498 111275369.331196
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoom -win $_nWave2 111264611.222728 111266393.064364
wvZoom -win $_nWave2 111265091.142072 111265804.129337
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "s0_fp" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 103166315.049226 138218002.812940
wvZoom -win $_nWave2 110635134.593789 113814929.053366
wvZoom -win $_nWave2 111223240.038755 111440145.849289
wvZoom -win $_nWave2 111252526.899194 111304389.047985
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 2485935.302391 9695147.679325
wvZoom -win $_nWave2 2805330.787444 3003051.802001
wvZoom -win $_nWave2 2814229.623542 2832166.340053
verdiWindowResize -win $_Verdi_1 -2 "25" "1874" "517"
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
debExit
