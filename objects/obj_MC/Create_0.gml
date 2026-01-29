velh = 0;
velv = 0;
image_angle = 90;
mcDirection = 0;
mcSpeed = 3;
last_direction = mcDirection;

currentState = playerStates.idleDown;

// States
enum playerStates {
	idleUp,
	idleLeft,
	idleDown,
	idleRigth,
	walkingUp,
	walkingLeft,
	walkingDown,
	walkingRigth
}
