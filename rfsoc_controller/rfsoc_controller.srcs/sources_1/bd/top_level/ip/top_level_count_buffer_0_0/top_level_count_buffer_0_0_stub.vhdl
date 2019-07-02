-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Jul  2 14:13:40 2019
-- Host        : DESKTOP-6ILET8A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/james/fpga_projects/rfsoc_controller/rfsoc_controller.srcs/sources_1/bd/top_level/ip/top_level_count_buffer_0_0/top_level_count_buffer_0_0_stub.vhdl
-- Design      : top_level_count_buffer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu29dr-ffvf1760-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level_count_buffer_0_0 is
  Port ( 
    gpio_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_clk : in STD_LOGIC;
    s_axis_resetn : in STD_LOGIC;
    m_axis_clk : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end top_level_count_buffer_0_0;

architecture stub of top_level_count_buffer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "gpio_in[31:0],gpio_out[31:0],s_axis_clk,s_axis_resetn,m_axis_clk,s_axis_tready,s_axis_tdata[31:0],s_axis_tvalid,m_axis_tready,m_axis_tvalid,m_axis_tdata[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "count_buffer,Vivado 2019.1";
begin
end;