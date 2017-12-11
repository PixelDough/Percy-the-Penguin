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

var _width = surface_get_width(application_surface);
var _height = surface_get_height(application_surface);
//drop_shadow = sprite_create_from_surface(application_surface, 0, 0, _width, _height, true, false, 0, 0);

if keyboard_check_pressed(vk_escape) and room != MainMenu {
	paused_image = sprite_create_from_surface(application_surface, 0, 0, _width, _height, false, false, 0, 0);
	global.paused = !global.paused;
}

if global.lives_ <= 0 {
	if keyboard_check_pressed(vk_anykey) {
		room = MainMenu
		
	}
}

global.time += 1;