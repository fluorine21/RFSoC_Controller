// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jul 11 15:05:50 2019
// Host        : DESKTOP-6ILET8A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/james/fpga_projects/rfsoc_controller/rfsoc_controller.srcs/sources_1/bd/top_level/ip/top_level_channel_select_0_0/top_level_channel_select_0_0_stub.v
// Design      : top_level_channel_select_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu29dr-ffvf1760-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "channel_select,Vivado 2019.1" *)
module top_level_channel_select_0_0(rf_clk, rf_reset, gpio_in, ch0, ch1, ch2, ch3)
/* synthesis syn_black_box black_box_pad_pin="rf_clk,rf_reset,gpio_in[15:0],ch0,ch1,ch2,ch3" */;
  input rf_clk;
  input rf_reset;
  input [15:0]gpio_in;
  output ch0;
  output ch1;
  output ch2;
  output ch3;
endmodule