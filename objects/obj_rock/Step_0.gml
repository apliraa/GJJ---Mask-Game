move_and_collide(h_speed, v_speed, obj_MC)

//pedra nao tem velocidade se não estiver interagindo
var detectorCheck = instance_place(x + obj_MC.velh, y + obj_MC.velv, obj_MC);
if(detectorCheck == noone){
		h_speed = 0;
		v_speed = 0;
}
	
var detectorButton = place_meeting(x, y, obj_button)
if (detectorButton){
	obj_door.mask_index = 0;
} else{
	obj_door.mask_index = 1;
}
	

	
