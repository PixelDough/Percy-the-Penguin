/// @description GET_INPUT

if !instance_exists(obj_cutSceneParent) {
	r = keyboard_check(vk_right);
	l = keyboard_check(vk_left);
	u = keyboard_check(vk_up);
	d = keyboard_check(vk_down);

	r_p = keyboard_check_pressed(vk_right);
	l_p = keyboard_check_pressed(vk_left);
	u_p = keyboard_check_pressed(vk_up);
	d_p = keyboard_check_pressed(vk_down);

	action_two = keyboard_check(ord("X"));
	action_one = keyboard_check(ord("Z"));

	action_two_pressed = keyboard_check_pressed(ord("X"));
	action_one_pressed = keyboard_check_pressed(ord("Z"));

	pause_pressed = keyboard_check_pressed(vk_enter);
}