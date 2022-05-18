vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/c_reg_fd_v12_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_addsub_v3_0_6
vlib modelsim_lib/msim/c_addsub_v12_0_14
vlib modelsim_lib/msim/c_gate_bit_v12_0_6
vlib modelsim_lib/msim/xbip_counter_v3_0_6
vlib modelsim_lib/msim/c_counter_binary_v12_0_14
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/axis_infrastructure_v1_1_0
vlib modelsim_lib/msim/axis_data_fifo_v2_0_4

vmap xpm modelsim_lib/msim/xpm
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 modelsim_lib/msim/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 modelsim_lib/msim/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 modelsim_lib/msim/c_addsub_v12_0_14
vmap c_gate_bit_v12_0_6 modelsim_lib/msim/c_gate_bit_v12_0_6
vmap xbip_counter_v3_0_6 modelsim_lib/msim/xbip_counter_v3_0_6
vmap c_counter_binary_v12_0_14 modelsim_lib/msim/c_counter_binary_v12_0_14
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap axis_infrastructure_v1_1_0 modelsim_lib/msim/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_4 modelsim_lib/msim/axis_data_fifo_v2_0_4

vlog -work xpm  -incr -sv "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" \
"D:/Programy/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Programy/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Programy/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/Programy/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_10  -93 \
"../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/d117/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6  -93 \
"../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4  -93 \
"../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6  -93 \
"../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6  -93 \
"../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6  -93 \
"../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14  -93 \
"../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_6  -93 \
"../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/7161/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_6  -93 \
"../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/9ac8/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_14  -93 \
"../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/1f12/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_c_counter_binary_0_0/sim/design_1_c_counter_binary_0_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vlog -work xlconstant_v1_1_7  -incr "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" \
"../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \

vlog -work axis_infrastructure_v1_1_0  -incr "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" \
"../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_4  -incr "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" \
"../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/abd4/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_0_0/sim/design_1_axis_data_fifo_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_c_counter_binary_1_0/sim/design_1_c_counter_binary_1_0.vhd" \
"../../../bd/design_1/ip/design_1_c_counter_binary_2_0/sim/design_1_c_counter_binary_2_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../HISPIN_05052022.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.v" \
"../../../bd/design_1/ip/design_1_SEND_DECODER_0_0/sim/design_1_SEND_DECODER_0_0.v" \
"../../../bd/design_1/ip/design_1_driver_0_0/sim/design_1_driver_0_0.v" \
"../../../bd/design_1/ip/design_1_MUX_1to2_128bit_0_0/sim/design_1_MUX_1to2_128bit_0_0.v" \
"../../../bd/design_1/ip/design_1_STATUS_LED_0_0/sim/design_1_STATUS_LED_0_0.v" \
"../../../bd/design_1/ip/design_1_spi_slave_0_0/sim/design_1_spi_slave_0_0.v" \
"../../../bd/design_1/ip/design_1_spi_slave_0_1/sim/design_1_spi_slave_0_1.v" \
"../../../bd/design_1/ip/design_1_SPI_CNTRL_0_0/sim/design_1_SPI_CNTRL_0_0.v" \
"../../../bd/design_1/ip/design_1_data_expander_0_0/sim/design_1_data_expander_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

