/// @description Walk Event
sprite_index = spr_bouncer_walk;
image_speed = 0.5
if xColl {
	dir *= -1;
}

if grounded {
	vy = -jh;
}

x+=spd * dir;