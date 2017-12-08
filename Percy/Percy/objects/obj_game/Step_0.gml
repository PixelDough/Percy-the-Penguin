if room == parent {
	room = MainMenu;
}
if room == MainMenu {
	if input.action_one_pressed {
		room = Stage1;
		reset_game();
		music(snd_theme);
	}
}

if room != parent and room != MainMenu {
	if mouse_check_button_pressed(mb_left) {
		add_item(mouse_x,mouse_y,random(3));
	}
	if instance_number(obj_enemy_parent) == 0 {
		if alarm[0] <= 0 {
			alarm[0] = 240;
			with obj_present {
				add_item(x,y,random(3)+1);
				instance_destroy();
			}
			sound(snd_transform);
		}
	}
}

if keyboard_check_pressed(vk_subtract) {
	room_goto_previous();
}
if keyboard_check_pressed(vk_enter) {
	room_goto_next();
}

global.time += 1;