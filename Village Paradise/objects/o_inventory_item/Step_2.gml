if (o_game.paused_)
{
	if (is_dragged_ && o_input.action_one_)
	{
		x = mouse_x+x_offset_;
		y = mouse_y+y_offset_;
	}
	
	if (mouse_check_button_released(mb_left))
	{
		is_dragged_ = false;
	}
}