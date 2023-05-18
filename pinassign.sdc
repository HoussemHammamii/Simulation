#sdc file

# Define the clock signals
create_clock -name clk -period 20 [get_pins {clk}]
set_location_assignment PIN_AV36 -to clk
set_clock_uncertainty 1 [get_clocks clk]

create_clock -name fast_clk -period 5 [get_pins {fast_clock}]
set_location_assignment PIN_BE21 -to fast_clock
set_clock_uncertainty 1 [get_clocks fast_clk]


# Define the rest 
set_location_assignment PIN_BH37 -to rst

# Define specific I/O bank assignment
set_location_assignment PIN_D15 -to [get_ports {inpads[0]}]
set_location_assignment PIN_B12 -to [get_ports {inpads[1]}]
set_location_assignment PIN_N18 -to [get_ports {inpads[2]}]
set_location_assignment PIN_C13 -to [get_ports {inpads[3]}]
set_location_assignment PIN_M17 -to [get_ports {inpads[4]}]
set_location_assignment PIN_L16 -to [get_ports {inpads[5]}]
set_location_assignment PIN_A12 -to [get_ports {inpads[6]}]
set_location_assignment PIN_N17 -to [get_ports {inpads[7]}]
set_location_assignment PIN_F15 -to [get_ports {inpads[8]}]
set_location_assignment PIN_D14 -to [get_ports {inpads[9]}]
set_location_assignment PIN_K16 -to [get_ports {inpads[10]}]
set_location_assignment PIN_B13 -to [get_ports {inpads[11]}]
set_location_assignment PIN_G13 -to [get_ports {inpads[12]}]
set_location_assignment PIN_C12 -to [get_ports {inpads[13]}]
set_location_assignment PIN_D13 -to [get_ports {inpads[14]}]
set_location_assignment PIN_J17 -to [get_ports {inpads[15]}]
set_location_assignment PIN_G15 -to [get_ports {inpads[16]}]
set_location_assignment PIN_B15 -to [get_ports {inpads[17]}]
set_location_assignment PIN_K14 -to [get_ports {inpads[18]}]
set_location_assignment PIN_A14 -to [get_ports {inpads[19]}]
set_location_assignment PIN_E13 -to [get_ports {inpads[20]}]
set_location_assignment PIN_A16 -to [get_ports {inpads[21]}]
set_location_assignment PIN_H13 -to [get_ports {inpads[22]}]
set_location_assignment PIN_N15 -to [get_ports {inpads[23]}]
set_location_assignment PIN_M18 -to [get_ports {inpads[24]}]
set_location_assignment PIN_D16 -to [get_ports {inpads[25]}]
set_location_assignment PIN_N16 -to [get_ports {inpads[26]}]
set_location_assignment PIN_A15 -to [get_ports {inpads[27]}]
set_location_assignment PIN_C16 -to [get_ports {inpads[28]}]
set_location_assignment PIN_K17 -to [get_ports {inpads[29]}]
set_location_assignment PIN_M15 -to [get_ports {inpads[30]}]
set_location_assignment PIN_H17 -to [get_ports {inpads[31]}]

set_location_assignment PIN_E24 -to [get_ports {outpads[0]}]
set_location_assignment PIN_A24 -to [get_ports {outpads[1]}]
set_location_assignment PIN_H22 -to [get_ports {outpads[2]}]
set_location_assignment PIN_V24 -to [get_ports {outpads[3]}]
set_location_assignment PIN_R24 -to [get_ports {outpads[4]}]
set_location_assignment PIN_G23 -to [get_ports {outpads[5]}]
set_location_assignment PIN_B24 -to [get_ports {outpads[6]}]
set_location_assignment PIN_M22 -to [get_ports {outpads[7]}]
set_location_assignment PIN_N22 -to [get_ports {outpads[8]}]
set_location_assignment PIN_B23 -to [get_ports {outpads[9]}]
set_location_assignment PIN_G22 -to [get_ports {outpads[10]}]
set_location_assignment PIN_R23 -to [get_ports {outpads[11]}]
set_location_assignment PIN_P23 -to [get_ports {outpads[12]}]
set_location_assignment PIN_D23 -to [get_ports {outpads[13]}]
set_location_assignment PIN_A25 -to [get_ports {outpads[14]}]
set_location_assignment PIN_K23 -to [get_ports {outpads[15]}]
set_location_assignment PIN_R22 -to [get_ports {outpads[16]}]
set_location_assignment PIN_N23 -to [get_ports {outpads[17]}]
set_location_assignment PIN_K24 -to [get_ports {outpads[18]}]
set_location_assignment PIN_U23 -to [get_ports {outpads[19]}]
set_location_assignment PIN_U22 -to [get_ports {outpads[20]}]
set_location_assignment PIN_C23 -to [get_ports {outpads[21]}]
set_location_assignment PIN_V22 -to [get_ports {outpads[22]}]
set_location_assignment PIN_A26 -to [get_ports {outpads[23]}]
set_location_assignment PIN_T21 -to [get_ports {outpads[24]}]
set_location_assignment PIN_V21 -to [get_ports {outpads[25]}]
set_location_assignment PIN_L22 -to [get_ports {outpads[26]}]
set_location_assignment PIN_F22 -to [get_ports {outpads[27]}]
set_location_assignment PIN_V23 -to [get_ports {outpads[28]}]
set_location_assignment PIN_H23 -to [get_ports {outpads[29]}]
set_location_assignment PIN_G24 -to [get_ports {outpads[30]}]
set_location_assignment PIN_T22 -to [get_ports {outpads[31]}]

# Define Rx and Tx 
set_location_assignment PIN_F14 -to RsRx
set_location_assignment PIN_U20 -to Tx