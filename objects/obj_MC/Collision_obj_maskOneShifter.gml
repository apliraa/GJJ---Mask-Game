show_debug_message("DBG: obj_MC Collision with obj_maskOneShifter - maskState=" + string(maskState));
if(maskState >= 1){
if(keyboard_check_pressed(ord("E"))){
	obj_maskOneShifter.worldState +=1;
	if(obj_maskOneShifter.worldState > 1){
		obj_maskOneShifter.worldState = 0;
	}
	
}
}