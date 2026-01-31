
if(worldState == 1){
	obj_floor.image_blend = c_purple;
	obj_wall.image_blend = c_white;
	obj_worldTwoWall.visible = true;
	obj_worldTwoWall.mask_index = -1;
	obj_MC.sprite_index = spr_MC2;
	
}

if(worldState == 0 ){
	obj_floor.image_blend = c_yellow;
	obj_wall.image_blend = c_green;
	obj_worldTwoWall.visible = false;
	obj_worldTwoWall.mask_index = 0;
	
}