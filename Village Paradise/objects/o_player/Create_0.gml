initialize_movement_entity(.5, 1, o_solid);

image_speed = 0;
acceleration_ = .5;
max_speed_ = 1.5;
direction_facing_ = dir.right;

enum player {
	move,
	bow
}

enum dir {
	right,
	up,
	left,
	down
}

enum action {
	one,
	two
}

starting_state_ = player.move;
state_ = starting_state_;
action_ = noone;

// Sprite move lookup table
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.left] = s_player_run_right;
sprite_[player.move, dir.down] = s_player_run_down;

//sprite_[player.bow, dir.right] = s_player_bow_right;
//sprite_[player.bow, dir.up] = s_player_bow_up;
//sprite_[player.bow, dir.left] = s_player_bow_right;
//sprite_[player.bow, dir.down] = s_player_bow_down;
