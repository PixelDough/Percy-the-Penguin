/// @description Shoot Event
sprite_index = spr_tank_shoot;
image_speed = 0.25;
if image_index = image_number-1 and ACTION != tank.hit {
	snowball = instance_create_layer(x,y,"Instances",obj_bullet_enemy);
	snowball.dir = dir;
	alarm[1] = irandom_range(60,120);
	ACTION = tank.idle;
}