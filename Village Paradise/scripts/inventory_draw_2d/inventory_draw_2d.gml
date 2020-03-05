///@arg x
///@arg y

var _x = argument0;
var _y = argument1;
//var _array_size = array_length_1d(global.inventory_2d);

for (var _i=0; _i< array_height_2d(global.inventory_2d); _i++) 
{
	for (var _j = 0; _j < array_length_2d(global.inventory_2d, _i); _j++)
	{
		var _box_x = _x+_i*32;
		var _box_y = _y+_j*32;
		draw_sprite(s_inventory_box, 0, _box_x, _box_y);
	
		var _item = global.inventory_2d[_i, _j];
		if instance_exists(_item) 
		{
			draw_sprite(_item.sprite_, 0, _box_x+16, _box_y+16);
		}
	}
}
