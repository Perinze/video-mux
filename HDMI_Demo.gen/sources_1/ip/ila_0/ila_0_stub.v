// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Feb 27 11:17:16 2023
// Host        : PDArch running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/perinze/code/fpga/SEA/Examples/FPGA/4.Module-Interface/Mini-HDMI-Interface/HDMI_Demo/HDMI_Demo.gen/sources_1/ip/ila_0/ila_0_stub.v
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2022.2" *)
module ila_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[23:0],probe1[23:0],probe2[23:0],probe3[23:0],probe4[23:0],probe5[23:0],probe6[23:0],probe7[23:0],probe8[11:0],probe9[11:0],probe10[11:0],probe11[23:0],probe12[23:0],probe13[0:0],probe14[0:0],probe15[0:0]" */;
  input clk;
  input [23:0]probe0;
  input [23:0]probe1;
  input [23:0]probe2;
  input [23:0]probe3;
  input [23:0]probe4;
  input [23:0]probe5;
  input [23:0]probe6;
  input [23:0]probe7;
  input [11:0]probe8;
  input [11:0]probe9;
  input [11:0]probe10;
  input [23:0]probe11;
  input [23:0]probe12;
  input [0:0]probe13;
  input [0:0]probe14;
  input [0:0]probe15;
endmodule
