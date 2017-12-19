ACTION = 0;
event_user(ACTION);

//keyboard_set_map(ord("W"),vk_up);
//keyboard_set_map(ord("A"),vk_left);
//keyboard_set_map(ord("S"),vk_down);
//keyboard_set_map(ord("D"),vk_right);

//keyboard_set_map(ord("M"),ord("X"));
//keyboard_set_map(ord("N"),ord("Z"));

for (var _i = 0; _i <= 1; _i++) {
	r[_i] = false;
	l[_i] = false;
	u[_i] = false;
	d[_i] = false;

	r_p[_i] = false;
	l_p[_i] = false;
	u_p[_i] = false;
	d_p[_i] = false;

	action_two[_i] = false;
	action_one[_i] = false;

	action_two_pressed[_i] = false;
	action_one_pressed[_i] = false;

	pause_pressed[_i] = false;
}