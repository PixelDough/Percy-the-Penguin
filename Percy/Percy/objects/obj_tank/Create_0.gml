event_inherited();
spd_max = 0.25;

enum tank {
	idle,
	shoot,
	hit,
}

ACTION = tank.idle;

alarm[1] = random_range(60,120);