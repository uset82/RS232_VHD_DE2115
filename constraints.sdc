# RS-232 Communication System Timing Constraints
# ELE111 Project

# Create Clock
# 50 MHz system clock with 20 ns period
create_clock -name clk50 -period 20.000 [get_ports {CLOCK_50}]

# Clock Uncertainty
set_clock_uncertainty -setup -from [get_clocks {clk50}] -to [get_clocks {clk50}] 0.150
set_clock_uncertainty -hold -from [get_clocks {clk50}] -to [get_clocks {clk50}] 0.100

# Input Delays
# Switches and Keys
set_input_delay -clock clk50 -min 0.5 [get_ports {SW[*]}]
set_input_delay -clock clk50 -max 2.0 [get_ports {SW[*]}]

set_input_delay -clock clk50 -min 0.5 [get_ports {KEY[*]}]
set_input_delay -clock clk50 -max 2.0 [get_ports {KEY[*]}]

# RS-232 RX input (asynchronous)
set_input_delay -clock clk50 -min 0.0 [get_ports {EX_IO[6]}]
set_input_delay -clock clk50 -max 0.0 [get_ports {EX_IO[6]}]

# Output Delays
# LEDs and 7-segment displays
set_output_delay -clock clk50 -min -0.5 [get_ports {LEDR[*]}]
set_output_delay -clock clk50 -max 2.0 [get_ports {LEDR[*]}]

set_output_delay -clock clk50 -min -0.5 [get_ports {LEDG[*]}]
set_output_delay -clock clk50 -max 2.0 [get_ports {LEDG[*]}]

set_output_delay -clock clk50 -min -0.5 [get_ports {HEX*}]
set_output_delay -clock clk50 -max 2.0 [get_ports {HEX*}]

# RS-232 TX output
set_output_delay -clock clk50 -min -0.5 [get_ports {EX_IO[0]}]
set_output_delay -clock clk50 -max 2.0 [get_ports {EX_IO[0]}]

# False Paths
# EX_IO is asynchronous
set_false_path -from [get_ports {EX_IO[6]}]
set_false_path -to [get_ports {EX_IO[*]}]

# Multicycle Paths
# None required for this design
