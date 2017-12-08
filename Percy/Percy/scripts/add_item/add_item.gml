/// @param x
/// @param y
/// @param type

var _x = argument0;
var _y = argument1;
var _type = argument2;


var _item = instance_create_layer(_x,_y,"Instances",obj_item);
//var _sprites = [spr_items50,spr_items100,spr_items1000];
//_item.sprite_index = _sprites[_type];
_item.sprite_index = spr_items;
_item.image_index = random(_item.image_number);

return(_item);