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
	
	if input.l[player_number] vx = max(vx - spd, -spd_max);
	if input.r[player_number] vx = min(vx + spd, spd_max);

	if (!input.l[player_number] and !input.r[player_number]) or (input.l[player_number] and input.r[player_number]) {
		vx *= slip;
	}

	//switch to idle
	if abs(vx) < 0.1 and ACTION != player.attack {
		ACTION = player.idle;
	}

	if input.action_one_pressed[player_number] and grounded {
		vy = -jh;
		sound(snd_jump);
	}
	
	if !grounded {
		vx *= .85;
	}
	
	if input.action_two_pressed[player_number] and instance_number(snowball_type) == 0 {
		ACTION = player.attack;
		image_index = 0;
		snowball = instance_create_layer(x, y, "Instances", snowball_type);
		snowball.dir = dir
	}
}

event_user(ACTION);