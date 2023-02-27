
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [0:0] axis_block_sigs;
wire [6:0] inst_idle_sigs;
wire [2:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~grp_v_tpgHlsDataFlow_fu_313.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_936_2_fu_155.m_axis_video_TDATA_blk_n;

assign inst_idle_sigs[0] = grp_v_tpgHlsDataFlow_fu_313.tpgBackground_U0.ap_idle;
assign inst_block_sigs[0] = (grp_v_tpgHlsDataFlow_fu_313.tpgBackground_U0.ap_done & ~grp_v_tpgHlsDataFlow_fu_313.tpgBackground_U0.ap_continue) | ~grp_v_tpgHlsDataFlow_fu_313.tpgBackground_U0.grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_442.bckgndYUV_blk_n;
assign inst_idle_sigs[1] = grp_v_tpgHlsDataFlow_fu_313.tpgForeground_U0.ap_idle;
assign inst_block_sigs[1] = (grp_v_tpgHlsDataFlow_fu_313.tpgForeground_U0.ap_done & ~grp_v_tpgHlsDataFlow_fu_313.tpgForeground_U0.ap_continue) | ~grp_v_tpgHlsDataFlow_fu_313.tpgForeground_U0.grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174.bckgndYUV_blk_n | ~grp_v_tpgHlsDataFlow_fu_313.tpgForeground_U0.grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_174.ovrlayYUV_blk_n;
assign inst_idle_sigs[2] = grp_v_tpgHlsDataFlow_fu_313.MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_block_sigs[2] = (grp_v_tpgHlsDataFlow_fu_313.MultiPixStream2AXIvideo_U0.ap_done & ~grp_v_tpgHlsDataFlow_fu_313.MultiPixStream2AXIvideo_U0.ap_continue) | ~grp_v_tpgHlsDataFlow_fu_313.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_936_2_fu_155.ovrlayYUV_blk_n;

assign inst_idle_sigs[3] = 1'b0;
assign inst_idle_sigs[4] = grp_v_tpgHlsDataFlow_fu_313.ap_idle;
assign inst_idle_sigs[5] = grp_v_tpgHlsDataFlow_fu_313.MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_idle_sigs[6] = grp_v_tpgHlsDataFlow_fu_313.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_936_2_fu_155.ap_idle;

v_tpg_0_hls_deadlock_idx0_monitor v_tpg_0_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
