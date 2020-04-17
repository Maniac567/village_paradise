///@arg input
///@arg item
///@arg action
var _input = argument0;
var _item = argument1;
var _action = argument2;

if _input
{
	if instance_exists(_item)
	{
		if _item.show_amount_
		{
			if _item.amount_ > 0
			{
				_item.amount_ -= 1;
			}
			else 
			{
				exit;
			}
		}
		action_ = _action;
		state_ = _item.action_
		alarm[1] = global.one_second;
		image_index = 0;
	}
}