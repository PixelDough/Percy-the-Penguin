/// @description Run Event
sprite_index = spr_chick_run;
image_speed = 0.5;
if xColl {
	dir *= -1;
}
if grounded {
	x+=spd_max * dir;
}
