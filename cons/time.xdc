create_clock -period 8.000 -name RGMII_RXC [get_ports RGMII_RXC]

set_property IDELAY_VALUE 13 [get_cells {RGMII2GMII_inst/delay_rgmii_rx_ctl RGMII2GMII_inst/rxdata_bus[*].delay_rgmii_rxd}]
# Group IODELAY components
set_property IODELAY_GROUP ethernet_mac_iodelay_grp [get_cells {RGMII2GMII_inst/delay_rgmii_rx_ctl RGMII2GMII_inst/rxdata_bus[*].delay_rgmii_rxd}]