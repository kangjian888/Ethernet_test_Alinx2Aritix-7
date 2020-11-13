set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

########## GENERAL CLOCK CONSTRAINTS FOR THE AC701 BOARD REV B for RGMII ##########
set_property PACKAGE_PIN R3 [get_ports CLK_SYSTEM_P]
set_property PACKAGE_PIN P3 [get_ports CLK_SYSTEM_N]
set_property IOSTANDARD DIFF_SSTL15 [get_ports CLK_SYSTEM_P]
set_property IOSTANDARD DIFF_SSTL15 [get_ports CLK_SYSTEM_N]

########## USED CPU_RESET AS GLOBAL RESET BUTTON ##########
set_property PACKAGE_PIN U4 [get_ports G_RESET]
set_property IOSTANDARD SSTL15 [get_ports G_RESET]

########## RELEVANT TO PHY ##########
set_property PACKAGE_PIN V18 [get_ports PHY_RESETN]
#set_property IOSTANDARD HSTL_I_18 [get_ports PHY_RESETN]

set_property PACKAGE_PIN W18 [get_ports MDC]
set_property PACKAGE_PIN T14 [get_ports MDIO]
#set_property IOSTANDARD LVCMOS18 [get_ports MDC]
#set_property IOSTANDARD LVCMOS18 [get_ports MDIO]

set_property PACKAGE_PIN V14 [get_ports {RGMII_RXD[3]}]
set_property PACKAGE_PIN V16 [get_ports {RGMII_RXD[2]}]
set_property PACKAGE_PIN V17 [get_ports {RGMII_RXD[1]}]
set_property PACKAGE_PIN U17 [get_ports {RGMII_RXD[0]}]
#set_property IOSTANDARD HSTL_I_18 [get_ports {RGMII_RXD[3]}]
#set_property IOSTANDARD HSTL_I_18 [get_ports {RGMII_RXD[2]}]
#set_property IOSTANDARD HSTL_I_18 [get_ports {RGMII_RXD[1]}]
#set_property IOSTANDARD HSTL_I_18 [get_ports {RGMII_RXD[0]}]

set_property PACKAGE_PIN T17 [get_ports {RGMII_TXD[3]}]
set_property PACKAGE_PIN T18 [get_ports {RGMII_TXD[2]}]
set_property PACKAGE_PIN U15 [get_ports {RGMII_TXD[1]}]
set_property PACKAGE_PIN U16 [get_ports {RGMII_TXD[0]}]
#set_property IOSTANDARD HSTL_I_18 [get_ports {RGMII_TXD[3]}]
#set_property IOSTANDARD HSTL_I_18 [get_ports {RGMII_TXD[2]}]
#set_property IOSTANDARD HSTL_I_18 [get_ports {RGMII_TXD[1]}]
#set_property IOSTANDARD HSTL_I_18 [get_ports {RGMII_TXD[0]}]

set_property PACKAGE_PIN T15 [get_ports RGMII_TX_CTL]
set_property PACKAGE_PIN U22 [get_ports RGMII_TXC]
#set_property IOSTANDARD HSTL_I_18 [get_ports RGMII_TX_CTL]
#set_property IOSTANDARD HSTL_I_18 [get_ports RGMII_TXC]

set_property PACKAGE_PIN U14 [get_ports RGMII_RX_CTL]
#set_property IOSTANDARD HSTL_I_18 [get_ports RGMII_RX_CTL]

set_property PACKAGE_PIN U21 [get_ports RGMII_RXC]
#set_property IOSTANDARD HSTL_I_18 [get_ports RGMII_RXC]

#Using LED
set_property PACKAGE_PIN M26 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]
set_property PACKAGE_PIN T24 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]
set_property PACKAGE_PIN T25 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]
set_property PACKAGE_PIN R26 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]

set_property IOSTANDARD LVCMOS18 [get_ports MDIO]
set_property IOSTANDARD LVCMOS18 [get_ports MDC]
set_property IOSTANDARD LVCMOS18 [get_ports {RGMII_RXD[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {RGMII_RXD[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {RGMII_RXD[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {RGMII_RXD[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {RGMII_TXD[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {RGMII_TXD[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {RGMII_TXD[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {RGMII_TXD[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports PHY_RESETN]
set_property IOSTANDARD LVCMOS18 [get_ports RGMII_RX_CTL]
set_property IOSTANDARD LVCMOS18 [get_ports RGMII_RXC]
set_property IOSTANDARD LVCMOS18 [get_ports RGMII_TX_CTL]
set_property IOSTANDARD LVCMOS18 [get_ports RGMII_TXC]
