// debug + safely follow the player instance instead of accessing obj_MC.x/y directly
show_debug_message("DBG: obj_light Step start - x=" + string(x) + " y=" + string(y));
var player_inst = instance_find(obj_MC, 0);
if (player_inst != noone) {
    x = player_inst.x;
    y = player_inst.y;
}

