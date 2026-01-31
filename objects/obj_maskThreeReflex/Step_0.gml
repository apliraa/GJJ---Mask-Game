if(keyboard_check_pressed(ord("E"))){
	if(obj_MC.maskState >= 3){
		if(!instance_exists(obj_reflex)){
			show_message("oi")
		var reflex = instance_create_layer(obj_MC.x, obj_MC.y, "Instances_2", obj_reflex)
			reflex.image_blend = c_aqua
		}
		else{ 
			instance_destroy(obj_reflex);
	}
}
}