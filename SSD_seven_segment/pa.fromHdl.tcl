
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name SSD_seven_segment -dir "I:/programowanie_ukladow_logicznych/204005/SSD_seven_segment/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Seven_segment.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Seven_segment.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Seven_segment $srcset
add_files [list {Seven_segment.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
