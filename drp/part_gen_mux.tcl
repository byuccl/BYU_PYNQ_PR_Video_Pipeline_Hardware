################################################################
# Brigham Young University Video Filtering Base Design
# 
# part_gen.tcl
# Version 1.0
# Last Modified: February 24, 2017
################################################################

proc part_gen_mux {str0} {
	cd Source/$str0
	exec vivado_hls -f ../mux.tcl
	add_files ./HLS/solution1/syn/vhdl/
	set dir ./HLS/solution1/syn/vhdl/
	if {[catch {glob -dir $dir *.tcl} fid]} {
	
	} else {
	foreach file [glob -dir $dir *.tcl] {
		source $file
	}
	}
	synth_design -mode out_of_context -flatten_hierarchy rebuilt -top mux_operator -part xc7z020clg400-1
	cd ../..
		
	
	write_checkpoint Synth/$str0.dcp -force
	close_project
	
	
	
	open_checkpoint Checkpoint/static_route_design.dcp



	read_checkpoint -cell system_i/video/HLS_Merger_0/U0/PR_BLACK_BOX Synth/$str0.dcp

	update_design -buffer_ports -cell system_i/video/HLS_PR_WRAPPER_0/U0/HLS_PR
	update_design -buffer_ports -cell system_i/video/HLS_PR_WRAPPER_1/U0/HLS_PR
	update_design -buffer_ports -cell system_i/video/HLS_PR_WRAPPER_2/U0/HLS_PR
	update_design -buffer_ports -cell system_i/video/HLS_PR_WRAPPER_3/U0/HLS_PR
	update_design -buffer_ports -cell system_i/video/HLS_PR_WRAPPER_4/U0/HLS_PR
	update_design -buffer_ports -cell system_i/video/HLS_PR_WRAPPER_5/U0/HLS_PR
	update_design -buffer_ports -cell system_i/video/HLS_PR_WRAPPER_6/U0/HLS_PR
	update_design -buffer_ports -cell system_i/video/HLS_PR_WRAPPER_7/U0/HLS_PR
	update_design -buffer_ports -cell system_i/video/HLS_PR_WRAPPER_8/U0/HLS_PR
	update_design -buffer_ports -cell system_i/video/HLS_PR_WRAPPER_9/U0/HLS_PR

	
	
	opt_design 
	place_design 
	route_design

	write_checkpoint -force Implement/$str0.dcp
	
	write_bitstream -file tmp/$str0.bit -force
	
	set post _mux
	set partial _partial
	
	file rename -force tmp/$str0$post$partial.bit Bitstreams/$str0$post.bit
	
	cd tmp
	file delete {*}[glob -nocomplain *.bit]
	cd ..

	close_project

}



