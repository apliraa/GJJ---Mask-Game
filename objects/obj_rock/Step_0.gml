move_and_collide(h_speed, v_speed, obj_MC)

//pedra nao tem velocidade se não estiver interagindo
var detectorCheck = instance_place(x + obj_MC.velh, y + obj_MC.velv, obj_MC);
if(detectorCheck == noone){
		h_speed = 0;
		v_speed = 0;
}
	

var wallDetectorCheck = instance_place(x, y , obj_tile2);
if(detectorCheck != noone){
		
}