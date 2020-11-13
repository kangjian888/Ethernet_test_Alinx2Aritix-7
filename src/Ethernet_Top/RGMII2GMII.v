module RGMII2GMII(
 reset,
 refclk,
 rgmii_td, 
 rgmii_tx_ctl,
 rgmii_txc,
 rgmii_rd,
 rgmii_rx_ctl,
 rgmii_rxc,
 gmii_rx_clk,
 gmii_txd, 
 gmii_tx_en,  
 gmii_tx_er,  
 gmii_tx_clk,  
 gmii_crs,  
 gmii_col,  
 gmii_rxd,  
 gmii_rx_dv,  
 gmii_rx_er,  
 speed_selection,  
 duplex_mode  
 );
 input           reset;
 input           refclk;   
 input           rgmii_rxc;//add   
 output  [3:0]   rgmii_td;  
 output          rgmii_tx_ctl;  
 output          rgmii_txc;  
 input   [3:0]   rgmii_rd;  
 input           rgmii_rx_ctl;  
 output          gmii_rx_clk;  
 input   [7:0]   gmii_txd;  
 input           gmii_tx_en;  
 input           gmii_tx_er;  
 output          gmii_tx_clk;  
 output          gmii_crs;  
 output          gmii_col;  
 output  [7:0]   gmii_rxd;  
 output          gmii_rx_dv;  
 output          gmii_rx_er;  
 input  [1:0]    speed_selection; // 1x gigabit, 01 100Mbps, 00 10mbps  
 input           duplex_mode;     // 1 full, 0 half  
  
 wire gigabit;  
 wire gmii_tx_clk_s;  
 wire gmii_rx_dv_s;  

 

 wire  [ 7:0]    gmii_rxd_s;  
 wire            rgmii_rx_ctl_delay;  
 wire            rgmii_rx_ctl_s;  
 // registers  
 reg             tx_reset_d1;  
 reg             tx_reset_sync; 
 reg             rx_reset_d1;
 reg             rx_reset_sync;  
 reg   [ 7:0]    gmii_txd_r;  
 reg             gmii_tx_en_r;  
 reg             gmii_tx_er_r;  
 reg   [ 7:0]    gmii_txd_r_d1;  
 reg             gmii_tx_en_r_d1;  
 reg             gmii_tx_er_r_d1;  

 reg             rgmii_tx_ctl_r;  
 reg   [ 3:0]    gmii_txd_low;  
 reg             gmii_col;  
 reg             gmii_crs;  


 (* MARK_DEBUG="true" *) reg  [ 7:0]     gmii_rxd;  
 (* MARK_DEBUG="true" *) reg             gmii_rx_dv;  
 (* MARK_DEBUG="true" *) reg             gmii_rx_er;  


 assign gigabit        = speed_selection [1];   
 assign gmii_tx_clk_s  = gmii_rx_clk;
 assign gmii_tx_clk = gmii_tx_clk_s;

 BUFG bufmr_rgmii_rxc(  
   .I(rgmii_rxc),  
   .O(gmii_rx_clk)  
  );  

 always @(posedge gmii_rx_clk)  
  begin  
    gmii_rxd       = gmii_rxd_s;  
    gmii_rx_dv     = gmii_rx_dv_s;  
    gmii_rx_er     = gmii_rx_dv_s ^ rgmii_rx_ctl_s;  
  end  

 always @(posedge gmii_tx_clk_s) 
  begin  
    tx_reset_d1    <= reset;  
    tx_reset_sync  <= tx_reset_d1;  
  end  
 always @ (posedge gmii_rx_clk)
     begin
     	rx_reset_d1 <= reset;
     	rx_reset_sync <= rx_reset_d1;
     end
 always @(posedge gmii_tx_clk_s)  
  begin  
    rgmii_tx_ctl_r = gmii_tx_en_r ^ gmii_tx_er_r;  
    gmii_txd_low   = gigabit ? gmii_txd_r[7:4] :  gmii_txd_r[3:0];  
    gmii_col       = duplex_mode ? 1'b0 : (gmii_tx_en_r| gmii_tx_er_r) & ( gmii_rx_dv | gmii_rx_er) ;  
    gmii_crs       = duplex_mode ? 1'b0 : (gmii_tx_en_r| gmii_tx_er_r| gmii_rx_dv | gmii_rx_er);  
  end  

 always @(posedge gmii_tx_clk_s) begin  
   if (tx_reset_sync == 1'b1) begin  
     gmii_txd_r   <= 8'h0;  
     gmii_tx_en_r <= 1'b0;  
     gmii_tx_er_r <= 1'b0;  
    end  
   else  
    begin  
      gmii_txd_r   <= gmii_txd;  
      gmii_tx_en_r <= gmii_tx_en;  
      gmii_tx_er_r <= gmii_tx_er;  
      gmii_txd_r_d1   <= gmii_txd_r;  
      gmii_tx_en_r_d1 <= gmii_tx_en_r;  
      gmii_tx_er_r_d1 <= gmii_tx_er_r;  
    end  
  end  

  

  ODDR #(  
    .DDR_CLK_EDGE("SAME_EDGE")  
  ) rgmii_txc_out (  
    .Q (rgmii_txc),  
    .C (gmii_tx_clk_s),  
    .CE(1),  
    .D1(1),  
    .D2(0),  
    .R(tx_reset_sync),  
    .S(0));  

  generate  
  genvar i;  
  for (i = 0; i < 4; i = i + 1) begin : gen_tx_data  
    ODDR #(  
      .DDR_CLK_EDGE("SAME_EDGE")  
    ) rgmii_td_out (  
      .Q (rgmii_td[i]),  
      .C (gmii_tx_clk_s),  
      .CE(1),  
      .D1(gmii_txd_r_d1[i]),  
      .D2(gmii_txd_low[i]),  
      .R(tx_reset_sync),  
      .S(0));  
  end  
  endgenerate  

  ODDR #(  
    .DDR_CLK_EDGE("SAME_EDGE")  
  ) rgmii_tx_ctl_out (  
    .Q (rgmii_tx_ctl),  
    .C (gmii_tx_clk_s),  
    .CE(1),  
    .D1(gmii_tx_en_r_d1),  
    .D2(rgmii_tx_ctl_r),  
    .R(tx_reset_sync),  
    .S(0));  
    


// Drive input RGMII Rx signals from PADS through IODELAYS.

// Please modify the IODELAY_VALUE according to your design.
// For more information on IDELAYCTRL and IODELAY, please refer to
// the User Guide.

wire [3:0] rgmii_rd_delay;
wire rgmii_rx_ctl_delay;

 IDELAYCTRL IDELAYCTRL_inst (
    .RDY(),       // 1-bit output: Ready output
    .REFCLK(refclk), // 1-bit input: Reference clock input
    .RST(rx_reset_sync)        // 1-bit input: Active high reset input
 );
 IDELAYE2 #(
    .IDELAY_TYPE   ("FIXED")
 )
 delay_rgmii_rx_ctl (
    .IDATAIN       (rgmii_rx_ctl),
    .DATAOUT       (rgmii_rx_ctl_delay),
    .DATAIN        (1'b0),
    .C             (1'b0),
    .CE            (1'b0),
    .INC           (1'b0),
    .CINVCTRL      (1'b0),
    .CNTVALUEIN    (5'h0),
    .CNTVALUEOUT   (),
    .LD            (1'b0),
    .LDPIPEEN      (1'b0),
    .REGRST        (1'b0)
    );

 genvar j;
 generate for (j=0; j<4; j=j+1)
   begin : rxdata_bus

     IDELAYE2 #(
        .IDELAY_TYPE   ("FIXED")
     )
     delay_rgmii_rxd (
        .IDATAIN       (rgmii_rd[j]),
        .DATAOUT       (rgmii_rd_delay[j]),
        .DATAIN        (1'b0),
        .C             (1'b0),
        .CE            (1'b0),
        .INC           (1'b0),
        .CINVCTRL      (1'b0),
        .CNTVALUEIN    (5'h0),
        .CNTVALUEOUT   (),
        .LD            (1'b0),
        .LDPIPEEN      (1'b0),
        .REGRST        (1'b0)
     );
   end
 endgenerate 
  generate  
  for (i = 0; i < 4; i = i + 1) begin  
    IDDR #(  
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED")  
    ) rgmii_rx_iddr (  
      .Q1(gmii_rxd_s[i]),  
      .Q2(gmii_rxd_s[i+4]),  
      .C(gmii_rx_clk),  
      .CE(1),  
      .D(rgmii_rd_delay[i]),  
      .R(0),  
      .S(0));  
  end  
  endgenerate  

  IDDR #(  
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED")  
  ) rgmii_rx_ctl_iddr (  
    .Q1(gmii_rx_dv_s),  
    .Q2(rgmii_rx_ctl_s),  
    .C(gmii_rx_clk),  
    .CE(1),  
    .D(rgmii_rx_ctl_delay),  
    .R(0),  
    .S(0));  
endmodule