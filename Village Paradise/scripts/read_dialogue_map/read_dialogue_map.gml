///@arg id_map
///@arg key_map
///@arg id_list
///@arg list_pos

var _id_map = argument0;
var _key_map = argument1;
var _list_pos = argument2;

var _chat_list = ds_map_find_value(_id_map, _key_map);

var _chat_array = ds_list_find_value(_chat_list, _list_pos)

var _arr_copy = array_copy_2d(_chat_array);

return _arr_copy;