`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/13 14:42:30
// Design Name: 
// Module Name: Video_Generator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//Image generation part
module Video_Generator(
    input clk_100MHz,
    input clk,
    input RGB_VDE,
    input [11:0]Set_X,
    input [11:0]Set_Y,
    output [23:0]RGB_Data    //RBG
    );
    reg [13:0]Address=0;
    wire [7:0]R_Data;
    wire [7:0]G_Data;
    wire [7:0]B_Data;
    
//    (235, 235, 235)
//    (235, 235, 15)
//    (16, 236, 236)
//    (16, 236, 16)
//    (235, 15, 235)
//    (234, 16, 15)
//    (16, 16, 234)
//    (16, 16, 16)
    reg [23:0] colors [7:0];
    integer i;
    initial begin
        colors[0] = {8'd235, 8'd235, 8'd235};
        colors[1] = {8'd235, 8'd235, 8'd15 };
        colors[2] = {8'd15 , 8'd235, 8'd235};
        colors[3] = {8'd15 , 8'd235, 8'd15 };
        colors[4] = {8'd235, 8'd15 , 8'd235};
        colors[5] = {8'd235, 8'd15 , 8'd15 };
        colors[6] = {8'd15 , 8'd15 , 8'd235};
        colors[7] = {8'd15 , 8'd15 , 8'd15 };
    end
    
    wire [11:0]block;
    wire valid;
    assign valid =
        (Set_X < 12'd1920) & (Set_Y < 12'd1080);
    assign block = Set_X / 12'd240;
    assign RGB_Data = {24{valid}} & colors[block];
    
    ila_0 ila_color (
        .clk(clk_100MHz), // input wire clk
    
    
        .probe0(colors[0]), // input wire [23:0]  probe0  
        .probe1(colors[1]), // input wire [23:0]  probe1 
        .probe2(colors[2]), // input wire [23:0]  probe2 
        .probe3(colors[3]), // input wire [23:0]  probe3 
        .probe4(colors[4]), // input wire [23:0]  probe4 
        .probe5(colors[5]), // input wire [23:0]  probe5 
        .probe6(colors[6]), // input wire [23:0]  probe6 
        .probe7(colors[7]), // input wire [23:0]  probe7 
        .probe8(Set_X), // input wire [11:0]  probe8 
        .probe9(Set_Y), // input wire [11:0]  probe9 
        .probe10(block), // input wire [11:0]  probe10 
        .probe11(colors[block]), // input wire [23:0]  probe11 
        .probe12(RGB_Data), // input wire [23:0]  probe12 
        .probe13(valid), // input wire [0:0]  probe13 
        .probe14(0), // input wire [0:0]  probe14 
        .probe15(0) // input wire [0:0]  probe15
    );
//    Picture_R_Rom_1 R_ROM (
//      .clka(clk),    // input wire clka
//      .ena(1),      // input wire ena
//      .addra(Address),  // input wire [13 : 0] addra
//      .douta(R_Data)  // output wire [7 : 0] douta
//    );
//    Picture_G_Rom_1 G_ROM (
//      .clka(clk),    // input wire clka
//      .ena(1),      // input wire ena
//      .addra(Address),  // input wire [13 : 0] addra
//      .douta(G_Data)  // output wire [7 : 0] douta
//    );
//    Picture_B_Rom_1 B_ROM (
//      .clka(clk),    // input wire clka
//      .ena(1),      // input wire ena
//      .addra(Address),  // input wire [13 : 0] addra
//      .douta(B_Data)  // output wire [7 : 0] douta
//    );
endmodule
