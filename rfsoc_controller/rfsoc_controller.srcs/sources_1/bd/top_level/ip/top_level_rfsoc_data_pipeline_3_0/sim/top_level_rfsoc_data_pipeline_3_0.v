// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:rfsoc_data_pipeline:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "IPI" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module top_level_rfsoc_data_pipeline_3_0 (
  S_AXIS_tdata,
  S_AXIS_tready,
  S_AXIS_tvalid,
  ext_trigger,
  gpio_in,
  is_selected,
  m_axis_tdata,
  m_axis_tready,
  m_axis_tvalid,
  microblaze_clk,
  microblaze_resetn,
  pipeline_active,
  rf_clock,
  rf_resetn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *)
input wire [31 : 0] S_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *)
output wire S_AXIS_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, LAYERED_METADATA undef, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN top_level_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *)
input wire S_AXIS_tvalid;
input wire ext_trigger;
input wire [15 : 0] gpio_in;
input wire is_selected;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
output wire [255 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
input wire m_axis_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, LAYERED_METADATA undef, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN top_level_usp_rf_data_converter_0_0_clk_dac0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
output wire m_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MICROBLAZE_CLK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET microblaze_resetn, CLK_DOMAIN top_level_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MICROBLAZE_CLK CLK" *)
input wire microblaze_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MICROBLAZE_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MICROBLAZE_RESETN RST" *)
input wire microblaze_resetn;
output wire pipeline_active;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.RF_CLOCK, FREQ_HZ 250000000, PHASE 0.000, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET rf_resetn, CLK_DOMAIN top_level_usp_rf_data_converter_0_0_clk_dac0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.RF_CLOCK CLK" *)
input wire rf_clock;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RF_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RF_RESETN RST" *)
input wire rf_resetn;

  rfsoc_data_pipeline inst (
    .S_AXIS_tdata(S_AXIS_tdata),
    .S_AXIS_tready(S_AXIS_tready),
    .S_AXIS_tvalid(S_AXIS_tvalid),
    .ext_trigger(ext_trigger),
    .gpio_in(gpio_in),
    .is_selected(is_selected),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tready(m_axis_tready),
    .m_axis_tvalid(m_axis_tvalid),
    .microblaze_clk(microblaze_clk),
    .microblaze_resetn(microblaze_resetn),
    .pipeline_active(pipeline_active),
    .rf_clock(rf_clock),
    .rf_resetn(rf_resetn)
  );
endmodule
