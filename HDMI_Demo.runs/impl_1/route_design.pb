
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7s152default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7s152default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
Z
%s*common2A
-Phase 1 Build RT Design | Checksum: 75c6a81d
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:07 ; elapsed = 00:00:05 . Memory (MB): peak = 2867.637 ; gain = 0.000 ; free physical = 2496 ; free virtual = 61062default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
e
%s*common2L
8Phase 2.1 Fix Topology Constraints | Checksum: 75c6a81d
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:07 ; elapsed = 00:00:05 . Memory (MB): peak = 2867.637 ; gain = 0.000 ; free physical = 2471 ; free virtual = 60792default:defaulth px? 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
^
%s*common2E
1Phase 2.2 Pre Route Cleanup | Checksum: 75c6a81d
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:07 ; elapsed = 00:00:05 . Memory (MB): peak = 2867.637 ; gain = 0.000 ; free physical = 2470 ; free virtual = 60792default:defaulth px? 
p

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px? 
[
%s*common2B
.Phase 2.3 Update Timing | Checksum: 1a13f4126
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:11 ; elapsed = 00:00:06 . Memory (MB): peak = 2867.637 ; gain = 0.000 ; free physical = 2444 ; free virtual = 60492default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-5.561 | TNS=-553.918| WHS=-2.062 | THS=-318.781|
2default:defaultZ35-416h px? 
}

Phase %s%s
101*constraints2
2.4 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
2.4.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
]
%s*common2D
0Phase 2.4.1 Update Timing | Checksum: 10923be76
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:07 . Memory (MB): peak = 2867.637 ; gain = 0.000 ; free physical = 2425 ; free virtual = 60352default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-5.561 | TNS=-584.202| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
h
%s*common2O
;Phase 2.4 Update Timing for Bus Skew | Checksum: 1804e7527
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:07 . Memory (MB): peak = 2867.637 ; gain = 0.000 ; free physical = 2412 ; free virtual = 60222default:defaulth px? 
a
%s*common2H
4Phase 2 Router Initialization | Checksum: 14f6407bf
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:07 . Memory (MB): peak = 2867.637 ; gain = 0.000 ; free physical = 2413 ; free virtual = 60232default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
\
%s*common2C
/Phase 3.1 Global Routing | Checksum: 14f6407bf
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:07 . Memory (MB): peak = 2867.637 ; gain = 0.000 ; free physical = 2413 ; free virtual = 60232default:defaulth px? 
[
%s*common2B
.Phase 3 Initial Routing | Checksum: 150354b54
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:59 ; elapsed = 00:00:15 . Memory (MB): peak = 3054.594 ; gain = 186.957 ; free physical = 2405 ; free virtual = 60182default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
1522default:default2?
?The top 5 pins with tight setup and hold constraints:

+====================+====================+==================================================================================================================================================================+
| Launch Setup Clock | Launch Hold Clock  | Pin                                                                                                                                                              |
+====================+====================+==================================================================================================================================================================+
| clk_out1_clk_wiz_0 | clk_out1_clk_wiz_0 | Video_Generator0/ila_color/inst/ila_core_inst/shifted_data_in_reg[7][275]_srl8/D                                                                                 |
| clk_out1_clk_wiz_0 | clk_out1_clk_wiz_0 | Video_Generator0/ila_color/inst/ila_core_inst/shifted_data_in_reg[7][274]_srl8/D                                                                                 |
| clk_out1_clk_wiz_0 | clk_out1_clk_wiz_0 | Video_Generator0/ila_color/inst/ila_core_inst/shifted_data_in_reg[7][255]_srl8/D                                                                                 |
| clk_out1_clk_wiz_0 | clk_out1_clk_wiz_0 | Video_Generator0/ila_color/inst/ila_core_inst/u_trig/U_TM/N_DDR_MODE.G_NMU[12].U_M/allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/probeDelay1_reg[23]/D |
| clk_out1_clk_wiz_0 | clk_out1_clk_wiz_0 | Video_Generator0/ila_color/inst/ila_core_inst/shifted_data_in_reg[7][273]_srl8/D                                                                                 |
+--------------------+--------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-10.074| TNS=-1156.098| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
`
%s*common2G
3Phase 4.1 Global Iteration 0 | Checksum: 29b05e94d
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:15:59 ; elapsed = 00:06:09 . Memory (MB): peak = 3685.594 ; gain = 817.957 ; free physical = 2165 ; free virtual = 58982default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-10.213| TNS=-1172.328| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
`
%s*common2G
3Phase 4.2 Global Iteration 1 | Checksum: 12164032e
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:18:19 ; elapsed = 00:07:18 . Memory (MB): peak = 3685.594 ; gain = 817.957 ; free physical = 2248 ; free virtual = 60052default:defaulth px? 
^
%s*common2E
1Phase 4 Rip-up And Reroute | Checksum: 12164032e
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:18:19 ; elapsed = 00:07:18 . Memory (MB): peak = 3685.594 ; gain = 817.957 ; free physical = 2248 ; free virtual = 60052default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
]
%s*common2D
0Phase 5.1.1 Update Timing | Checksum: 1caabc87a
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:18:20 ; elapsed = 00:07:18 . Memory (MB): peak = 3685.594 ; gain = 817.957 ; free physical = 2252 ; free virtual = 60102default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-10.074| TNS=-1153.458| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
[
%s*common2B
.Phase 5.1 Delay CleanUp | Checksum: 1545ca888
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:18:20 ; elapsed = 00:07:18 . Memory (MB): peak = 3685.594 ; gain = 817.957 ; free physical = 2245 ; free virtual = 60102default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
e
%s*common2L
8Phase 5.2 Clock Skew Optimization | Checksum: 1545ca888
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:18:20 ; elapsed = 00:07:18 . Memory (MB): peak = 3685.594 ; gain = 817.957 ; free physical = 2245 ; free virtual = 60102default:defaulth px? 
g
%s*common2N
:Phase 5 Delay and Skew Optimization | Checksum: 1545ca888
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:18:20 ; elapsed = 00:07:18 . Memory (MB): peak = 3685.594 ; gain = 817.957 ; free physical = 2243 ; free virtual = 60092default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
]
%s*common2D
0Phase 6.1.1 Update Timing | Checksum: 1bfb57c82
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:18:21 ; elapsed = 00:07:19 . Memory (MB): peak = 3685.594 ; gain = 817.957 ; free physical = 2239 ; free virtual = 60102default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-10.074| TNS=-1154.046| WHS=-0.634 | THS=-14.254|
2default:defaultZ35-416h px? 
[
%s*common2B
.Phase 6.1 Hold Fix Iter | Checksum: 16cc88583
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:20:46 ; elapsed = 00:08:15 . Memory (MB): peak = 3685.594 ; gain = 817.957 ; free physical = 2173 ; free virtual = 59462default:defaulth px? 
?
?The router encountered %s pins that are both setup-critical and hold-critical and tried to fix hold violations at the expense of setup slack. Such pins are:
%s201*route2
2192default:default2?
?	Video_Generator0/block_inferred_i_32/DI[2]
	Video_Generator0/block_inferred_i_20/DI[2]
	Video_Generator0/block_inferred_i_10/S[2]
	Video_Generator0/ila_color/inst/ila_core_inst/shifted_data_in_reg[7][201]_srl8/D
	Video_Generator0/block_inferred_i_10/S[1]
	Video_Generator0/block_inferred_i_29/I4
	Video_Generator0/block_inferred_i_15/I2
	Video_Generator0/block_inferred_i_31/I3
	Video_Generator0/block_inferred_i_9/DI[0]
	Video_Generator0/block_inferred_i_19/I0
	.. and 209 more pins.
2default:defaultZ35-468h px? 
Y
%s*common2@
,Phase 6 Post Hold Fix | Checksum: 1a516df51
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:20:46 ; elapsed = 00:08:15 . Memory (MB): peak = 3685.594 ; gain = 817.957 ; free physical = 2172 ; free virtual = 59472default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
Z
%s*common2A
-Phase 7 Route finalize | Checksum: 23c05e6b3
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:20:46 ; elapsed = 00:08:15 . Memory (MB): peak = 3685.594 ; gain = 817.957 ; free physical = 2182 ; free virtual = 59592default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
a
%s*common2H
4Phase 8 Verifying routed nets | Checksum: 23c05e6b3
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:20:46 ; elapsed = 00:08:15 . Memory (MB): peak = 3685.594 ; gain = 817.957 ; free physical = 2188 ; free virtual = 59682default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
]
%s*common2D
0Phase 9 Depositing Routes | Checksum: 25d3035bf
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:20:46 ; elapsed = 00:08:15 . Memory (MB): peak = 3701.602 ; gain = 833.965 ; free physical = 2204 ; free virtual = 59872default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
10.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
\
%s*common2C
/Phase 10.1 Update Timing | Checksum: 1aa2046b4
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:20:47 ; elapsed = 00:08:15 . Memory (MB): peak = 3701.602 ; gain = 833.965 ; free physical = 2197 ; free virtual = 59822default:defaulth px? 
?
Estimated Timing Summary %s
57*route2L
8| WNS=-11.312| TNS=-1367.446| WHS=0.051  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
_
%s*common2F
2Phase 10 Post Router Timing | Checksum: 1aa2046b4
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:20:47 ; elapsed = 00:08:15 . Memory (MB): peak = 3701.602 ; gain = 833.965 ; free physical = 2195 ; free virtual = 59812default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:20:47 ; elapsed = 00:08:15 . Memory (MB): peak = 3701.602 ; gain = 833.965 ; free physical = 2328 ; free virtual = 61162default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1222default:default2
52default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:20:492default:default2
00:08:162default:default2
3701.6022default:default2
833.9652default:default2
23282default:default2
61162default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2
00:00:00.592default:default2
3701.6022default:default2
0.0002default:default2
23302default:default2
61162default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2b
N/home/perinze/code/fpga/video_final/HDMI_Demo.runs/impl_1/HDMI_Demo_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
pExecuting : report_drc -file HDMI_Demo_drc_routed.rpt -pb HDMI_Demo_drc_routed.pb -rpx HDMI_Demo_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2w
creport_drc -file HDMI_Demo_drc_routed.rpt -pb HDMI_Demo_drc_routed.pb -rpx HDMI_Demo_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
R/home/perinze/code/fpga/video_final/HDMI_Demo.runs/impl_1/HDMI_Demo_drc_routed.rptR/home/perinze/code/fpga/video_final/HDMI_Demo.runs/impl_1/HDMI_Demo_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file HDMI_Demo_methodology_drc_routed.rpt -pb HDMI_Demo_methodology_drc_routed.pb -rpx HDMI_Demo_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file HDMI_Demo_methodology_drc_routed.rpt -pb HDMI_Demo_methodology_drc_routed.pb -rpx HDMI_Demo_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
609*	vivadotcl2?
^/home/perinze/code/fpga/video_final/HDMI_Demo.runs/impl_1/HDMI_Demo_methodology_drc_routed.rpt^/home/perinze/code/fpga/video_final/HDMI_Demo.runs/impl_1/HDMI_Demo_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file HDMI_Demo_power_routed.rpt -pb HDMI_Demo_power_summary_routed.pb -rpx HDMI_Demo_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
sreport_power -file HDMI_Demo_power_routed.rpt -pb HDMI_Demo_power_summary_routed.pb -rpx HDMI_Demo_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1342default:default2
52default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2s
_Executing : report_route_status -file HDMI_Demo_route_status.rpt -pb HDMI_Demo_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file HDMI_Demo_timing_summary_routed.rpt -pb HDMI_Demo_timing_summary_routed.pb -rpx HDMI_Demo_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px? 
?
%s4*runtcl2f
RExecuting : report_incremental_reuse -file HDMI_Demo_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2f
RExecuting : report_clock_utilization -file HDMI_Demo_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file HDMI_Demo_bus_skew_routed.rpt -pb HDMI_Demo_bus_skew_routed.pb -rpx HDMI_Demo_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 


End Record