################################################################
# Brigham Young University Video Filtering Base Design
# 
# part_gen.tcl
# Version 1.0
# Last Modified: February 24, 2017
################################################################

proc gen_filter {str0} {
	cd Source/$str0
	exec vivado_hls -f ../test.tcl
	add_files ./HLS/solution1/syn/vhdl/
	set dir ./HLS/solution1/syn/vhdl/
	if {[catch {glob -dir $dir *.tcl} fid]} {
	
	} else {
	foreach file [glob -dir $dir *.tcl] {
		source $file
	}
	}
	synth_design -mode out_of_context -flatten_hierarchy rebuilt -top filter_operator -part xc7z020clg400-1
	cd ../..
		
	
	write_checkpoint Synth/$str0.dcp -force
	close_project
}
proc gen_mux {str0} {
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
}


