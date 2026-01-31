show_debug_message("DBG: obj_MC Collision with obj_maskOneShifter - maskState=" + string(maskState));
if (maskState >= 1) {
	if (keyboard_check_pressed(ord("E"))) {
		// in a collision event 'other' is the instance of obj_maskOneShifter we collided with
		if (other != noone) {
			other.worldState += 1;
			if (other.worldState > 1) other.worldState = 0;
		} else {
			// fallback: find any instance safely
			var inst = instance_find(obj_maskOneShifter, 0);
			if (inst != noone) {
				inst.worldState += 1;
				if (inst.worldState > 1) inst.worldState = 0;
			}
		}
	}
}