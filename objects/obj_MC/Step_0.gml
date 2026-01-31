//move

var teclaCima = keyboard_check(ord("W"));
var teclaBaixo = keyboard_check(ord("S"));
var teclaDireita = keyboard_check(ord("D"));
var teclaEsquerda = keyboard_check(ord("A"));

// update last_direction using the enum idle states (keeps facing consistent when idle)
if (teclaCima) last_direction = playerStates.idleUp;
if (teclaBaixo) last_direction = playerStates.idleDown;
if (teclaEsquerda) last_direction = playerStates.idleLeft;
if (teclaDireita) last_direction = playerStates.idleRigth;

mcDirection = point_direction(0,0,teclaDireita - teclaEsquerda,teclaBaixo - teclaCima);

v_input = teclaBaixo - teclaCima; // baixo = 1, cima = -1, 0 = parado v
h_input = teclaDireita - teclaEsquerda; // direita = 1, esq = -1, 0 = parado h

velh = mcSpeed * h_input;
velv = mcSpeed * v_input;

if (velh == 0 && velv == 0) {
	// idle: restore the previously remembered idle direction
	switch (last_direction) {
		case playerStates.idleUp: currentState = playerStates.idleUp; break;
		case playerStates.idleDown: currentState = playerStates.idleDown; break;
		case playerStates.idleLeft: currentState = playerStates.idleLeft; break;
		case playerStates.idleRigth: currentState = playerStates.idleRigth; break;
		default: currentState = playerStates.idleDown; break;
	}
} else {
	// moving: set walking states and update last_direction accordingly
	if (h_input == 1 && velh != 0) { currentState = playerStates.walkingRigth; last_direction = playerStates.idleRigth; }
	if (v_input == 1 && velv != 0) { currentState = playerStates.walkingDown; last_direction = playerStates.idleDown; }
	if (v_input == -1 && velv != 0) { currentState = playerStates.walkingUp; last_direction = playerStates.idleUp; }
	if (h_input == -1 && velh != 0) { currentState = playerStates.walkingLeft; last_direction = playerStates.idleLeft; }
}

//show_debug_message(string(last_direction) + ", " +  string(velh) + ", " + string(velv))

if (currentState == playerStates.idleDown) { sprite_index = spr_mcIdle; }
else if (currentState == playerStates.idleUp) { sprite_index = spr_mcIdleUp; }
// swapped: ensure visual left/right match the state names
else if (currentState == playerStates.idleRigth) { sprite_index = spr_mcIdleSidedown; }
else if (currentState == playerStates.idleLeft) { sprite_index = spr_mcIdleSidedownLeft; }
else if (currentState == playerStates.walkingDown) { sprite_index = spr_mcWalk; }
else if (currentState == playerStates.walkingUp) { sprite_index = spr_mcWalkUp; }
else if (currentState == playerStates.walkingLeft) { sprite_index = spr_mcWalkSideDownLeft; }
else if (currentState == playerStates.walkingRigth) { sprite_index = spr_mcWalkSidedown; }


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





	
	
	
