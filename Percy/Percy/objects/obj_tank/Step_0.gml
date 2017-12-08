do_physics(true)
if instance_exists(obj_player) {
	dir = sign(obj_player.x - x);
	if dir == 0 {
		dir = 1
	}
}

event_user(ACTION);