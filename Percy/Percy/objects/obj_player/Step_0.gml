//facing direction
if vx < 0 {
	dir = -1;
} else if vx > 0 {
	dir = 1;
}

if ACTION != player.die {
	//MOVEMENTS
	//Horizontal movements
	do_physics(true);	
	
	if input.l vx = max(vx - spd, -spd_max);
	if input.r vx = min(vx + spd, spd_max);

	if (!input.l and !input.r) or (input.l and input.r) {
		vx *= slip;
	}

	//switch to idle
	if abs(vx) < 0.1 and ACTION != player.attack {
		ACTION = player.idle;
	}

	if input.action_one_pressed and grounded {
		vy = -jh;
		sound(snd_jump);
	}
	
	if !grounded {
		vx *= .85;
	}
	
	if input.action_two_pressed and instance_number(obj_snowball_player) == 0 {
		ACTION = player.attack;
		image_index = 0;
		snowball = instance_create_layer(x, y, "Instances", obj_snowball_player);
		snowball.dir = dir
	}
}

event_user(ACTION);