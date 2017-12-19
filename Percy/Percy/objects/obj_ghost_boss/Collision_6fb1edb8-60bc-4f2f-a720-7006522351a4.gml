if ACTION != boss_ghost.hit {
	life -= 1;
	ACTION = boss_ghost.hit;
	alarm[0] = 180;
	instance_destroy(other);
}