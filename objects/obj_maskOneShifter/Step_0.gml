
if(worldState == 1){
	//obj_floor.image_blend = c_purple;
	//obj_wall.image_blend = c_white;
	//obj_worldTwoWall.visible = true;
	//obj_worldTwoWall.mask_index = -1;
	//obj_MC.sprite_index = spr_MC2;
	var lay_id = layer_get_id("tiles_wall_past");
var lay_id2 = layer_get_id("tiles_wall_past_side");
var lay_id3 = layer_get_id("tiles_floor_past");
	var lay_id4 = layer_get_id("tiles_floor_present");
	var lay_id5 = layer_get_id("tiles_wall_present");
	var lay_id6 = layer_get_id("Instances_3");
	
	
	
	layer_set_visible(lay_id, true)
layer_set_visible(lay_id2, true)
layer_set_visible(lay_id3, true);
	layer_set_visible(lay_id4, false)
	layer_set_visible(lay_id5, false)
	// set mask_index on instances safely
	with (obj_wall) { mask_index = 0; }
	with (obj_wall_past) { mask_index = 1; }
	
	
}

show_debug_message("DBG: obj_maskOneShifter Step - worldState=" + string(worldState));



if(worldState == 0 ){
	//obj_floor.image_blend = c_yellow;
	//obj_wall.image_blend = c_green;
//	obj_worldTwoWall.visible = false;
	//obj_worldTwoWall.mask_index = 0;
	var lay_id = layer_get_id("tiles_wall_past");
var lay_id2 = layer_get_id("tiles_wall_past_side");
var lay_id3 = layer_get_id("tiles_floor_past");
var lay_id4 = layer_get_id("tiles_floor_present");
	var lay_id5 = layer_get_id("tiles_wall_present");
	layer_set_visible(lay_id, false)
	layer_set_visible(lay_id2, false)
	layer_set_visible(lay_id3, false);
	layer_set_visible(lay_id4, true)
	layer_set_visible(lay_id5, true)
}

var lay_id = layer_get_id("tiles_wall_past");
if(layer_get_visible(lay_id)){
    with (obj_wall_past) { mask_index = 1; }
    with (obj_wall) { mask_index = 0; }
}else{
    with (obj_wall_past) { mask_index = 0; }
    with (obj_wall) { mask_index = 1; }
}


