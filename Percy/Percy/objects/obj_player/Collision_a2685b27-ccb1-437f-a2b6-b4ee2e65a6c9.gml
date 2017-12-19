if !other.hit {
	if invincible <= 0 {
		if ACTION != player.die {
			ACTION = player.die;
			vy = -jh;
			sound(snd_die);
		}
	}
} else if other.object_index != obj_ghost_boss {
	instance_destroy(other);
}