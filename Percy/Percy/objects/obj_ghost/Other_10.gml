/// @description Walk Event
sprite_index = spr_ghost_walk;

if instance_exists(obj_player) {
	move_towards_point(obj_player.x, obj_player.y, spd);
	
	dir = sign(obj_player.x - x);
}