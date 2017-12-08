/// @description Roll Event
sprite_index = spr_chick_roll;
image_speed = 0.5;
if xColl {
	dir *= -1;
}
if grounded {
	x+=spd * dir;
}
