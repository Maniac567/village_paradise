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