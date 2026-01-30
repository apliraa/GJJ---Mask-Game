velh = 0;
velv = 0;
image_angle = 90;
mcDirection = 0;
mcSpeed = 3;
last_direction = mcDirection;

currentState = playerStates.idleDown;

// States
enum playerStates {
	idleUp, //1
	idleLeft, //2
	idleDown, //3
	idleRigth, //4
	walkingUp, //5
	walkingLeft, //6
	walkingDown, //7
	walkingRigth //8
}
