
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name LabSemana15 -dir "C:/Users/prestamo/Desktop/Nueva carpeta/ControlServoMotor/LabSemana15/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "CircuitoVojabes.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Maquina_Estado.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {debounce.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clk_div.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {CircuitoVojabes.vhf}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top CircuitoVojabes $srcset
add_files [list {CircuitoVojabes.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
