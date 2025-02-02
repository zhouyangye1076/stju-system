set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]
set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS33} [get_ports rstn]

set_property PACKAGE_PIN H15 [get_ports {cs[7]}]
set_property PACKAGE_PIN L18 [get_ports {cs[6]}]
set_property PACKAGE_PIN T11 [get_ports {cs[5]}]
set_property PACKAGE_PIN P15 [get_ports {cs[4]}]
set_property PACKAGE_PIN K13 [get_ports {cs[3]}]
set_property PACKAGE_PIN K16 [get_ports {cs[2]}]
set_property PACKAGE_PIN R10 [get_ports {cs[1]}]
set_property PACKAGE_PIN T10 [get_ports {cs[0]}]

set_property PACKAGE_PIN U13 [get_ports {an[7]}]
set_property PACKAGE_PIN K2 [get_ports {an[6]}]
set_property PACKAGE_PIN T14 [get_ports {an[5]}]
set_property PACKAGE_PIN P14 [get_ports {an[4]}]
set_property PACKAGE_PIN J14 [get_ports {an[3]}]
set_property PACKAGE_PIN T9 [get_ports {an[2]}]
set_property PACKAGE_PIN J18 [get_ports {an[1]}]
set_property PACKAGE_PIN J17 [get_ports {an[0]}]

set_property PACKAGE_PIN N17 [get_ports {btn[0]}]
set_property PACKAGE_PIN J15 [get_ports {sw[0]}]
set_property PACKAGE_PIN L16 [get_ports {sw[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {btn[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cs[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[*]}]
