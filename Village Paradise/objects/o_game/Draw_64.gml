var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

if sprite_exists(paused_sprite_)
{
	draw_sprite_ext(paused_sprite_, 0, 0, 0, paused_sprite_scale, paused_sprite_scale, 0, c_white, 1);
	draw_set_alpha(0.6);
	draw_rectangle_color(0, 0, _gui_width, _gui_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}

if (o_game.paused_)
{
	inventory_draw(0, 36);
}

draw_sprite(s_inventory_box, 0, 4, 4);
draw_sprite(s_inventory_box, 0, 36, 4);
var _item = global.item[0];
if instance_exists(_item)
{
	var _box_x = 4;
	var _box_y = 4;
	draw_sprite(_item.sprite_, 0, _box_x+16, _box_y+16);
	
	if _item.show_amount_ == true
	{
		draw_text(_box_x+20, _box_y+4, _item.amount_);
	}
}

var _item = global.item[1];
if instance_exists(_item)
{
	var _item = global.item[1];
	var _box_x = 36;
	var _box_y = 4;
	draw_sprite(_item.sprite_, 0, _box_x+16, _box_y+16);
	
	if _item.show_amount_ == true
	{
		draw_text(_box_x+20, _box_y+4, _item.amount_);
	}
}

draw_text_transformed(5, 140, day_, 1.5, 1.5, image_angle);
draw_text_transformed(5, 160, string(hour_) + ":" + string(minute_) + "." + string(second_), 1, 1, image_angle);