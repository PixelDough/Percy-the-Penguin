/// @description Walk Event
sprite_index = spr_robot_walk;
if xColl {
	dir *= -1;
}
if grounded {
	x+=spd * dir;
}
