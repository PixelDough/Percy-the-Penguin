if ACTION != boss_ghost.hit {
	life -= 1;
	ACTION = boss_ghost.hit;
	alarm[0] = 120;
	instance_destroy(other);
}