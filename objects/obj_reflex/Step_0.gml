// safely reference the player instance
var player_inst = instance_find(obj_MC, 0);
show_debug_message("DBG: obj_reflex Step start - x=" + string(x) + " y=" + string(y));

// safely reference the player instance
var player_inst = instance_find(obj_MC, 0);
if (player_inst != noone) {
    x -= player_inst.x + 10;
    y += player_inst.x + 10;
    //image_xscale = -player_inst.image_xscale;
}