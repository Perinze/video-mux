-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Sun Feb 26 20:29:38 2023
-- Host        : PDArch running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/perinze/code/fpga/SEA/Examples/FPGA/4.Module-Interface/Mini-HDMI-Interface/HDMI_Demo/HDMI_Demo.gen/sources_1/ip/Picture_R_Rom/Picture_R_Rom_stub.vhdl
-- Design      : Picture_R_Rom
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s15ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Picture_R_Rom is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end Picture_R_Rom;

architecture stub of Picture_R_Rom is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,addra[13:0],douta[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_5,Vivado 2022.2";
begin
end;
