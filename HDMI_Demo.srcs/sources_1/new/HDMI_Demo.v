`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/13 13:55:11
// Design Name: 
// Module Name: HDMI_Demo
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

//This is a demonstration of HDMI, which outputs the school badge of Southeast University on the HDMI display.
module HDMI_Demo(
    input clk_100MHz,
    input uart_rx,
    output led,
    output TMDS_Tx_Clk_N,
    output TMDS_Tx_Clk_P,
    output [2:0]TMDS_Tx_Data_N,
    output [2:0]TMDS_Tx_Data_P
    );
    wire clk_system;
    wire clk_10MHz;
    wire [23:0]RGB_Data;
    
    wire [23:0]rgb_source;
    wire [23:0]rgb_filtered;
    
    wire RGB_HSync;
    wire RGB_VSync;
    wire RGB_VDE;
    wire [11:0]x_source;
    wire [11:0]y_source;
    wire [11:0]x_require;
    wire [11:0]y_require;
    
    wire [11:0]x_set;
    wire [11:0]y_set;
    wire [11:0]w_set;
    wire [11:0]h_set;
//    reg [11:0]x_set = 12'd640;
//    reg [11:0]y_set = 12'd480;
//    reg [11:0]w_set = 12'd640;
//    reg [11:0]h_set = 12'd480;
    clk_wiz_0 clk_10(.clk_out1(clk_system), .clk_out2(clk_10MHz), .clk_in1(clk_100MHz));
    //RGBToDvi instantiation
    rgb2dvi_0 rgb2dvi(
        .TMDS_Clk_p(TMDS_Tx_Clk_P),
        .TMDS_Clk_n(TMDS_Tx_Clk_N),
        .TMDS_Data_p(TMDS_Tx_Data_P),
        .TMDS_Data_n(TMDS_Tx_Data_N),
        .aRst_n(1),
        .vid_pData(RGB_Data),
        .vid_pVDE(RGB_VDE),
        .vid_pHSync(RGB_HSync),
        .vid_pVSync(RGB_VSync),
        .PixelClk(clk_system));
    //HDMI driver
    Driver_HDMI Driver_HDMI0(
        .clk(clk_system),        //Clock
        .Rst(1),                 //Reset signal, low reset
        .Video_Mode(0),          //Video format, 0 is 1920*1080@60Hz, 1 is 1280*720@60Hz
        .RGB_In(rgb_filtered),         //Input data
        .RGB_Data(RGB_Data),     //Output Data
        .RGB_HSync(RGB_HSync),   //Line signal
        .RGB_VSync(RGB_VSync),   //Field signal
        .RGB_VDE(RGB_VDE),       //Data valid signal
        .Set_X(x_require),           //Image coordinate X
        .Set_Y(y_require)            //Image coordinate Y
        );
    Video_Generator Video_Generator0(
        .clk_100MHz(clk_100MHz),
        .clk(clk_system),
        .RGB_VDE(RGB_VDE),
        .Set_X(x_source),
        .Set_Y(y_source),
        .RGB_Data(rgb_source)    //RBG
        );
    video_coord_converter video_coord_converter0(
        .x_require(x_require),
        .y_require(y_require),
        .x_set(x_set),
        .y_set(y_set),
        .x_source(x_source),
        .y_source(y_source)
    );
    video_filter video_filter0(
        .x_set(x_set),
        .y_set(y_set),
        .w_set(w_set),
        .h_set(h_set),
        
        .x_source(x_source),
        .y_source(y_source),
        .rgb_in(rgb_source),
        .rgb_out(rgb_filtered)
    );
    UART_Demo UART_Demo0(
        .clk_100MHz(clk_100MHz),
        .clk_10MHz(clk_10MHz),
        .UART0_Rx(uart_rx),
        .led(led),
        .x_set(x_set),
        .y_set(y_set),
        .w_set(w_set),
        .h_set(h_set)
    );
    ila_1 ila_set (
        .clk(clk_100MHz), // input wire clk
    
    
        .probe0(x_set), // input wire [11:0]  probe0  
        .probe1(y_set), // input wire [11:0]  probe1 
        .probe2(w_set), // input wire [11:0]  probe2 
        .probe3(h_set), // input wire [11:0]  probe3 
        .probe4(0), // input wire [11:0]  probe4 
        .probe5(uart_rx), // input wire [0:0]  probe5 
        .probe6(0), // input wire [0:0]  probe6 
        .probe7(0) // input wire [0:0]  probe7
    );
//    v_tpg_0 tpg0 (
//      .s_axi_CTRL_AWADDR(s_axi_CTRL_AWADDR),      // input wire [7 : 0] s_axi_CTRL_AWADDR
//      .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),    // input wire s_axi_CTRL_AWVALID
//      .s_axi_CTRL_AWREADY(s_axi_CTRL_AWREADY),    // output wire s_axi_CTRL_AWREADY
//      .s_axi_CTRL_WDATA(s_axi_CTRL_WDATA),        // input wire [31 : 0] s_axi_CTRL_WDATA
//      .s_axi_CTRL_WSTRB(s_axi_CTRL_WSTRB),        // input wire [3 : 0] s_axi_CTRL_WSTRB
//      .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID),      // input wire s_axi_CTRL_WVALID
//      .s_axi_CTRL_WREADY(s_axi_CTRL_WREADY),      // output wire s_axi_CTRL_WREADY
//      .s_axi_CTRL_BRESP(s_axi_CTRL_BRESP),        // output wire [1 : 0] s_axi_CTRL_BRESP
//      .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),      // output wire s_axi_CTRL_BVALID
//      .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),      // input wire s_axi_CTRL_BREADY
//      .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR),      // input wire [7 : 0] s_axi_CTRL_ARADDR
//      .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),    // input wire s_axi_CTRL_ARVALID
//      .s_axi_CTRL_ARREADY(s_axi_CTRL_ARREADY),    // output wire s_axi_CTRL_ARREADY
//      .s_axi_CTRL_RDATA(s_axi_CTRL_RDATA),        // output wire [31 : 0] s_axi_CTRL_RDATA
//      .s_axi_CTRL_RRESP(s_axi_CTRL_RRESP),        // output wire [1 : 0] s_axi_CTRL_RRESP
//      .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),      // output wire s_axi_CTRL_RVALID
//      .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),      // input wire s_axi_CTRL_RREADY
//      .ap_clk(ap_clk),                            // input wire ap_clk
//      .ap_rst_n(ap_rst_n),                        // input wire ap_rst_n
//      .fid(fid),                                  // output wire [0 : 0] fid
//      .fid_in(fid_in),                            // input wire [0 : 0] fid_in
//      .interrupt(interrupt),                      // output wire interrupt
//      .m_axis_video_TVALID(m_axis_video_TVALID),  // output wire m_axis_video_TVALID
//      .m_axis_video_TREADY(m_axis_video_TREADY),  // input wire m_axis_video_TREADY
//      .m_axis_video_TDATA(m_axis_video_TDATA),    // output wire [23 : 0] m_axis_video_TDATA
//      .m_axis_video_TKEEP(m_axis_video_TKEEP),    // output wire [2 : 0] m_axis_video_TKEEP
//      .m_axis_video_TSTRB(m_axis_video_TSTRB),    // output wire [2 : 0] m_axis_video_TSTRB
//      .m_axis_video_TUSER(m_axis_video_TUSER),    // output wire [0 : 0] m_axis_video_TUSER
//      .m_axis_video_TLAST(m_axis_video_TLAST),    // output wire [0 : 0] m_axis_video_TLAST
//      .m_axis_video_TID(m_axis_video_TID),        // output wire [0 : 0] m_axis_video_TID
//      .m_axis_video_TDEST(m_axis_video_TDEST)    // output wire [0 : 0] m_axis_video_TDEST
//    );
endmodule
