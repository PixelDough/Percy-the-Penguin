/// @description ACTION

if !instance_exists(obj_cutSceneParent) {
	r[0] = keyboard_check(ord("D"));
	l[0] = keyboard_check(ord("A"));
	u[0] = keyboard_check(ord("W"));
	d[0] = keyboard_check(ord("S"));

	r_p[0] = keyboard_check_pressed(ord("D"));
	l_p[0] = keyboard_check_pressed(ord("A"));
	u_p[0] = keyboard_check_pressed(ord("W"));
	d_p[0] = keyboard_check_pressed(ord("S"));

	action_two[0] = keyboard_check(ord("G"));
	action_one[0] = keyboard_check(ord("F"));

	action_two_pressed[0] = keyboard_check_pressed(ord("G"));
	action_one_pressed[0] = keyboard_check_pressed(ord("F"));
	
	r[1] = keyboard_check(vk_right);
	l[1] = keyboard_check(vk_left);
	u[1] = keyboard_check(vk_up);
	d[1] = keyboard_check(vk_down);

	r_p[1] = keyboard_check_pressed(vk_right);
	l_p[1] = keyboard_check_pressed(vk_left);
	u_p[1] = keyboard_check_pressed(vk_up);
	d_p[1] = keyboard_check_pressed(vk_down);

	action_two[1] = keyboard_check(ord("N"));
	action_one[1] = keyboard_check(ord("M"));

	action_two_pressed[1] = keyboard_check_pressed(ord("N"));
	action_one_pressed[1] = keyboard_check_pressed(ord("M"));

	pause_pressed = keyboard_check_pressed(vk_enter);
}