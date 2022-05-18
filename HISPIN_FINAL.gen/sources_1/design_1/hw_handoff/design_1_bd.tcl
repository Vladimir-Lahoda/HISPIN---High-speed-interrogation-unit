
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# MUX_1to2_128bit, SEND_DECODER, SPI_CNTRL, STATUS_LED, data_expander, driver, spi_slave, spi_slave

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7s25csga225-1
   set_property BOARD_PART digilentinc.com:cmod-s7-25:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set BTN_0 [ create_bd_port -dir I BTN_0 ]
  set CONVST [ create_bd_port -dir O CONVST ]
  set CS [ create_bd_port -dir O CS ]
  set DB [ create_bd_port -dir I -from 15 -to 0 DB ]
  set EOC [ create_bd_port -dir I EOC ]
  set IO1 [ create_bd_port -dir O IO1 ]
  set LEDs [ create_bd_port -dir O -from 3 -to 0 LEDs ]
  set MISO [ create_bd_port -dir O MISO ]
  set RD [ create_bd_port -dir O RD ]
  set RGB_LED [ create_bd_port -dir O -from 2 -to 0 RGB_LED ]
  set SCK [ create_bd_port -dir I -type clk -freq_hz 25000000 SCK ]
  set SEND [ create_bd_port -dir O SEND ]
  set SHDN [ create_bd_port -dir O -from 0 -to 0 SHDN ]
  set SS [ create_bd_port -dir I SS ]
  set START [ create_bd_port -dir I START ]
  set WR [ create_bd_port -dir O -from 0 -to 0 WR ]
  set clk_in [ create_bd_port -dir I -type clk -freq_hz 12000000 clk_in ]

  # Create instance: MUX_1to2_128bit_0, and set properties
  set block_name MUX_1to2_128bit
  set block_cell_name MUX_1to2_128bit_0
  if { [catch {set MUX_1to2_128bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MUX_1to2_128bit_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: SEND_DECODER_0, and set properties
  set block_name SEND_DECODER
  set block_cell_name SEND_DECODER_0
  if { [catch {set SEND_DECODER_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SEND_DECODER_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: SPI_CNTRL_0, and set properties
  set block_name SPI_CNTRL
  set block_cell_name SPI_CNTRL_0
  if { [catch {set SPI_CNTRL_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SPI_CNTRL_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: STATUS_LED_0, and set properties
  set block_name STATUS_LED
  set block_cell_name STATUS_LED_0
  if { [catch {set STATUS_LED_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $STATUS_LED_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axis_data_fifo_0, and set properties
  set axis_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 axis_data_fifo_0 ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {8192} \
   CONFIG.HAS_WR_DATA_COUNT {1} \
   CONFIG.IS_ACLK_ASYNC {1} \
   CONFIG.TDATA_NUM_BYTES {16} \
 ] $axis_data_fifo_0

  # Create instance: c_counter_binary_0, and set properties
  set c_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.CE {false} \
   CONFIG.Final_Count_Value {3E8} \
   CONFIG.Output_Width {11} \
   CONFIG.Restrict_Count {true} \
 ] $c_counter_binary_0

  # Create instance: c_counter_binary_1, and set properties
  set c_counter_binary_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_1 ]
  set_property -dict [ list \
   CONFIG.Final_Count_Value {FE} \
   CONFIG.Implementation {Fabric} \
   CONFIG.Output_Width {8} \
   CONFIG.Restrict_Count {false} \
   CONFIG.SCLR {true} \
 ] $c_counter_binary_1

  # Create instance: c_counter_binary_2, and set properties
  set c_counter_binary_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_2 ]
  set_property -dict [ list \
   CONFIG.Final_Count_Value {7FF} \
   CONFIG.Output_Width {12} \
   CONFIG.Restrict_Count {true} \
 ] $c_counter_binary_2

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {833.33} \
   CONFIG.CLKOUT1_JITTER {479.872} \
   CONFIG.CLKOUT1_PHASE_ERROR {668.310} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100} \
   CONFIG.CLKOUT2_JITTER {586.500} \
   CONFIG.CLKOUT2_PHASE_ERROR {668.310} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {25} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {62.500} \
   CONFIG.MMCM_CLKIN1_PERIOD {83.333} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {7.500} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {30} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: data_expander_0, and set properties
  set block_name data_expander
  set block_cell_name data_expander_0
  if { [catch {set data_expander_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $data_expander_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: driver_0, and set properties
  set block_name driver
  set block_cell_name driver_0
  if { [catch {set driver_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $driver_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: spi_slave_0, and set properties
  set block_name spi_slave
  set block_cell_name spi_slave_0
  if { [catch {set spi_slave_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $spi_slave_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: spi_slave_1, and set properties
  set block_name spi_slave
  set block_cell_name spi_slave_1
  if { [catch {set spi_slave_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $spi_slave_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_0 ]
  set_property -dict [ list \
   CONFIG.ALL_PROBE_SAME_MU_CNT {1} \
   CONFIG.C_ADV_TRIGGER {false} \
   CONFIG.C_BRAM_CNT {12} \
   CONFIG.C_DATA_DEPTH {2048} \
   CONFIG.C_EN_STRG_QUAL {0} \
   CONFIG.C_MON_TYPE {NATIVE} \
   CONFIG.C_NUM_OF_PROBES {21} \
   CONFIG.C_PROBE0_MU_CNT {1} \
   CONFIG.C_PROBE10_MU_CNT {1} \
   CONFIG.C_PROBE11_MU_CNT {1} \
   CONFIG.C_PROBE11_WIDTH {1} \
   CONFIG.C_PROBE12_MU_CNT {1} \
   CONFIG.C_PROBE13_MU_CNT {1} \
   CONFIG.C_PROBE14_MU_CNT {1} \
   CONFIG.C_PROBE15_MU_CNT {1} \
   CONFIG.C_PROBE15_WIDTH {16} \
   CONFIG.C_PROBE16_MU_CNT {1} \
   CONFIG.C_PROBE16_WIDTH {128} \
   CONFIG.C_PROBE17_MU_CNT {1} \
   CONFIG.C_PROBE18_MU_CNT {1} \
   CONFIG.C_PROBE18_WIDTH {32} \
   CONFIG.C_PROBE19_MU_CNT {1} \
   CONFIG.C_PROBE19_WIDTH {12} \
   CONFIG.C_PROBE1_MU_CNT {1} \
   CONFIG.C_PROBE20_MU_CNT {1} \
   CONFIG.C_PROBE2_MU_CNT {1} \
   CONFIG.C_PROBE3_MU_CNT {1} \
   CONFIG.C_PROBE4_MU_CNT {1} \
   CONFIG.C_PROBE5_MU_CNT {1} \
   CONFIG.C_PROBE6_MU_CNT {1} \
   CONFIG.C_PROBE7_MU_CNT {1} \
   CONFIG.C_PROBE8_MU_CNT {1} \
   CONFIG.C_PROBE9_MU_CNT {1} \
   CONFIG.C_PROBE9_WIDTH {8} \
   CONFIG.C_PROBE_WIDTH_PROPAGATION {MANUAL} \
   CONFIG.C_TRIGIN_EN {false} \
   CONFIG.C_TRIGOUT_EN {false} \
 ] $system_ila_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $xlconstant_1

  # Create port connections
  connect_bd_net -net DB_1 [get_bd_ports DB] [get_bd_pins data_expander_0/D] [get_bd_pins system_ila_0/probe15]
  connect_bd_net -net EOC_1 [get_bd_ports EOC] [get_bd_pins driver_0/EOC] [get_bd_pins system_ila_0/probe12]
  connect_bd_net -net MUX_1to2_128bit_0_B0 [get_bd_pins MUX_1to2_128bit_0/B0] [get_bd_pins spi_slave_0/i_data_parallel]
  connect_bd_net -net MUX_1to2_128bit_0_B1 [get_bd_pins MUX_1to2_128bit_0/B1] [get_bd_pins spi_slave_1/i_data_parallel]
  connect_bd_net -net Net [get_bd_pins data_expander_0/ADDR] [get_bd_pins driver_0/D_valid]
  connect_bd_net -net Net1 [get_bd_pins SPI_CNTRL_0/o_sclk_0] [get_bd_pins spi_slave_0/i_sclk] [get_bd_pins system_ila_0/probe4]
  connect_bd_net -net SCK_1 [get_bd_ports SCK] [get_bd_pins SPI_CNTRL_0/i_sclk] [get_bd_pins c_counter_binary_1/CLK] [get_bd_pins system_ila_0/probe1]
  connect_bd_net -net SEND_DECODER_0_SEND [get_bd_ports SEND] [get_bd_pins SEND_DECODER_0/SEND] [get_bd_pins system_ila_0/probe20]
  connect_bd_net -net SPI_CNTRL_0_AXI_READY [get_bd_pins SPI_CNTRL_0/AXI_READY] [get_bd_pins axis_data_fifo_0/m_axis_tready] [get_bd_pins system_ila_0/probe17]
  connect_bd_net -net SPI_CNTRL_0_MUX_CNTRL1 [get_bd_pins MUX_1to2_128bit_0/S] [get_bd_pins SPI_CNTRL_0/MUX_CNTRL1]
  connect_bd_net -net SPI_CNTRL_0_o_miso [get_bd_ports MISO] [get_bd_pins SPI_CNTRL_0/o_miso] [get_bd_pins system_ila_0/probe2]
  connect_bd_net -net SPI_CNTRL_0_o_sclk_1 [get_bd_pins SPI_CNTRL_0/o_sclk_1] [get_bd_pins spi_slave_1/i_sclk] [get_bd_pins system_ila_0/probe7]
  connect_bd_net -net SPI_CNTRL_0_o_ss_0 [get_bd_pins SPI_CNTRL_0/o_ss_0] [get_bd_pins spi_slave_0/i_ss] [get_bd_pins system_ila_0/probe3]
  connect_bd_net -net SPI_CNTRL_0_o_ss_1 [get_bd_pins SPI_CNTRL_0/o_ss_1] [get_bd_pins spi_slave_1/i_ss] [get_bd_pins system_ila_0/probe6]
  connect_bd_net -net SS_1 [get_bd_ports SS] [get_bd_pins SPI_CNTRL_0/i_ss] [get_bd_pins STATUS_LED_0/SPI_SS] [get_bd_pins c_counter_binary_1/SCLR] [get_bd_pins system_ila_0/probe0]
  connect_bd_net -net START_1 [get_bd_ports START] [get_bd_pins axis_data_fifo_0/s_axis_aresetn]
  connect_bd_net -net STATUS_LED_0_LEDs [get_bd_ports LEDs] [get_bd_pins STATUS_LED_0/LEDs]
  connect_bd_net -net STATUS_LED_0_RGB [get_bd_ports RGB_LED] [get_bd_pins STATUS_LED_0/RGB]
  connect_bd_net -net axis_data_fifo_0_axis_wr_data_count [get_bd_pins STATUS_LED_0/FIFO_STATUS] [get_bd_pins axis_data_fifo_0/axis_wr_data_count] [get_bd_pins system_ila_0/probe18]
  connect_bd_net -net axis_data_fifo_0_m_axis_tdata [get_bd_pins MUX_1to2_128bit_0/A] [get_bd_pins axis_data_fifo_0/m_axis_tdata] [get_bd_pins system_ila_0/probe16]
  connect_bd_net -net axis_data_fifo_0_m_axis_tvalid [get_bd_pins SPI_CNTRL_0/AXI_VALID] [get_bd_pins axis_data_fifo_0/m_axis_tvalid]
  connect_bd_net -net axis_data_fifo_0_s_axis_tready [get_bd_pins axis_data_fifo_0/s_axis_tready] [get_bd_pins driver_0/AXI_ready]
  connect_bd_net -net c_counter_binary_0_Q [get_bd_pins c_counter_binary_0/Q] [get_bd_pins driver_0/Q]
  connect_bd_net -net c_counter_binary_1_Q [get_bd_pins SPI_CNTRL_0/NUM] [get_bd_pins c_counter_binary_1/Q] [get_bd_pins system_ila_0/probe9]
  connect_bd_net -net c_counter_binary_2_Q [get_bd_pins SEND_DECODER_0/D] [get_bd_pins c_counter_binary_2/Q] [get_bd_pins system_ila_0/probe19]
  connect_bd_net -net clk_in_1 [get_bd_ports clk_in] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins MUX_1to2_128bit_0/clk] [get_bd_pins SEND_DECODER_0/clk] [get_bd_pins SPI_CNTRL_0/clock_sig] [get_bd_pins STATUS_LED_0/clk] [get_bd_pins axis_data_fifo_0/s_axis_aclk] [get_bd_pins c_counter_binary_0/CLK] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins data_expander_0/CLK] [get_bd_pins driver_0/clk] [get_bd_pins system_ila_0/clk]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins axis_data_fifo_0/m_axis_aclk] [get_bd_pins clk_wiz_0/clk_out2]
  connect_bd_net -net data_expander_0_Q [get_bd_pins axis_data_fifo_0/s_axis_tdata] [get_bd_pins data_expander_0/Q]
  connect_bd_net -net driver_0_AXI_valid [get_bd_pins STATUS_LED_0/AD_VALID] [get_bd_pins axis_data_fifo_0/s_axis_tvalid] [get_bd_pins c_counter_binary_2/CLK] [get_bd_pins driver_0/AXI_valid] [get_bd_pins system_ila_0/probe10]
  connect_bd_net -net driver_0_CONVSTRT [get_bd_ports CONVST] [get_bd_pins driver_0/CONVSTRT] [get_bd_pins system_ila_0/probe11]
  connect_bd_net -net driver_0_CS [get_bd_ports CS] [get_bd_pins driver_0/CS] [get_bd_pins system_ila_0/probe13]
  connect_bd_net -net driver_0_RD [get_bd_ports RD] [get_bd_pins driver_0/RD] [get_bd_pins system_ila_0/probe14]
  connect_bd_net -net spi_slave_0_o_miso [get_bd_pins SPI_CNTRL_0/i_miso_0] [get_bd_pins spi_slave_0/o_miso] [get_bd_pins system_ila_0/probe5]
  connect_bd_net -net spi_slave_1_o_miso [get_bd_pins SPI_CNTRL_0/i_miso_1] [get_bd_pins spi_slave_1/o_miso] [get_bd_pins system_ila_0/probe8]
  connect_bd_net -net xlconstant_0_dout [get_bd_ports SHDN] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_ports WR] [get_bd_pins driver_0/AXI_EN] [get_bd_pins xlconstant_1/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


