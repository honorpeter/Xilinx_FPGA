
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2(
xczu7ev-ffvc1156-es22default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2(
xczu7ev-ffvc1156-es22default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
w
Command: %s
53*	vivadotcl2F
2report_drc (run_mandatory_drcs) for: router_checks2default:defaultZ4-113h px� 
q
%s completed successfully
29*	vivadotcl23
report_drc (run_mandatory_drcs)2default:defaultZ4-42h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
C
.Phase 1 Build RT Design | Checksum: 12cf491dc
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:03:08 ; elapsed = 00:03:09 . Memory (MB): peak = 4230.723 ; gain = 314.5822default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
B
-Phase 2.1 Create Timer | Checksum: 1464891d9
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:03:12 ; elapsed = 00:03:13 . Memory (MB): peak = 4230.723 ; gain = 314.5822default:defaulth px� 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 1464891d9
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:03:13 ; elapsed = 00:03:14 . Memory (MB): peak = 4230.723 ; gain = 314.5822default:defaulth px� 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 1464891d9
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:03:13 ; elapsed = 00:03:14 . Memory (MB): peak = 4230.723 ; gain = 314.5822default:defaulth px� 
{

Phase %s%s
101*constraints2
2.4 2default:default2,
Global Clock Net Routing2default:defaultZ18-101h px� 
N
9Phase 2.4 Global Clock Net Routing | Checksum: 134ebe97e
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:03:23 ; elapsed = 00:03:24 . Memory (MB): peak = 4285.398 ; gain = 369.2582default:defaulth px� 
p

Phase %s%s
101*constraints2
2.5 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.5 Update Timing | Checksum: 245bd01e3
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:05:07 ; elapsed = 00:05:08 . Memory (MB): peak = 4285.398 ; gain = 369.2582default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=1.084  | TNS=0.000  | WHS=-0.081 | THS=-85.950|
2default:defaultZ35-416h px� 
}

Phase %s%s
101*constraints2
2.6 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
2.6.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 2.6.1 Update Timing | Checksum: 1dfa1cab3
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:06:54 ; elapsed = 00:06:56 . Memory (MB): peak = 4285.398 ; gain = 369.2582default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=1.084  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
P
;Phase 2.6 Update Timing for Bus Skew | Checksum: 1bb52a8ae
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:06:55 ; elapsed = 00:06:57 . Memory (MB): peak = 4285.398 ; gain = 369.2582default:defaulth px� 
I
4Phase 2 Router Initialization | Checksum: 1ac0ed5bb
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:06:55 ; elapsed = 00:06:57 . Memory (MB): peak = 4285.398 ; gain = 369.2582default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
C
.Phase 3 Initial Routing | Checksum: 2237e0f44
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:09:46 ; elapsed = 00:09:49 . Memory (MB): peak = 4285.398 ; gain = 369.2582default:defaulth px� 
=
Initial Estimated Congestion179*routeZ35-449h px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.427  | TNS=0.000  | WHS=-0.027 | THS=-0.074 |
2default:defaultZ35-416h px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 2ce751040
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:20:17 ; elapsed = 00:20:23 . Memory (MB): peak = 4410.668 ; gain = 494.5272default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.427  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1ef1187e7
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:20:41 ; elapsed = 00:20:49 . Memory (MB): peak = 4410.668 ; gain = 494.5272default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 1ef1187e7
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:20:42 ; elapsed = 00:20:49 . Memory (MB): peak = 4410.668 ; gain = 494.5272default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 5.1.1 Update Timing | Checksum: 1f9c3a416
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:21:22 ; elapsed = 00:21:30 . Memory (MB): peak = 4410.668 ; gain = 494.5272default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.427  | TNS=0.000  | WHS=0.030  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 5.1 Delay CleanUp | Checksum: 1c9ccc557
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:21:23 ; elapsed = 00:21:31 . Memory (MB): peak = 4410.668 ; gain = 494.5272default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1c9ccc557
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:21:24 ; elapsed = 00:21:31 . Memory (MB): peak = 4410.668 ; gain = 494.5272default:defaulth px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1c9ccc557
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:21:24 ; elapsed = 00:21:32 . Memory (MB): peak = 4410.668 ; gain = 494.5272default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 6.1.1 Update Timing | Checksum: 1c0c50c23
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:21:54 ; elapsed = 00:22:02 . Memory (MB): peak = 4410.668 ; gain = 494.5272default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.427  | TNS=0.000  | WHS=0.030  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 17ff196b9
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:21:55 ; elapsed = 00:22:03 . Memory (MB): peak = 4410.668 ; gain = 494.5272default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 17ff196b9
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:21:56 ; elapsed = 00:22:04 . Memory (MB): peak = 4410.668 ; gain = 494.5272default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 1205210ce
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:21:58 ; elapsed = 00:22:06 . Memory (MB): peak = 4410.668 ; gain = 494.5272default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 1205210ce
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:21:58 ; elapsed = 00:22:06 . Memory (MB): peak = 4410.668 ; gain = 494.5272default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 1205210ce
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:22:09 ; elapsed = 00:22:17 . Memory (MB): peak = 4410.668 ; gain = 494.5272default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2J
6| WNS=0.427  | TNS=0.000  | WHS=0.030  | THS=0.000  |
2default:defaultZ35-57h px� 
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px� 
G
2Phase 10 Post Router Timing | Checksum: 1205210ce
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:22:10 ; elapsed = 00:22:18 . Memory (MB): peak = 4410.668 ; gain = 494.5272default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2q
]Time (s): cpu = 00:22:10 ; elapsed = 00:22:18 . Memory (MB): peak = 4410.668 ; gain = 494.5272default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2722default:default2
582default:default2
52default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:22:342default:default2
00:22:462default:default2
4410.6682default:default2
494.5272default:defaultZ17-268h px� 
~
4The following parameters have non-default value.
%s
395*common2&
general.maxThreads2default:defaultZ17-600h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:152default:default2
00:00:162default:default2
4410.6682default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2R
>C:/zcu106_ipi/zcu106_ipi.runs/impl_1/system_wrapper_routed.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:01:012default:default2
00:01:042default:default2
4410.6682default:default2
0.0002default:defaultZ17-268h px� 
�
Command: %s
53*	vivadotcl2�
rreport_drc -file system_wrapper_drc_routed.rpt -pb system_wrapper_drc_routed.pb -rpx system_wrapper_drc_routed.rpx2default:defaultZ4-113h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
BC:/zcu106_ipi/zcu106_ipi.runs/impl_1/system_wrapper_drc_routed.rptBC:/zcu106_ipi/zcu106_ipi.runs/impl_1/system_wrapper_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:462default:default2
00:00:502default:default2
4410.6682default:default2
0.0002default:defaultZ17-268h px� 
�
Command: %s
53*	vivadotcl2�
qreport_methodology -file system_wrapper_methodology_drc_routed.rpt -rpx system_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
XDCB-5#12default:default2
Warning2default:default2
XDCB-5#12default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/U_CDONE/I_YESLUT6.U_SRL32_*/CLK*" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '107' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 80)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
XDCB-5#22default:default2
Warning2default:default2
XDCB-5#22default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/U_NS0/I_YESLUT6.U_SRL32_*/CLK*" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '108' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 81)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
XDCB-5#32default:default2
Warning2default:default2
XDCB-5#32default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/U_NS1/I_YESLUT6.U_SRL32_*/CLK*" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '109' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 82)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
XDCB-5#42default:default2
Warning2default:default2
XDCB-5#42default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/U_CMPRESET/I_YESLUT6.U_SRL32_*/CLK*" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '101' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 74)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
XDCB-5#52default:default2
Warning2default:default2
XDCB-5#52default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/U_CMPRESET/I_YESLUT6.U_SRL32_*/CLK*" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '102' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 75)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
XDCB-5#62default:default2
Warning2default:default2
XDCB-5#62default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/U_CMPRESET/I_YESLUT6.U_SRL32_*/CLK*" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '94' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 63)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
XDCB-5#72default:default2
Warning2default:default2
XDCB-5#72default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_sample_counter/U_SCE/I_YESLUT6.U_SRLC16E/CLK*" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '103' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 76)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
XDCB-5#82default:default2
Warning2default:default2
XDCB-5#82default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_sample_counter/U_SCE/I_YESLUT6.U_SRLC16E/CLK*" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '104' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 77)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
XDCB-5#92default:default2
Warning2default:default2
XDCB-5#92default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_sample_counter/U_SCMPCE/I_YESLUT6.U_SRL32/CLK*"}]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '91' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 60)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#102default:default2
Warning2default:default2
	XDCB-5#102default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_sample_counter/U_SCRST/I_YESLUT6.U_SRL32_*/CLK*" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '105' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 78)2default:defaultZ23-114h px� 
�

�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#112default:default2
Warning2default:default2
	XDCB-5#112default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_sample_counter/u_scnt_cmp/allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/u_srl*/S*/CLK*"}]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '93' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 62)2default:defaultZ23-114h px� 
�

�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#122default:default2
Warning2default:default2
	XDCB-5#122default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_sample_counter/u_scnt_cmp/allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/u_srl_drive/CLK*"}]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '92' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 61)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#132default:default2
Warning2default:default2
	XDCB-5#132default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_window_counter/U_WCE/I_YESLUT6.U_SRLC16E/CLK*" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '106' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 79)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#142default:default2
Warning2default:default2
	XDCB-5#142default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_window_counter/U_WHCMPCE/I_YESLUT6.U_SRL32/CLK*"}]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '99' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 72)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#152default:default2
Warning2default:default2
	XDCB-5#152default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_window_counter/U_WLCMPCE/I_YESLUT6.U_SRL32/CLK*"}]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '100' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 73)2default:defaultZ23-114h px� 
�

�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#162default:default2
Warning2default:default2
	XDCB-5#162default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_window_counter/u_wcnt_hcmp/allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/u_srl*/S*/CLK*"}]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '96' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 69)2default:defaultZ23-114h px� 
�

�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#172default:default2
Warning2default:default2
	XDCB-5#172default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_window_counter/u_wcnt_hcmp/allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/u_srl_drive/CLK*"}]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '98' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 71)2default:defaultZ23-114h px� 
�

�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#182default:default2
Warning2default:default2
	XDCB-5#182default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_window_counter/u_wcnt_lcmp/allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/u_srl*/S*/CLK*"}]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '95' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 68)2default:defaultZ23-114h px� 
�

�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#192default:default2
Warning2default:default2
	XDCB-5#192default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_window_counter/u_wcnt_lcmp/allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/u_srl_drive/CLK*"}]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '97' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 70)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#202default:default2
Warning2default:default2
	XDCB-5#202default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~ "*ila_core_inst/ADV_TRIG.u_adv_trig/FLAG*/C" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '118' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 95)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#212default:default2
Warning2default:default2
	XDCB-5#212default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~ "*ila_core_inst/ADV_TRIG.u_adv_trig/SEQUENCER_STATE_O*/C" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '117' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 94)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#222default:default2
Warning2default:default2
	XDCB-5#222default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~ "*ila_core_inst/COUNTER.u_count/G_COUNTER[*].U_COUNTER/counter_load_i*/C" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '116' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 93)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#232default:default2
Warning2default:default2
	XDCB-5#232default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~ "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_sample_counter/U_SCRST/I_YESLUT6.U_SRL32*/CLK" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '115' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 92)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#242default:default2
Warning2default:default2
	XDCB-5#242default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~ "*ila_core_inst/u_ila_reset_ctrl/asyncrounous_transfer.arm_out_transfer_inst/dout_reg1_reg/C" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '110' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 87)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#252default:default2
Warning2default:default2
	XDCB-5#252default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~ "*ila_core_inst/u_ila_reset_ctrl/asyncrounous_transfer.arm_out_transfer_inst/dout_reg1_reg/C" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '111' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 88)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#262default:default2
Warning2default:default2
	XDCB-5#262default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~ "*ila_core_inst/u_ila_reset_ctrl/asyncrounous_transfer.arm_out_transfer_inst/dout_reg1_reg/C" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '112' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 89)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#272default:default2
Warning2default:default2
	XDCB-5#272default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~ "*ila_core_inst/u_ila_reset_ctrl/asyncrounous_transfer.arm_out_transfer_inst/dout_reg1_reg/C" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '113' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 90)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#282default:default2
Warning2default:default2
	XDCB-5#282default:default2�
�The option '-from : [get_pins -hierarchical -filter { NAME =~ "*ila_core_inst/u_ila_reset_ctrl/asyncrounous_transfer.arm_out_transfer_inst/dout_reg1_reg/C" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '114' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 91)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#292default:default2
Warning2default:default2
	XDCB-5#292default:default2�
�The option '-from : [get_pins -hierarchical -filter {NAME =~ *allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/u_srl*/S*/CLK}]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '85' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 41)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#302default:default2
Warning2default:default2
	XDCB-5#302default:default2�
�The option '-from : [get_pins -hierarchical -filter {NAME =~ *allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/u_srl_drive/CLK}]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '84' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 40)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#312default:default2
Warning2default:default2
	XDCB-5#312default:default2�
�The option '-to : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/COUNTER.u_count/G_COUNTER[*].U_COUNTER/counter_reg[*]/D" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '116' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 93)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#322default:default2
Warning2default:default2
	XDCB-5#322default:default2�
�The option '-to : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_regs/reg_88f/I_EN_STAT_EQ1.U_STAT/xsdb_reg*/D" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '117' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 94)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#332default:default2
Warning2default:default2
	XDCB-5#332default:default2�
�The option '-to : [get_pins -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_regs/reg_892/I_EN_STAT_EQ1.U_STAT/xsdb_reg*/D" }]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '118' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 95)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#342default:default2
Warning2default:default2
	XDCB-5#342default:default2�
�The option '-to : [get_pins -hierarchical -filter {NAME =~ *allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/I_IS_TERMINATION_SLICE_W_OUTPUT_REG.DOUT_O_reg/D}]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '84' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 40)2default:defaultZ23-114h px� 
�	
�NEW DRC VIOLATION: %s is a violation of a new DRC check. When fully enabled, it will have a severity of '%s'. If this violation is correct, please modify the design accordingly. If not, please file a CR with this design as a test case so the DRC team can investigate. Use this command to get full information on this violation: 'report_property [get_drc_violations %s]'. Full text: '%s'55*drc2
	XDCB-5#352default:default2
Warning2default:default2
	XDCB-5#352default:default2�
�The option '-to : [get_pins -hierarchical -filter {NAME =~ *allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/I_IS_TERMINATION_SLICE_W_OUTPUT_REG.DOUT_O_reg/D}]' of constraint 'set_false_path' uses inefficient query to find pin objects (see constraint position '85' in the Timing Constraint window in Vivado IDE). To reduce runtime, it is recommended to get the pins through the cell objects. Please refer to Using Constraints Guide (Constraints Efficiency). An example of optimal query is: get_pins -filter {REF_PIN_NAME=~yy*} -of_objects [get_cells -hierarchical xx*].
Current XDC: c:/zcu106_ipi/zcu106_ipi.srcs/sources_1/bd/system/ip/system_ila_0_0/ila_v6_2/constraints/ila.xdc (Line: 41)2default:defaultZ23-114h px� 
�
2The results of Report Methodology are in file %s.
450*coretcl2�
NC:/zcu106_ipi/zcu106_ipi.runs/impl_1/system_wrapper_methodology_drc_routed.rptNC:/zcu106_ipi/zcu106_ipi.runs/impl_1/system_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:03:172default:default2
00:03:202default:default2
4647.8132default:default2
237.1452default:defaultZ17-268h px� 
�
Command: %s
53*	vivadotcl2�
�report_power -file system_wrapper_power_routed.rpt -pb system_wrapper_power_summary_routed.pb -rpx system_wrapper_power_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
�Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
3132default:default2
592default:default2
52default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:01:462default:default2
00:01:202default:default2
4929.9302default:default2
282.1172default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
report_clock_utilization: 2default:default2
00:00:152default:default2
00:00:142default:default2
4929.9302default:default2
0.0002default:defaultZ17-268h px� 
�
UpdateTimingParams:%s.
91*timing2O
; Speed grade: -2, Temperature grade: I, Delay Type: min_max2default:defaultZ38-91h px� 
�
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2+
report_timing_summary: 2default:default2
00:00:132default:default2
00:00:132default:default2
4929.9302default:default2
0.0002default:defaultZ17-268h px� 


End Record