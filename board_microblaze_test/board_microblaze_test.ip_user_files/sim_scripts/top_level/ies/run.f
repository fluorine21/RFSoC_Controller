-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/microblaze_v11_0_1 \
  "../../../../board_microblaze_test.srcs/sources_1/bd/top_level/ipshared/f8c3/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_0/sim/bd_c570_microblaze_I_0.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../board_microblaze_test.srcs/sources_1/bd/top_level/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../board_microblaze_test.srcs/sources_1/bd/top_level/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_1/sim/bd_c570_rst_0_0.vhd" \
-endlib
-makelib ies_lib/lmb_v10_v3_0_9 \
  "../../../../board_microblaze_test.srcs/sources_1/bd/top_level/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_2/sim/bd_c570_ilmb_0.vhd" \
  "../../../bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_3/sim/bd_c570_dlmb_0.vhd" \
-endlib
-makelib ies_lib/lmb_bram_if_cntlr_v4_0_16 \
  "../../../../board_microblaze_test.srcs/sources_1/bd/top_level/ipshared/6335/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_4/sim/bd_c570_dlmb_cntlr_0.vhd" \
  "../../../bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_5/sim/bd_c570_ilmb_cntlr_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_3 \
  "../../../../board_microblaze_test.srcs/sources_1/bd/top_level/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_6/sim/bd_c570_lmb_bram_I_0.v" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../board_microblaze_test.srcs/sources_1/bd/top_level/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mdm_v3_2_16 \
  "../../../../board_microblaze_test.srcs/sources_1/bd/top_level/ipshared/550e/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_7/sim/bd_c570_mdm_0_0.vhd" \
-endlib
-makelib ies_lib/xlconcat_v2_1_3 \
  "../../../../board_microblaze_test.srcs/sources_1/bd/top_level/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_8/sim/bd_c570_xlconcat_0_0.v" \
-endlib
-makelib ies_lib/iomodule_v3_1_4 \
  "../../../../board_microblaze_test.srcs/sources_1/bd/top_level/ipshared/18fc/hdl/iomodule_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_9/sim/bd_c570_iomodule_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/sim/bd_c570.v" \
  "../../../bd/top_level/ip/top_level_microblaze_mcs_0_2/sim/top_level_microblaze_mcs_0_2.v" \
  "../../../bd/top_level/ip/top_level_clk_wiz_2/top_level_clk_wiz_2_clk_wiz.v" \
  "../../../bd/top_level/ip/top_level_clk_wiz_2/top_level_clk_wiz_2.v" \
-endlib
-makelib ies_lib/util_vector_logic_v2_0_1 \
  "../../../../board_microblaze_test.srcs/sources_1/bd/top_level/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/top_level/ip/top_level_util_vector_logic_0_3/sim/top_level_util_vector_logic_0_3.v" \
  "../../../bd/top_level/sim/top_level.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

