// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Nov 12 15:37:34 2020
// Host        : DESKTOP-B3RT09T running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/OneDrive - HKUST
//               Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/udp_tx_data_fifo/udp_tx_data_fifo_stub.v}
// Design      : udp_tx_data_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2019.2" *)
module udp_tx_data_fifo(clk, srst, din, wr_en, rd_en, dout, full, almost_full, 
  empty, data_count)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[7:0],wr_en,rd_en,dout[7:0],full,almost_full,empty,data_count[11:0]" */;
  input clk;
  input srst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  output [7:0]dout;
  output full;
  output almost_full;
  output empty;
  output [11:0]data_count;
endmodule