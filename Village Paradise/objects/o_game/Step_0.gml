if (paused_)
{
	var _array_size = array_length_1d(global.inventory);
	
	if (o_input.right_pressed_)
	{
		item_index_ = min(item_index_+1, _array_size-1);
	}
	if (o_input.left_pressed_)
	{
		item_index_ = max(item_index_-1, 0);
	}
	
	if (o_input.action_one_pressed_)
	{
		global.item[0] = global.inventory[item_index_];
	}
	if (o_input.action_two_pressed_)
	{
		global.item[1] = global.inventory[item_index_];
	}
}

if (o_input.pause_pressed_)
{
	if paused_
	{
		paused_ = false;
		if (sprite_exists(paused_sprite_))
		{
			sprite_delete(paused_sprite_);
		}
		instance_activate_all();
	}
	else
	{
		paused_ = true;
		paused_sprite_ = sprite_create_from_surface(application_surface, 0, 0, view_wport[0], view_hport[0], false, false, 0, 0);
		instance_deactivate_all(true);
		var _array_size = array_length_1d(global.inventory);
		for (var _i = 0; _i < _array_size; _i++)
		{
			instance_activate_object(global.inventory[_i]);
		}
		instance_activate_object(o_input);
	}
}

// Getting current internal time
	
minute_ = current_minute;
hour_ = current_hour;

if (current_hour > 12)
{
	hour_ = current_hour - 12;
}
if (current_hour == 0)
{
	hour_ = 12;
}


switch(current_weekday)
{
   case 0: day_ = "Sunday"; break;
   case 1: day_ = "Monday"; break;
   case 2: day_ = "Tuesday"; break;
   case 3: day_ = "Wednesday"; break;
   case 4: day_ = "Thursday"; break;
   case 5: day_ = "Friday"; break;
   case 6: day_ = "Saturday"; break;
}

switch(current_hour)
{
   case 0: am_pm_ = "AM"; break;
   case 1: am_pm_ = "AM"; break;
   case 2: am_pm_ = "AM"; break;
   case 3: am_pm_ = "AM"; break;
   case 4: am_pm_ = "AM"; break;
   case 5: am_pm_ = "AM"; break;
   case 6: am_pm_ = "AM"; break;
   case 7: am_pm_ = "AM"; break;
   case 8: am_pm_ = "AM"; break;
   case 9: am_pm_ = "AM"; break;
   case 10: am_pm_ = "AM"; break;
   case 11: am_pm_ = "AM"; break;
   case 12: am_pm_ = "PM"; break;
   case 13: am_pm_ = "PM"; break;
   case 14: am_pm_ = "PM"; break;
   case 15: am_pm_ = "PM"; break;
   case 16: am_pm_ = "PM"; break;
   case 17: am_pm_ = "PM"; break;
   case 18: am_pm_ = "PM"; break;
   case 19: am_pm_ = "PM"; break;
   case 20: am_pm_ = "PM"; break;
   case 21: am_pm_ = "PM"; break;
   case 22: am_pm_ = "PM"; break;
   case 23: am_pm_ = "PM"; break;
}

switch(current_minute)
{
   case 0: minute_ = "00"; break;
   case 1: minute_ = "01"; break;
   case 2: minute_ = "02"; break;
   case 3: minute_ = "03"; break;
   case 4: minute_ = "04"; break;
   case 5: minute_ = "05"; break;
   case 6: minute_ = "06"; break;
   case 7: minute_ = "07"; break;
   case 8: minute_ = "08"; break;
   case 9: minute_ = "09"; break;
}