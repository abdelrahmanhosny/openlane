read_lef $::env(MERGED_LEF_UNPADDED)
read_def $::env(CURRENT_DEF)

FastRoute::set_verbose 3

FastRoute::set_output_file "$::env(fastroute_tmp_file_tag).guide"
FastRoute::set_capacity_adjustment $::env(GLB_RT_ADJUSTMENT)

# FastRoute::set_alpha 0.4
# FastRoute::set_grid_origin 0 0

# FastRoute::set_max_layer $::env(GLB_RT_MAXLAYER)
FastRoute::add_layer_adjustment 1 $::env(GLB_RT_L1_ADJUSTMENT)

FastRoute::set_unidirectional_routing $::env(GLB_RT_UNIDIRECTIONAL)

FastRoute::set_overflow_iterations $::env(GLB_RT_OVERFLOW_ITERS)

FastRoute::set_allow_overflow $::env(GLB_RT_ALLOW_CONGESTION)

# FastRoute::report_congestion $::env(fastroute_report_file_tag).congestion.rpt

FastRoute::set_tile_size $::env(GLB_RT_TILES)

FastRoute::start_fastroute
FastRoute::run_fastroute
FastRoute::write_guides
