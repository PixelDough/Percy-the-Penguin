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

if room != parent and room != MainMenu and !global.paused {
	if mouse_check_button_pressed(mb_left) {
		var _item = add_item(mouse_x,mouse_y);
		_item.sprite_index = spr_bonus;
		_item.image_index = random(_item.image_number);
	}
	if instance_number(obj_enemy_parent) == 0 and instance_exists(obj_player) {
		if alarm[0] <= 0 {
			alarm[0] = 240;
			with obj_present {
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

if global.bonus[0] == true and  global.bonus[1] == true and global.bonus[2] == true and global.bonus[3] == true and global.bonus[4] == true {
	room = StageBonus;
	global.bonus = [false,false,false,false,false]
}

var _width = surface_get_width(application_surface);
var _height = surface_get_height(application_surface);
//drop_shadow = sprite_create_from_surface(application_surface, 0, 0, _width, _height, true, false, 0, 0);

if keyboard_check_pressed(vk_escape) and room != MainMenu {
	paused_image = sprite_create_from_surface(application_surface, 0, 0, _width, _height, false, false, 0, 0);
	global.paused = !global.paused;
}

if room == GameOver and keyboard_check_pressed(vk_anykey) {
	room = MainMenu;
}

global.time += 1;