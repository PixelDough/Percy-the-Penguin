event_inherited();
make_mover(0, 0, 1, 0.2, 1.5, 0.9, 3.5, 3, 0.15, true);
spd = 0.75
spd_max = 1.25;

enum bouncer {
	walk,
	hit
}

ACTION = bouncer.walk;