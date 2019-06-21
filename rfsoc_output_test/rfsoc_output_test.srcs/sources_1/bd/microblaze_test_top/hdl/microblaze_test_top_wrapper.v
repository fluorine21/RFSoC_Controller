//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Fri Jun 21 08:14:52 2019
//Host        : DESKTOP-6ILET8A running 64-bit major release  (build 9200)
//Command     : generate_target microblaze_test_top_wrapper.bd
//Design      : microblaze_test_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module microblaze_test_top_wrapper
   (app_leds_tri_o,
    diff_clock_rtl_clk_n,
    diff_clock_rtl_clk_p,
    reset_rtl,
    uart2_pl_rxd,
    uart2_pl_txd);
  output [7:0]app_leds_tri_o;
  input diff_clock_rtl_clk_n;
  input diff_clock_rtl_clk_p;
  input reset_rtl;
  input uart2_pl_rxd;
  output uart2_pl_txd;

  wire [7:0]app_leds_tri_o;
  wire diff_clock_rtl_clk_n;
  wire diff_clock_rtl_clk_p;
  wire reset_rtl;
  wire uart2_pl_rxd;
  wire uart2_pl_txd;

  microblaze_test_top microblaze_test_top_i
       (.app_leds_tri_o(app_leds_tri_o),
        .diff_clock_rtl_clk_n(diff_clock_rtl_clk_n),
        .diff_clock_rtl_clk_p(diff_clock_rtl_clk_p),
        .reset_rtl(reset_rtl),
        .uart2_pl_rxd(uart2_pl_rxd),
        .uart2_pl_txd(uart2_pl_txd));
endmodule
