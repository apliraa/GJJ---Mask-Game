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
//image_angle = currentState * 90;
if(mcDirection == 0 and currentState >= 3) currentState -= 4;
else {
	if(teclaCima)currentState = playerStates.walkingUp;
	if(teclaBaixo) currentState = playerStates.walkingDown;
	if(teclaDireita) currentState = playerStates.walkingRigth;
	if(teclaEsquerda) currentState = playerStates.walkingLeft;
	if(teclaDireita and teclaCima) currentState = playerStates.walkingUpRight;
}

if currentState = playerStates.idleDown{sprite_index = spr_mcIdle}
if currentState = playerStates.idleUp{sprite_index = spr_mcIdleUp}
if currentState = playerStates.idleRigth{sprite_index = spr_mcIdleSidedown; image_xscale = 1}
if currentState = playerStates.idleLeft{sprite_index = spr_mcIdleSidedown; image_xscale= -1}
if currentState = playerStates.walkingDown{sprite_index = spr_mcWalk}
if currentState = playerStates.walkingUp{sprite_index = spr_mcWalkUp}
if currentState = playerStates.walkingLeft{sprite_index = spr_mcWalkSideDownLeft}
if currentState = playerStates.walkingRigth{sprite_index = spr_mcWalkSidedown}
//if currentState = playerStates.walkingUpRight{sprite_index = spr_mcWalkSideup}

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
move_and_collide(velh, velv, [obj_colisao_pai, tileset_collision]);


//colisao_rock

if((currentState == playerStates.idleUp or currentState > 3) and place_meeting(x, y - 5, obj_rock)) {
	with(obj_rock) {
		if(keyboard_check(ord("E"))){
			other.mcSpeed = 1
			v_speed = other.velv
		} else {
			other.mcSpeed = 3
			v_speed = 0
		}
	}
}

if((currentState == playerStates.idleLeft or currentState > 3) and place_meeting(x - 10, y, obj_rock)) {
	with(obj_rock) {
		if(keyboard_check(ord("E"))){
			other.mcSpeed = 1
			if(other.velh < 0) h_speed = other.velh
			else h_speed = other.velh * 1.5
		} else {
			other.mcSpeed = 3
			h_speed = 0
		}
	}
}

if((currentState == playerStates.idleDown or currentState > 3) and place_meeting(x, y + 5, obj_rock)) {
	with(obj_rock) {
		if(keyboard_check(ord("E"))){
			other.mcSpeed = 1
			v_speed = other.velv
		} else {
			other.mcSpeed = 3
			v_speed = 0
		}
	}
}

if((currentState == playerStates.idleRigth or currentState > 3) and place_meeting(x + 5, y, obj_rock)) {
	with(obj_rock) {
		if(keyboard_check(ord("E"))){
			other.mcSpeed = 1
			h_speed = other.velh
		} else {
			other.mcSpeed = 3
			h_speed = 0
		}
	}
}

//interaction Ladder

var ladderCheck = instance_place(x+10, y+10, obj_ladderSala1);
if(ladderCheck != noone){
	if(keyboard_check_pressed((ord("E")))){
		room_goto(SalaUm);
	}
}

//reset (TODO: ajustar a posição dele nas outras salas)
if(keyboard_check_pressed(ord("R"))){
room_restart();	
x = xstart;
y = ystart;
}

//masks
 if (maskState >= 3) {
	if (keyboard_check_pressed(ord("3"))) {
        if (!instance_exists(obj_maskThreeReflex)) {
            instance_create_layer(obj_MC.x, obj_MC.y, "Instances_3", obj_maskThreeReflex);
		} else {
            instance_destroy(obj_maskThreeReflex);
			
        }
    }
 }





	
	
	
