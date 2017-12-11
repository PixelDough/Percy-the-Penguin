/// @param x
/// @param y

var _x = argument0;
var _y = argument1;

var _itemRoll = irandom_range(0,100);

var _item = instance_create_layer(_x,_y,"Instances",obj_item);

if _itemRoll <= 40 {
	_item.sprite_index = spr_items50;
	_item.image_index = random(_item.image_number);
} else if _itemRoll <= 70 {
	_item.sprite_index = spr_items100;
	_item.image_index = random(_item.image_number);
} else if _itemRoll <= 85 {
	_item.sprite_index = spr_items1000;
	_item.image_index = random(_item.image_number);
} else if _itemRoll <= 100 {
	_item.sprite_index = spr_bonus;
	_item.image_index = random(_item.image_number);
}


return(_item);