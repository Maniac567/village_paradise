/// @description Move State

if (!can_move_) { image_speed = 0; image_index = 0; exit; }

image_speed = .4;

var _input_direction = point_direction(0, 0, x_input_, y_input_);
if alarm[0] <= 0 {
	apply_friction_to_movement_entity();
} else {
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, 0.05, .5);
}

move_movement_entity(true);

if speed_ == 0 {
	alarm[0] = random_range(1, 3) * global.one_second;
	state_ = kit.idle;
}

