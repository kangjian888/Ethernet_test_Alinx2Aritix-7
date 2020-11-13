-makelib xcelium_lib/xpm -sv \
  "G:/vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "G:/vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "G:/vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../receiver_prj.srcs/sources_1/ip/icmp_rx_ram_8_256/sim/icmp_rx_ram_8_256.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

