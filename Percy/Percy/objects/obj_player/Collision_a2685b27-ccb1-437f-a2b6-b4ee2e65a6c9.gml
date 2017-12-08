if !other.hit {
	if invincible <= 0 {
		if ACTION != player.die {
			ACTION = player.die;
			vy = -jh;
			sound(snd_die);
		}
	}
} else {
	instance_destroy(other);
}