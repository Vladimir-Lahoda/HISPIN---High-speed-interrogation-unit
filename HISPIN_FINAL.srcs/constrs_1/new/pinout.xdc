set_property IOSTANDARD LVCMOS33 [get_ports clk_in]
set_property IOSTANDARD LVCMOS33 [get_ports EOC]
set_property PACKAGE_PIN M9 [get_ports clk_in]
set_property PACKAGE_PIN K14 [get_ports EOC]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

set_property IOSTANDARD LVCMOS33 [get_ports {DB[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DB[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DB[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DB[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DB[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DB[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DB[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DB[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DB[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DB[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DB[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DB[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DB[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DB[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DB[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DB[15]}]
set_property PACKAGE_PIN M15 [get_ports {DB[0]}]
set_property PACKAGE_PIN N14 [get_ports {DB[1]}]
set_property PACKAGE_PIN N15 [get_ports {DB[2]}]
set_property PACKAGE_PIN N13 [get_ports {DB[3]}]
set_property PACKAGE_PIN P15 [get_ports {DB[4]}]
set_property PACKAGE_PIN P14 [get_ports {DB[5]}]
set_property PACKAGE_PIN N1 [get_ports {DB[6]}]
set_property PACKAGE_PIN P1 [get_ports {DB[7]}]
set_property PACKAGE_PIN N3 [get_ports {DB[8]}]
set_property PACKAGE_PIN P3 [get_ports {DB[9]}]
set_property PACKAGE_PIN M2 [get_ports {DB[10]}]
set_property PACKAGE_PIN N2 [get_ports {DB[11]}]
set_property PACKAGE_PIN M3 [get_ports {DB[12]}]
set_property PACKAGE_PIN M4 [get_ports {DB[13]}]
set_property PACKAGE_PIN L1 [get_ports {DB[14]}]
set_property PACKAGE_PIN M14 [get_ports {DB[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports CONVST]
set_property PACKAGE_PIN J15 [get_ports CONVST]
set_property PACKAGE_PIN J11 [get_ports CS]
set_property IOSTANDARD LVCMOS33 [get_ports CS]
set_property PACKAGE_PIN M13 [get_ports RD]
set_property IOSTANDARD LVCMOS33 [get_ports RD]

set_property IOSTANDARD LVCMOS33 [get_ports {SHDN[0]}]
set_property PACKAGE_PIN L13 [get_ports {SHDN[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {WR[0]}]
set_property PACKAGE_PIN L15 [get_ports {WR[0]}]

create_clock -period 5.000 -name clk_out1 -waveform {0.000 2.500}
create_clock -period 40.000 -name clk_out2 -waveform {0.000 20.000}

set_property IOSTANDARD LVCMOS33 [get_ports BTN_0]
set_property PACKAGE_PIN D2 [get_ports BTN_0]

set_property PACKAGE_PIN H1 [get_ports SCK]
set_property IOSTANDARD LVCMOS33 [get_ports SCK]
set_property PACKAGE_PIN H4 [get_ports SS]
set_property IOSTANDARD LVCMOS33 [get_ports SS]
set_property PACKAGE_PIN H2 [get_ports MISO]
set_property IOSTANDARD LVCMOS33 [get_ports MISO]

set_property IOSTANDARD LVCMOS33 [get_ports SEND]
set_property PACKAGE_PIN C5 [get_ports SEND]

set_property IOSTANDARD LVCMOS33 [get_ports {LEDs[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDs[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDs[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDs[0]}]
set_property PACKAGE_PIN E1 [get_ports {LEDs[3]}]
set_property PACKAGE_PIN J1 [get_ports {LEDs[2]}]
set_property PACKAGE_PIN K1 [get_ports {LEDs[1]}]
set_property PACKAGE_PIN E2 [get_ports {LEDs[0]}]
set_property PACKAGE_PIN F2 [get_ports {RGB_LED[2]}]
set_property PACKAGE_PIN D3 [get_ports {RGB_LED[1]}]
set_property PACKAGE_PIN F1 [get_ports {RGB_LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB_LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB_LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB_LED[0]}]
set_property BITSTREAM.GENERAL.XADCPOWERDOWN DISABLE [current_design]
set_property BITSTREAM.GENERAL.XADCENHANCEDLINEARITY OFF [current_design]

set_property PACKAGE_PIN A2 [get_ports START]
set_property IOSTANDARD LVCMOS33 [get_ports START]


set_property PACKAGE_PIN L14 [get_ports IO1]
set_property IOSTANDARD LVCMOS33 [get_ports IO1]
set_property DRIVE 16 [get_ports MISO]
set_property SLEW FAST [get_ports MISO]
set_property DRIVE 16 [get_ports IO1]
set_property SLEW FAST [get_ports IO1]

