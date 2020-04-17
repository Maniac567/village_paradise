/// @description Shovel State
show_debug_message("Shovel used");
instance_create_layer(x+10, y, "Instances", o_dirt_hole);
state_ = player.move;