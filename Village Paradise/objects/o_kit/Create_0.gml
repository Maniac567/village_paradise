event_inherited(); //so it will inherit from par_speaker
initialize_movement_entity(.5, 1, o_solid);

//-------DIALOGUE STUFF

myPortrait			= spr_portrait_examplechar;
myVoice				= snd_voice1;
myName				= "Kit";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;


//-------OTHER

choice_variable		= -1;	//the variable we change depending on the player's choice in dialogue

acceleration_ = .5;
max_speed_ = 1.5;
can_move_ = true;
direction_facing_ = dirKit.down;
alarm[0] = 1;

enum kit {
	talk,
	idle,
	move
};

enum dirKit {
	right,
	up,
	left,
	down
};

starting_state_ = kit.move;
state_ = starting_state_;

x_input_ = 0;
y_input_ = 0;


//Sprite lookup table
sprite_[kit.talk, dirKit.right] = s_kit_walk_right;
sprite_[kit.talk, dirKit.up] = s_kit_walk_up;
sprite_[kit.talk, dirKit.left] = s_kit_walk_left;
sprite_[kit.talk, dirKit.down] = s_kit_walk_down;

sprite_[kit.idle, dirKit.right] = s_kit_walk_right;
sprite_[kit.idle, dirKit.up] = s_kit_walk_up;
sprite_[kit.idle, dirKit.left] = s_kit_walk_left;
sprite_[kit.idle, dirKit.down] = s_kit_walk_down;

sprite_[kit.move, dirKit.right] = s_kit_walk_right;
sprite_[kit.move, dirKit.up] = s_kit_walk_up;
sprite_[kit.move, dirKit.left] = s_kit_walk_left;
sprite_[kit.move, dirKit.down] = s_kit_walk_down;

