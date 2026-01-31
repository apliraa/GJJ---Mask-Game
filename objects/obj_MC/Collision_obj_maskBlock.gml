show_debug_message("DBG: obj_MC Collision with obj_maskBlock - maskState before=" + string(maskState));
if(keyboard_check_pressed(ord("E"))){
	maskState++;
	show_debug_message("DBG: obj_MC Collision with obj_maskBlock - maskState after=" + string(maskState));
}