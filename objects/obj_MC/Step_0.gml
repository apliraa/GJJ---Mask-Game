//move

var teclaCima = keyboard_check(ord("W"));
var teclaBaixo = keyboard_check(ord("S"));
var teclaDireita = keyboard_check(ord("D"));
var teclaEsquerda = keyboard_check(ord("A"));

var teclaCheck = teclaDireita - teclaEsquerda !=0 || teclaBaixo - teclaCima !=0 ;

mcDirection = point_direction(0,0,teclaDireita - teclaEsquerda,teclaBaixo - teclaCima);

//velh = lengthdir_x(mcSpeed * teclaCheck, mcDirection);
//velv = lengthdir_y(mcSpeed * teclaCheck, mcDirection);

velh = mcSpeed * (teclaDireita - teclaEsquerda)
velv = mcSpeed * (teclaBaixo - teclaCima)

// TEMP
image_angle = currentState * 90;
if(mcDirection == 0 and currentState >= 3) currentState -= 4;
else {
	if(teclaCima) currentState = playerStates.walkingUp;
	if(teclaBaixo) currentState = playerStates.walkingDown;
	if(teclaDireita) currentState = playerStates.walkingRigth;
	if(teclaEsquerda) currentState = playerStates.walkingLeft;
}
//





// collision
//if (place_meeting(x + velh, y, obj_colisao_pai)){
//	while (!place_meeting(x + sign(velh), y, obj_colisao_pai)){
//		x = x + sign(velh);
//	}
//	velh = 0;
//}


//if (place_meeting(x, y + velv, obj_colisao_pai)){
//	while (!place_meeting(x, y + sign(velv), obj_colisao_pai)){
//		y = y + sign(velv);
//	}
//	velv = 0;
//}

//if(instance_place())

//y += velv;
//x += velh;
move_and_collide(velh, velv, obj_colisao_pai);

//colisao_rock

if((currentState == playerStates.idleUp or currentState > 3) and place_meeting(x, y - 5, obj_rock)) {
	with(obj_rock) {
		if(keyboard_check(ord("E"))){
			other.mcSpeed = 1
			y += sign(other.velv)
		} else other.mcSpeed = 3
	}
}

// BUGADO!!!
if((currentState == playerStates.idleLeft or currentState > 3) and place_meeting(x - 5, y, obj_rock)) {
	with(obj_rock) {
		if(keyboard_check(ord("E"))){
			x += other.velh
		} else other.mcSpeed = 3
	}
}

if((currentState == playerStates.idleDown or currentState > 3) and place_meeting(x, y + 5, obj_rock)) {
	with(obj_rock) {
		if(keyboard_check(ord("E"))){
			other.mcSpeed = 1
			y += sign(other.velv)
		} else other.mcSpeed = 3
	}
}

if((currentState == playerStates.idleRigth or currentState > 3) and place_meeting(x + 5, y, obj_rock)) {
	with(obj_rock) {
		if(keyboard_check(ord("E"))){
			other.mcSpeed = 1
			x += sign(other.velh)
		} else other.mcSpeed = 3
	}
}
