# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param tcl.collectionResultDisplayLimit 0
set_param chipscope.maxJobs 4
set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
create_project -in_memory -part xc7a200tfbg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.cache/wt} [current_project]
set_property parent.project_path {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.xpr} [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:ac701:part0:1.4 [current_project]
set_property ip_repo_paths v:/vivado/Arm_ipi_repository [current_project]
update_ip_catalog
set_property ip_output_repo {d:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/RGMII2GMII.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/arp_cache.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/rx/arp_rx.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/tx/arp_tx.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/crc.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/ethernet_test.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/arbi/gmii_arbi.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/arbi/gmii_rx_buffer.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/arbi/gmii_tx_buffer.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/icmp_reply.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/rx/ip_rx.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/tx/ip_tx.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/tx/ip_tx_mode.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/rx/mac_rx.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/rx/mac_rx_top.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/mac_test.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/mac_top.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/tx/mac_tx.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/tx/mac_tx_mode.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/tx/mac_tx_top.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/smi_config.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/smi_read_write.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/rx/udp_rx.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_GMII/tx/udp_tx.v}
  {D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/src/Ethernet_Top/Ethernet_Top.v}
}
read_ip -quiet {{D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/udp_tx_data_fifo/udp_tx_data_fifo.xci}}
set_property used_in_implementation false [get_files -all {{d:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/udp_tx_data_fifo/udp_tx_data_fifo.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/udp_tx_data_fifo/udp_tx_data_fifo_ooc.xdc}}]

read_ip -quiet {{D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/udp_checksum_fifo/udp_checksum_fifo.xci}}
set_property used_in_implementation false [get_files -all {{d:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/udp_checksum_fifo/udp_checksum_fifo.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/udp_checksum_fifo/udp_checksum_fifo_ooc.xdc}}]

read_ip -quiet {{D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/udp_rx_ram_8_2048/udp_rx_ram_8_2048.xci}}
set_property used_in_implementation false [get_files -all {{d:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/udp_rx_ram_8_2048/udp_rx_ram_8_2048_ooc.xdc}}]

read_ip -quiet {{D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/icmp_rx_ram_8_256/icmp_rx_ram_8_256.xci}}
set_property used_in_implementation false [get_files -all {{d:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/icmp_rx_ram_8_256/icmp_rx_ram_8_256_ooc.xdc}}]

read_ip -quiet {{D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/eth_data_fifo/eth_data_fifo.xci}}
set_property used_in_implementation false [get_files -all {{d:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/eth_data_fifo/eth_data_fifo.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/eth_data_fifo/eth_data_fifo_ooc.xdc}}]

read_ip -quiet {{D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/len_fifo/len_fifo.xci}}
set_property used_in_implementation false [get_files -all {{d:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/len_fifo/len_fifo.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/len_fifo/len_fifo_ooc.xdc}}]

read_ip -quiet {{D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/clk_gen/clk_gen.xci}}
set_property used_in_implementation false [get_files -all {{d:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/clk_gen/clk_gen_board.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/clk_gen/clk_gen.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/clk_gen/clk_gen_ooc.xdc}}]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/cons/io.xdc}}
set_property used_in_implementation false [get_files {{D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/cons/io.xdc}}]

read_xdc {{D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/cons/time.xdc}}
set_property used_in_implementation false [get_files {{D:/OneDrive - HKUST Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/cons/time.xdc}}]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top Ethernet_Top -part xc7a200tfbg676-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Ethernet_Top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Ethernet_Top_utilization_synth.rpt -pb Ethernet_Top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
