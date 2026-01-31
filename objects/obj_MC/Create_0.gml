// States
enum playerStates {
	idleUp, //0
	idleLeft, //1
	idleDown, //2
	idleRigth, //3
	walkingUp, //4
	walkingLeft, //5
	walkingDown, //6
	walkingRigth, //7
	walkingUpRight //8
}

// initial motion values
velh = 0;
velv = 0;
//image_angle = 180;
mcDirection = 0;
mcSpeed = 3;
// use enum-based last_direction so Step can set idle states consistently
last_direction = playerStates.idleDown;
currentState = playerStates.idleDown;
maskState = 2;
reflexOn = 0;
//tileset_collision = layer_tilemap_get_id("Tiles_Wall");
v_input = pointer_null;
h_input = pointer_null;

enum Direction {
	Up, //1
	Down, //2
	Left, //3
	Right, //4
}


var lay_id = layer_get_id("tiles_wall_past");
var lay_id2 = layer_get_id("tiles_wall_past_side");
var lay_id3 = layer_get_id("tiles_floor_past");


layer_set_visible(lay_id, false)
layer_set_visible(lay_id2, false)
layer_set_visible(lay_id3, false);

//camera 
zoomF = 1;

// debug
show_debug_message("DBG: obj_MC Create - initialized (mcSpeed=" + string(mcSpeed) + ")");










