-makelib ies_lib/xpm -sv \
  "G:/vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "G:/vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "G:/vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../receiver_prj.srcs/sources_1/ip/clk_gen/clk_gen_clk_wiz.v" \
  "../../../../receiver_prj.srcs/sources_1/ip/clk_gen/clk_gen.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

