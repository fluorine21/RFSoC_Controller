# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# IP: C:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/top_level_microblaze_mcs_0_2.xci
# IP: The module: 'top_level_microblaze_mcs_0_2' is the root of the design. Do not add the DONT_TOUCH constraint.

# Block Designs: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/bd_c570.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570 || ORIG_REF_NAME==bd_c570} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_0/bd_c570_microblaze_I_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_microblaze_I_0 || ORIG_REF_NAME==bd_c570_microblaze_I_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_1/bd_c570_rst_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_rst_0_0 || ORIG_REF_NAME==bd_c570_rst_0_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_2/bd_c570_ilmb_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_ilmb_0 || ORIG_REF_NAME==bd_c570_ilmb_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_3/bd_c570_dlmb_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_dlmb_0 || ORIG_REF_NAME==bd_c570_dlmb_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_4/bd_c570_dlmb_cntlr_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_dlmb_cntlr_0 || ORIG_REF_NAME==bd_c570_dlmb_cntlr_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_5/bd_c570_ilmb_cntlr_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_ilmb_cntlr_0 || ORIG_REF_NAME==bd_c570_ilmb_cntlr_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_6/bd_c570_lmb_bram_I_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_lmb_bram_I_0 || ORIG_REF_NAME==bd_c570_lmb_bram_I_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_7/bd_c570_mdm_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_mdm_0_0 || ORIG_REF_NAME==bd_c570_mdm_0_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_8/bd_c570_xlconcat_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_xlconcat_0_0 || ORIG_REF_NAME==bd_c570_xlconcat_0_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_9/bd_c570_iomodule_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_iomodule_0_0 || ORIG_REF_NAME==bd_c570_iomodule_0_0} -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/top_level_microblaze_mcs_0_2_board.xdc
# XDC: The top module name and the constraint reference have the same name: 'top_level_microblaze_mcs_0_2'. Do not add the DONT_TOUCH constraint.
set_property DONT_TOUCH TRUE [get_cells inst -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/top_level_microblaze_mcs_0_2_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'top_level_microblaze_mcs_0_2'. Do not add the DONT_TOUCH constraint.
#dup# set_property DONT_TOUCH TRUE [get_cells inst -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_0/bd_c570_microblaze_I_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_c570_microblaze_I_0 || ORIG_REF_NAME==bd_c570_microblaze_I_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_0/bd_c570_microblaze_I_0_ooc_debug.xdc

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_1/bd_c570_rst_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_c570_rst_0_0 || ORIG_REF_NAME==bd_c570_rst_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_1/bd_c570_rst_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_c570_rst_0_0 || ORIG_REF_NAME==bd_c570_rst_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_2/bd_c570_ilmb_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_c570_ilmb_0 || ORIG_REF_NAME==bd_c570_ilmb_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_3/bd_c570_dlmb_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_c570_dlmb_0 || ORIG_REF_NAME==bd_c570_dlmb_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_6/bd_c570_lmb_bram_I_0_ooc.xdc

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_7/bd_c570_mdm_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_c570_mdm_0_0 || ORIG_REF_NAME==bd_c570_mdm_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_7/bd_c570_mdm_0_0_ooc_trace.xdc

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_9/bd_c570_iomodule_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_c570_iomodule_0_0 || ORIG_REF_NAME==bd_c570_iomodule_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/bd_c570_ooc.xdc

# IP: C:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/top_level_microblaze_mcs_0_2.xci
# IP: The module: 'top_level_microblaze_mcs_0_2' is the root of the design. Do not add the DONT_TOUCH constraint.

# Block Designs: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/bd_c570.bd
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570 || ORIG_REF_NAME==bd_c570} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_0/bd_c570_microblaze_I_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_microblaze_I_0 || ORIG_REF_NAME==bd_c570_microblaze_I_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_1/bd_c570_rst_0_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_rst_0_0 || ORIG_REF_NAME==bd_c570_rst_0_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_2/bd_c570_ilmb_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_ilmb_0 || ORIG_REF_NAME==bd_c570_ilmb_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_3/bd_c570_dlmb_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_dlmb_0 || ORIG_REF_NAME==bd_c570_dlmb_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_4/bd_c570_dlmb_cntlr_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_dlmb_cntlr_0 || ORIG_REF_NAME==bd_c570_dlmb_cntlr_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_5/bd_c570_ilmb_cntlr_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_ilmb_cntlr_0 || ORIG_REF_NAME==bd_c570_ilmb_cntlr_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_6/bd_c570_lmb_bram_I_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_lmb_bram_I_0 || ORIG_REF_NAME==bd_c570_lmb_bram_I_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_7/bd_c570_mdm_0_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_mdm_0_0 || ORIG_REF_NAME==bd_c570_mdm_0_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_8/bd_c570_xlconcat_0_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_xlconcat_0_0 || ORIG_REF_NAME==bd_c570_xlconcat_0_0} -quiet] -quiet

# IP: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_9/bd_c570_iomodule_0_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_c570_iomodule_0_0 || ORIG_REF_NAME==bd_c570_iomodule_0_0} -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/top_level_microblaze_mcs_0_2_board.xdc
# XDC: The top module name and the constraint reference have the same name: 'top_level_microblaze_mcs_0_2'. Do not add the DONT_TOUCH constraint.
#dup# set_property DONT_TOUCH TRUE [get_cells inst -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/top_level_microblaze_mcs_0_2_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'top_level_microblaze_mcs_0_2'. Do not add the DONT_TOUCH constraint.
#dup# set_property DONT_TOUCH TRUE [get_cells inst -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_0/bd_c570_microblaze_I_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_c570_microblaze_I_0 || ORIG_REF_NAME==bd_c570_microblaze_I_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_0/bd_c570_microblaze_I_0_ooc_debug.xdc

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_1/bd_c570_rst_0_0_board.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_c570_rst_0_0 || ORIG_REF_NAME==bd_c570_rst_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_1/bd_c570_rst_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_c570_rst_0_0 || ORIG_REF_NAME==bd_c570_rst_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_2/bd_c570_ilmb_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_c570_ilmb_0 || ORIG_REF_NAME==bd_c570_ilmb_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_3/bd_c570_dlmb_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_c570_dlmb_0 || ORIG_REF_NAME==bd_c570_dlmb_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_6/bd_c570_lmb_bram_I_0_ooc.xdc

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_7/bd_c570_mdm_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_c570_mdm_0_0 || ORIG_REF_NAME==bd_c570_mdm_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_7/bd_c570_mdm_0_0_ooc_trace.xdc

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/ip/ip_9/bd_c570_iomodule_0_0_board.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_c570_iomodule_0_0 || ORIG_REF_NAME==bd_c570_iomodule_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/fpga_projects/board_microblaze_test/board_microblaze_test.srcs/sources_1/bd/top_level/ip/top_level_microblaze_mcs_0_2/bd_0/bd_c570_ooc.xdc
