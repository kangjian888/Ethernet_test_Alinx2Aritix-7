// =============================================================================
// Filename: Ethernet_Top.v
// Author: KANG, Jian
// Email: jkangac@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// Description:
// -----------------------------------------------------------------------------
`timescale 1 ns / 1 ps
module Ethernet_Top(
    input CLK_SYSTEM_N,
    input CLK_SYSTEM_P,
    input G_RESET,
    input RGMII_RXC,
    output [3:0] RGMII_TXD,  
    output RGMII_TX_CTL,
    output RGMII_TXC,  
    input [3:0] RGMII_RXD,  
    input RGMII_RX_CTL,
    inout MDIO,
    output MDC,     
	output [3:0] LED,
    output PHY_RESETN	
);

wire clk;
wire gmii_tx_clk;
wire gmii_rx_clk;
wire [7:0] gmii_txd;
wire gmii_tx_en;
wire gmii_tx_er;
wire [7:0] gmii_rxd;
wire gmii_rx_dv;
wire gmii_rx_er;
wire refclk;
//pll to generate clock source
clk_gen clk_gen_inst
 (
  // Clock out ports
  .clk_out1(clk),     // output clk_out1
  .clk_out2(refclk),
  // Status and control signals
  .locked(),       // output locked
 // Clock in ports
  .clk_in1_p(CLK_SYSTEM_P),    // input clk_in1_p
  .clk_in1_n(CLK_SYSTEM_N));    // input clk_in1_n

RGMII2GMII RGMII2GMII_inst(
    .reset(G_RESET),
    .refclk(refclk),
    .rgmii_td(RGMII_TXD), 
    .rgmii_tx_ctl(RGMII_TX_CTL),
    .rgmii_txc(RGMII_TXC),
    .rgmii_rd(RGMII_RXD),
    .rgmii_rx_ctl(RGMII_RX_CTL),
    .rgmii_rxc(RGMII_RXC),
    .gmii_rx_clk(gmii_rx_clk),
    .gmii_txd(gmii_txd), 
    .gmii_tx_en(gmii_tx_en),  
    .gmii_tx_er(gmii_tx_er),  
    .gmii_tx_clk(gmii_tx_clk), 
    .gmii_crs(),  
    .gmii_col(),  
    .gmii_rxd(gmii_rxd),  
    .gmii_rx_dv(gmii_rx_dv),  
    .gmii_rx_er(gmii_rx_er),  
    .speed_selection(2'b11),  
    .duplex_mode(1'b1)  
 ); 


ethernet_test ethernet_test_inst(
    .clk(clk),
    .rst_n(~G_RESET),
    .led(LED),
    .e_mdc(MDC),
    .e_mdio(MDIO),
    .e_reset(PHY_RESETN),
    .e_rxc(gmii_rx_clk),
    .e_rxdv(gmii_rx_dv),                    //GMII 接收数据有效信号
    .e_rxer(gmii_rx_er),                    //GMII 接收数据错误信号                    
    .e_rxd(gmii_rxd),                       //GMII 接收数据          
    .e_txc(),                               //25Mhz ethernet mii tx clock         
    .e_gtxc(gmii_tx_clk),                   //125Mhz ethernet gmii tx clock  
    .e_txen(gmii_tx_en),                    //GMII 发送数据有效信号    
    .e_txer(gmii_tx_er),                    //GMII 发送数据错误信号                    
    .e_txd(gmii_txd)                        //GMII 发送数据 
    );
endmodule