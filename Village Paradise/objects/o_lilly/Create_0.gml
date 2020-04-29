event_inherited(); //so it will inherit from par_speaker
initialize_movement_entity(.5, 1, o_solid);

//-------DIALOGUE STUFF

myPortrait			= spr_portrait_examplechar;
myVoice				= snd_voice1;
myName				= "Lilly";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;


//-------OTHER

choice_variable		= -1;	//the variable we change depending on the player's choice in dialogue

acceleration_ = .5;
max_speed_ = 1.5;
direction_facing_ = dirLilly.down;
alarm[0] = 1;

enum lilly {
	talk,
	idle,
	move
};

enum dirLilly {
	right,
	up,
	left,
	down
};

starting_state_ = lilly.idle;
state_ = starting_state_;

x_input_ = 0;
y_input_ = 0;


//Sprite lookup table
sprite_[lilly.talk, dirLilly.right] = s_lilly_walk_right;
sprite_[lilly.talk, dirLilly.up] = s_lilly_walk_up;
sprite_[lilly.talk, dirLilly.left] = s_lilly_walk_right;
sprite_[lilly.talk, dirKit.down] = s_lilly_walk_down;

sprite_[lilly.idle, dirKit.right] = s_lilly_walk_right;
sprite_[lilly.idle, dirKit.up] = s_lilly_walk_up;
sprite_[lilly.idle, dirKit.left] = s_lilly_walk_right;
sprite_[lilly.idle, dirKit.down] = s_lilly_walk_down;

sprite_[lilly.move, dirKit.right] = s_lilly_walk_right;
sprite_[lilly.move, dirKit.up] = s_lilly_walk_up;
sprite_[lilly.move, dirKit.left] = s_lilly_walk_right;
sprite_[lilly.move, dirKit.down] = s_lilly_walk_down;