-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Nov 12 15:37:34 2020
-- Host        : DESKTOP-B3RT09T running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/OneDrive - HKUST
--               Connect/Lab/OFDM_FPGA_VLC_Implementation/Receiver/prj/receiver_prj/receiver_prj.srcs/sources_1/ip/udp_tx_data_fifo/udp_tx_data_fifo_stub.vhdl}
-- Design      : udp_tx_data_fifo
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity udp_tx_data_fifo is
  Port ( 
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    empty : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end udp_tx_data_fifo;

architecture stub of udp_tx_data_fifo is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,srst,din[7:0],wr_en,rd_en,dout[7:0],full,almost_full,empty,data_count[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_2_5,Vivado 2019.2";
begin
end;
