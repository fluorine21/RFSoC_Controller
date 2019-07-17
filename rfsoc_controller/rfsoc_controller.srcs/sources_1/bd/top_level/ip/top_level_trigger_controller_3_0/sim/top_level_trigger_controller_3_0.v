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


// IP VLNV: xilinx.com:user:trigger_controller:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "IPI" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module top_level_trigger_controller_3_0 (
  ext_trigger_in,
  gpio_in,
  microblaze_clk,
  microblaze_reset,
  pipeline_active_in_0,
  pipeline_active_in_1,
  pipeline_active_in_2,
  pipeline_active_in_3,
  rf_clk,
  rf_reset,
  trigger_c0,
  trigger_c1,
  trigger_c2,
  trigger_c3
);

input wire ext_trigger_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GPIO_IN, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GPIO_IN DATA" *)
input wire [15 : 0] gpio_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MICROBLAZE_CLK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_RESET microblaze_reset, CLK_DOMAIN top_level_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MICROBLAZE_CLK CLK" *)
input wire microblaze_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MICROBLAZE_RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MICROBLAZE_RESET RST" *)
input wire microblaze_reset;
input wire pipeline_active_in_0;
input wire pipeline_active_in_1;
input wire pipeline_active_in_2;
input wire pipeline_active_in_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.RF_CLK, FREQ_HZ 250000000, PHASE 0.000, ASSOCIATED_RESET rf_reset, CLK_DOMAIN top_level_usp_rf_data_converter_0_0_clk_dac3, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.RF_CLK CLK" *)
input wire rf_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RF_RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RF_RESET RST" *)
input wire rf_reset;
output wire trigger_c0;
output wire trigger_c1;
output wire trigger_c2;
output wire trigger_c3;

  trigger_controller inst (
    .ext_trigger_in(ext_trigger_in),
    .gpio_in(gpio_in),
    .microblaze_clk(microblaze_clk),
    .microblaze_reset(microblaze_reset),
    .pipeline_active_in_0(pipeline_active_in_0),
    .pipeline_active_in_1(pipeline_active_in_1),
    .pipeline_active_in_2(pipeline_active_in_2),
    .pipeline_active_in_3(pipeline_active_in_3),
    .rf_clk(rf_clk),
    .rf_reset(rf_reset),
    .trigger_c0(trigger_c0),
    .trigger_c1(trigger_c1),
    .trigger_c2(trigger_c2),
    .trigger_c3(trigger_c3)
  );
endmodule