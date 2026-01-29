//direction

if (mcDirection == 0){
	image_angle = 0;
}

if (mcDirection == 1){
	image_angle = 90;

}

if (mcDirection == 2){
	image_angle = 180;
}

if (mcDirection == 3){
	image_angle = 270;
}

//move

if (keyboard_check(ord("W"))) {
	y = y - mcSpeed;
	mcDirection = 0;
	last_direction = mcDirection;
}

if (keyboard_check(ord("A"))) {
	x = x - mcSpeed;
	mcDirection = 1;
	last_direction = mcDirection;

}

if (keyboard_check(ord("S"))) {
	y = y + mcSpeed;
	mcDirection = 2;
	last_direction = mcDirection;

}

if (keyboard_check(ord("D"))) {
	x = x + mcSpeed;
	mcDirection = 3;
	last_direction = mcDirection;
}

//interaction

