/// @description Idle State

image_index = 0;
image_speed = 0;
x_input_ = 0;
y_input_ = 0;

if (can_move_)
{
	if alarm[0] <= 0 {
		alarm[0] = random_range(2, 4) * global.one_second;
		var _idle = choose(0, 1)
		if (_idle == false)
		{
			direction_ = choose(90, 180, 270, 360);
			switch(direction_)
			{
				case 90: y_input_ = -1; break;
				case 180: x_input_ = -1; break;
				case 270: y_input_ = 1; break;
				case 360: x_input_ = 1; break;
			}
			state_ = kit.move;
		}
		else
		{
			state_ = kit.idle;
		}
	}
}