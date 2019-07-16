-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Jul 15 10:43:51 2019
-- Host        : DESKTOP-6ILET8A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/james/fpga_projects/rfsoc_controller/rfsoc_controller.srcs/sources_1/bd/top_level/ip/top_level_trigger_buffer_0_0/top_level_trigger_buffer_0_0_stub.vhdl
-- Design      : top_level_trigger_buffer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu29dr-ffvf1760-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level_trigger_buffer_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    trigger_in : in STD_LOGIC;
    pipeline_active_in_0 : in STD_LOGIC;
    pipeline_active_in_1 : in STD_LOGIC;
    pipeline_active_in_2 : in STD_LOGIC;
    pipeline_active_in_3 : in STD_LOGIC;
    pipeline_active_in_4 : in STD_LOGIC;
    pipeline_active_in_5 : in STD_LOGIC;
    pipeline_active_in_6 : in STD_LOGIC;
    pipeline_active_in_7 : in STD_LOGIC;
    pipeline_active_in_8 : in STD_LOGIC;
    pipeline_active_in_9 : in STD_LOGIC;
    pipeline_active_in_10 : in STD_LOGIC;
    pipeline_active_in_11 : in STD_LOGIC;
    pipeline_active_in_12 : in STD_LOGIC;
    pipeline_active_in_13 : in STD_LOGIC;
    pipeline_active_in_14 : in STD_LOGIC;
    pipeline_active_in_15 : in STD_LOGIC;
    trigger_out : out STD_LOGIC
  );

end top_level_trigger_buffer_0_0;

architecture stub of top_level_trigger_buffer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,trigger_in,pipeline_active_in_0,pipeline_active_in_1,pipeline_active_in_2,pipeline_active_in_3,pipeline_active_in_4,pipeline_active_in_5,pipeline_active_in_6,pipeline_active_in_7,pipeline_active_in_8,pipeline_active_in_9,pipeline_active_in_10,pipeline_active_in_11,pipeline_active_in_12,pipeline_active_in_13,pipeline_active_in_14,pipeline_active_in_15,trigger_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "trigger_buffer,Vivado 2019.1";
begin
end;
