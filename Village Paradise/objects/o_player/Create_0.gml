initialize_movement_entity(.5, 1, o_solid);

image_speed = 0;
acceleration_ = .5;
max_speed_ = 1.5;
direction_facing_ = dir.right;

enum player {
	move,
	shovel,
	axe
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

sprite_[player.shovel, dir.right] = s_player_run_right;
sprite_[player.shovel, dir.up] = s_player_run_up;
sprite_[player.shovel, dir.left] = s_player_run_right;
sprite_[player.shovel, dir.down] = s_player_run_down;

sprite_[player.axe, dir.right] = s_player_run_right;
sprite_[player.axe, dir.up] = s_player_run_up;
sprite_[player.axe, dir.left] = s_player_run_right;
sprite_[player.axe, dir.down] = s_player_run_down;

//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= spr_portrait_player;
myVoice				= snd_voice2;
myFont				= global.font;
myName				= "Panda";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;
