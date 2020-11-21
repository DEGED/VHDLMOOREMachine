
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name LabSemana15 -dir "C:/Users/prestamo/Desktop/Nueva carpeta/ControlServoMotor/LabSemana15/planAhead_run_5" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/prestamo/Desktop/Nueva carpeta/ControlServoMotor/LabSemana15/CircuitoVojabes.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/prestamo/Desktop/Nueva carpeta/ControlServoMotor/LabSemana15} }
set_property target_constrs_file "CircuitoVojabes.ucf" [current_fileset -constrset]
add_files [list {CircuitoVojabes.ucf}] -fileset [get_property constrset [current_run]]
link_design
