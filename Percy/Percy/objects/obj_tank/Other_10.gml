/// @description Idle Event
sprite_index = spr_tank_walk;
image_index = 0;
image_speed = 0;
if alarm[1] <= 0 and ACTION != tank.hit {
	ACTION = tank.shoot;
	image_index = 0;
}