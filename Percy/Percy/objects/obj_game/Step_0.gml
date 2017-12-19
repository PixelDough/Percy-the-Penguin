//Go to main menu
if room == parent {
	room = MainMenu;
}
//Main menu functions
if room == MainMenu {
	//If you press A
	if input.action_one_pressed[0] {
		room = Stage1;
		reset_game();
		music(snd_theme);
		global.players = 1;
	}
	if input.action_one_pressed[1] {
		room = Stage1;
		reset_game();
		music(snd_theme);
		global.players = 2;
	}
	if input.action_two_pressed[0] {
		room = TUTORIAL;
		reset_game();
	}
}
if room == Win {
	if input.action_one_pressed[0] {
		room = MainMenu;
	}
}

//If you're in the game
if instance_exists(obj_player) {
	if !global.paused {
		//If all enemies have been defeated
		if instance_number(obj_enemy_parent) == 0 and !instance_exists(obj_attractCutscene) {
			if alarm[0] <= 0 {
				alarm[0] = 240;
				with obj_present {
					instance_destroy();
				}
				sound(snd_transform);
			}
		}
	}
}

if room != MainMenu and room != TUTORIAL and room != Win {
	//Pause game
	if keyboard_check_pressed(vk_escape) {
		var _width = surface_get_width(application_surface);
		var _height = surface_get_height(application_surface);
		paused_image = sprite_create_from_surface(application_surface, 0, 0, _width, _height, false, false, 0, 0);
		global.paused = !global.paused;
	}
}

//DEBUG ROOM CONTROLL (HOLD SHIFT)
if keyboard_check(vk_shift) {
	if keyboard_check_pressed(vk_subtract) {
		room_goto_previous();
	}
	if keyboard_check_pressed(vk_enter) {
		room_goto_next();
	}
	//DEBUG CLICKING
	if mouse_check_button_pressed(mb_left) {
		var _item = add_item(mouse_x,mouse_y);
		_item.sprite_index = spr_bonus;
		_item.image_index = random(_item.image_number);
	}
}

//Go to bonus stage if all bonus items are collected
if global.bonus[0] == true and  global.bonus[1] == true and global.bonus[2] == true and global.bonus[3] == true and global.bonus[4] == true {
	global.lastRoom = room;
	room = BONUS;
	global.bonus = [false,false,false,false,false]
}
//drop_shadow = sprite_create_from_surface(application_surface, 0, 0, _width, _height, true, false, 0, 0);

if room == GameOver and keyboard_check_pressed(vk_anykey) {
	room = MainMenu;
}

global.time += 1;