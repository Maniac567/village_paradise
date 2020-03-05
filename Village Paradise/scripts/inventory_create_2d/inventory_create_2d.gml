///@arg size_x
///@arg size_y
var _size_x = argument0;
var _size_y = argument1;
global.inventory_2d = [0, 0];

for (var _i = 0; _i < _size_y; _i++)
{
	for (var _j = 0; _j < _size_x; _j++)
	{
		global.inventory_2d[_i, _j] = noone;
	}
}