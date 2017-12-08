/// @description Run Event
sprite_index = spr_robot_run;
if xColl {
	dir *= -1;
}
if grounded {
	x+=spd_max * dir;
}
