if (paused_)
{
	if (position_meeting(mouse_x, mouse_y, id) && o_input.action_pressed_)
	{
		x_offset_ = x-mouse_x;
		y_offset_ = y-mouse_y;
		is_dragged_ = true;
	}
}