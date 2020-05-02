///@arg array_2d

var _arr = argument0;

var _temp = _arr[0, 0];

_arr[0, 0] = 0;
_arr[0, 0] = _temp;

return _arr;