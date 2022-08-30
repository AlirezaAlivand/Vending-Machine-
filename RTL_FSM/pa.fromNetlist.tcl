
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name RTL_FSM -dir "C:/Users/M.Amin/Desktop/Ali_Reza_Alivand/RTL_FSM/planAhead_run_1" -part xc7k70tfbg676-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/M.Amin/Desktop/Ali_Reza_Alivand/RTL_FSM/RTL_FSM.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/M.Amin/Desktop/Ali_Reza_Alivand/RTL_FSM} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "RTL_FSM.ucf" [current_fileset -constrset]
add_files [list {RTL_FSM.ucf}] -fileset [get_property constrset [current_run]]
link_design
