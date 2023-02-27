// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module v_tpg_0_tpgForeground (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        bckgndYUV_dout,
        bckgndYUV_num_data_valid,
        bckgndYUV_fifo_cap,
        bckgndYUV_empty_n,
        bckgndYUV_read,
        height,
        width,
        ovrlayId,
        maskId,
        colorFormat,
        crossHairX,
        crossHairY,
        boxSize,
        boxColorR,
        boxColorG,
        boxColorB,
        motionSpeed,
        ovrlayYUV_din,
        ovrlayYUV_num_data_valid,
        ovrlayYUV_fifo_cap,
        ovrlayYUV_full_n,
        ovrlayYUV_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [23:0] bckgndYUV_dout;
input  [4:0] bckgndYUV_num_data_valid;
input  [4:0] bckgndYUV_fifo_cap;
input   bckgndYUV_empty_n;
output   bckgndYUV_read;
input  [15:0] height;
input  [15:0] width;
input  [7:0] ovrlayId;
input  [7:0] maskId;
input  [7:0] colorFormat;
input  [15:0] crossHairX;
input  [15:0] crossHairY;
input  [15:0] boxSize;
input  [15:0] boxColorR;
input  [15:0] boxColorG;
input  [15:0] boxColorB;
input  [7:0] motionSpeed;
output  [23:0] ovrlayYUV_din;
input  [4:0] ovrlayYUV_num_data_valid;
input  [4:0] ovrlayYUV_fifo_cap;
input   ovrlayYUV_full_n;
output   ovrlayYUV_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg bckgndYUV_read;
reg ovrlayYUV_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg   [15:0] boxHCoord;
reg   [15:0] boxVCoord;
wire   [0:0] tobool_fu_216_p2;
reg   [0:0] tobool_reg_411;
wire   [7:0] empty_fu_222_p1;
reg   [7:0] empty_reg_421;
wire   [7:0] pixOut_val_V_fu_232_p3;
reg   [7:0] pixOut_val_V_reg_446;
wire   [15:0] hMax_fu_240_p2;
reg   [15:0] hMax_reg_451;
wire   [15:0] vMax_fu_246_p2;
reg   [15:0] vMax_reg_456;
wire   [0:0] and4_i_fu_256_p2;
reg   [0:0] and4_i_reg_461;
wire   [0:0] and10_i_fu_270_p2;
reg   [0:0] and10_i_reg_466;
wire   [0:0] and26_i_fu_284_p2;
reg   [0:0] and26_i_reg_471;
wire   [7:0] empty_67_fu_290_p1;
reg   [7:0] empty_67_reg_476;
wire   [0:0] icmp_fu_304_p2;
reg   [0:0] icmp_reg_481;
wire   [7:0] empty_68_fu_310_p1;
reg   [7:0] empty_68_reg_486;
wire   [8:0] shl_i_fu_314_p3;
reg   [8:0] shl_i_reg_491;
reg   [15:0] y_1_reg_496;
wire    ap_CS_fsm_state2;
reg   [15:0] boxVCoord_loc_0_load_reg_504;
wire   [0:0] icmp_ln727_fu_348_p2;
reg   [15:0] boxHCoord_loc_0_load_reg_509;
wire   [0:0] cmp2_i_fu_365_p2;
reg   [0:0] cmp2_i_reg_514;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_start;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_done;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_idle;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_ready;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_bckgndYUV_read;
wire   [23:0] grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ovrlayYUV_din;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ovrlayYUV_write;
wire   [15:0] grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxHCoord_loc_1_out;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxHCoord_loc_1_out_ap_vld;
wire   [15:0] grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxVCoord_loc_1_out;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxVCoord_loc_1_out_ap_vld;
wire   [15:0] grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxHCoord;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxHCoord_ap_vld;
wire   [15:0] grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxVCoord;
wire    grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxVCoord_ap_vld;
reg    grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_start_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_NS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [15:0] boxHCoord_loc_0_fu_98;
reg   [15:0] boxVCoord_loc_0_fu_94;
reg   [15:0] y_fu_90;
wire   [15:0] y_2_fu_353_p2;
reg    ap_block_state1;
wire   [0:0] cmp31_i_fu_226_p2;
wire   [0:0] empty_66_fu_252_p1;
wire   [0:0] tmp_fu_262_p3;
wire   [0:0] tmp_2_fu_276_p3;
wire   [6:0] tmp_3_fu_294_p4;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 boxHCoord = 16'd0;
#0 boxVCoord = 16'd0;
#0 grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_start_reg = 1'b0;
end

v_tpg_0_tpgForeground_Pipeline_VITIS_LOOP_729_2 grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_start),
    .ap_done(grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_done),
    .ap_idle(grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_idle),
    .ap_ready(grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_ready),
    .bckgndYUV_dout(bckgndYUV_dout),
    .bckgndYUV_num_data_valid(5'd0),
    .bckgndYUV_fifo_cap(5'd0),
    .bckgndYUV_empty_n(bckgndYUV_empty_n),
    .bckgndYUV_read(grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_bckgndYUV_read),
    .ovrlayYUV_din(grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ovrlayYUV_din),
    .ovrlayYUV_num_data_valid(5'd0),
    .ovrlayYUV_fifo_cap(5'd0),
    .ovrlayYUV_full_n(ovrlayYUV_full_n),
    .ovrlayYUV_write(grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ovrlayYUV_write),
    .boxHCoord_loc_0(boxHCoord_loc_0_load_reg_509),
    .boxVCoord_loc_0(boxVCoord_loc_0_load_reg_504),
    .loopWidth(width),
    .pixOut_val_V_9(empty_68_reg_486),
    .pixOut_val_V(pixOut_val_V_reg_446),
    .pixOut_val_V_7(empty_67_reg_476),
    .and4_i(and4_i_reg_461),
    .and26_i(and26_i_reg_471),
    .tobool(tobool_reg_411),
    .and10_i(and10_i_reg_466),
    .ovrlayId_load(ovrlayId),
    .boxSize_1(boxSize),
    .y(y_1_reg_496),
    .zext_ln1869(motionSpeed),
    .vMax(vMax_reg_456),
    .hMax(hMax_reg_451),
    .zext_ln1869_1(shl_i_reg_491),
    .cmp101_i(icmp_reg_481),
    .boxColorG_1(empty_reg_421),
    .crossHairX_1(crossHairX),
    .cmp2_i(cmp2_i_reg_514),
    .color(colorFormat),
    .boxHCoord_loc_1_out(grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxHCoord_loc_1_out),
    .boxHCoord_loc_1_out_ap_vld(grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxHCoord_loc_1_out_ap_vld),
    .boxVCoord_loc_1_out(grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxVCoord_loc_1_out),
    .boxVCoord_loc_1_out_ap_vld(grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxVCoord_loc_1_out_ap_vld),
    .boxHCoord(grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxHCoord),
    .boxHCoord_ap_vld(grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxHCoord_ap_vld),
    .boxVCoord(grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxVCoord),
    .boxVCoord_ap_vld(grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxVCoord_ap_vld)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln727_fu_348_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_NS_fsm_state3) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_start_reg <= 1'b1;
        end else if ((grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_ready == 1'b1)) begin
            grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        boxHCoord_loc_0_fu_98 <= boxHCoord;
    end else if (((1'b1 == ap_CS_fsm_state4) & (grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxHCoord_loc_1_out_ap_vld == 1'b1))) begin
        boxHCoord_loc_0_fu_98 <= grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxHCoord_loc_1_out;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        boxVCoord_loc_0_fu_94 <= boxVCoord;
    end else if (((1'b1 == ap_CS_fsm_state4) & (grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxVCoord_loc_1_out_ap_vld == 1'b1))) begin
        boxVCoord_loc_0_fu_94 <= grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxVCoord_loc_1_out;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        y_fu_90 <= 16'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln727_fu_348_p2 == 1'd0))) begin
        y_fu_90 <= y_2_fu_353_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        and10_i_reg_466 <= and10_i_fu_270_p2;
        and26_i_reg_471 <= and26_i_fu_284_p2;
        and4_i_reg_461 <= and4_i_fu_256_p2;
        empty_67_reg_476 <= empty_67_fu_290_p1;
        empty_68_reg_486 <= empty_68_fu_310_p1;
        empty_reg_421 <= empty_fu_222_p1;
        hMax_reg_451 <= hMax_fu_240_p2;
        icmp_reg_481 <= icmp_fu_304_p2;
        pixOut_val_V_reg_446[6 : 4] <= pixOut_val_V_fu_232_p3[6 : 4];
        shl_i_reg_491[8 : 1] <= shl_i_fu_314_p3[8 : 1];
        tobool_reg_411 <= tobool_fu_216_p2;
        vMax_reg_456 <= vMax_fu_246_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxHCoord_ap_vld == 1'b1))) begin
        boxHCoord <= grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxHCoord;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln727_fu_348_p2 == 1'd0))) begin
        boxHCoord_loc_0_load_reg_509 <= boxHCoord_loc_0_fu_98;
        boxVCoord_loc_0_load_reg_504 <= boxVCoord_loc_0_fu_94;
        cmp2_i_reg_514 <= cmp2_i_fu_365_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxVCoord_ap_vld == 1'b1))) begin
        boxVCoord <= grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_boxVCoord;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        y_1_reg_496 <= y_fu_90;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (real_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln727_fu_348_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (real_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bckgndYUV_read = grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_bckgndYUV_read;
    end else begin
        bckgndYUV_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln727_fu_348_p2 == 1'd1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ovrlayYUV_write = grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ovrlayYUV_write;
    end else begin
        ovrlayYUV_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln727_fu_348_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and10_i_fu_270_p2 = (tmp_fu_262_p3 & cmp31_i_fu_226_p2);

assign and26_i_fu_284_p2 = (tmp_2_fu_276_p3 & cmp31_i_fu_226_p2);

assign and4_i_fu_256_p2 = (empty_66_fu_252_p1 & cmp31_i_fu_226_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_NS_fsm_state3 = ap_NS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (real_start == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign cmp2_i_fu_365_p2 = ((y_fu_90 == crossHairY) ? 1'b1 : 1'b0);

assign cmp31_i_fu_226_p2 = ((colorFormat == 8'd0) ? 1'b1 : 1'b0);

assign empty_66_fu_252_p1 = maskId[0:0];

assign empty_67_fu_290_p1 = boxColorR[7:0];

assign empty_68_fu_310_p1 = boxColorB[7:0];

assign empty_fu_222_p1 = boxColorG[7:0];

assign grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_start = grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ap_start_reg;

assign hMax_fu_240_p2 = (width - boxSize);

assign icmp_fu_304_p2 = ((tmp_3_fu_294_p4 != 7'd0) ? 1'b1 : 1'b0);

assign icmp_ln727_fu_348_p2 = ((y_fu_90 == height) ? 1'b1 : 1'b0);

assign ovrlayYUV_din = grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174_ovrlayYUV_din;

assign pixOut_val_V_fu_232_p3 = ((cmp31_i_fu_226_p2[0:0] == 1'b1) ? 8'd240 : 8'd128);

assign shl_i_fu_314_p3 = {{motionSpeed}, {1'd0}};

assign start_out = real_start;

assign tmp_2_fu_276_p3 = maskId[32'd2];

assign tmp_3_fu_294_p4 = {{colorFormat[7:1]}};

assign tmp_fu_262_p3 = maskId[32'd1];

assign tobool_fu_216_p2 = ((maskId == 8'd0) ? 1'b1 : 1'b0);

assign vMax_fu_246_p2 = (height - boxSize);

assign y_2_fu_353_p2 = (y_fu_90 + 16'd1);

always @ (posedge ap_clk) begin
    pixOut_val_V_reg_446[3:0] <= 4'b0000;
    pixOut_val_V_reg_446[7] <= 1'b1;
    shl_i_reg_491[0] <= 1'b0;
end

endmodule //v_tpg_0_tpgForeground