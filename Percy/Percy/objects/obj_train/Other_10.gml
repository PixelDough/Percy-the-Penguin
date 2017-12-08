/// @description Walk Event
sprite_index = spr_train_walk;
if xColl or place_free(x+spd*dir+(16*dir),y+1) {
	dir *= -1;
}
if grounded {
	x+=spd * dir;
}
