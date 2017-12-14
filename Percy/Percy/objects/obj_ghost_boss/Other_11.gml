/// @description Hit Event
//sprite_index = spr_ghost_run;
/// @description Hit Event
sprite_index = spr_boss;
hit = true;

if life <= 0 {
	instance_destroy();
	instance_destroy(obj_enemy_parent);
}

ACTION = boss_ghost.walk;