event_inherited();
with creator {
	if global.lives_-1 > 0 {
		x = startx;
		y = starty;
		ACTION = player.idle;
		invincible = invincibleMax;
	} else {
		instance_destroy(obj_player);
	}
}
global.lives_ -= 1;