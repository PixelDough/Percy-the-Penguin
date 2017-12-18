if currentState == cutSceneStates.Active {
	switch(currentStep) {
		case 0:
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			draw_text(128, 78, "USE A/D TO MOVE");
			input.r = false;
			if obj_player.x < 70 {
				input.r = true;
			}
			if counter >= 90 {
				input.r = false;
				currentStep++;
				counter = 0;
			}
		break;
		
		case 1:
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			draw_text(128, 78, "USE A/D TO MOVE\nAND N TO JUMP");
			input.action_one_pressed = false;
			if counter == 1 or counter == 60 {
				input.action_one_pressed = true;
			}
			if counter >= 100 {
				currentStep++;
				counter = 0;
			}
		break;
		
		case 2:
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			if counter < 60 {
				draw_text(128, 78, "USE M TO THROW A SNOWBALL");
			} else {
				draw_text(128, 78, "USE M TO THROW A SNOWBALL\nONLY ONE ON SCREEN\nAT A TIME");
			}
			input.action_two_pressed = false;
			if counter == 1 {
				input.action_two_pressed = true;
			}
			if counter >= 180 {
				currentStep++;
				counter = 0;
			}
		break;
		
		case 3:
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			draw_text(128, 78, "HIT ENEMIES WITH SNOWBALLS\nTO STUN THEM");
			input.action_two_pressed = false;
			if counter == 60 {
				input.action_two_pressed = true;
			}
			if counter >= 180 {
				currentStep++;
				counter = 0;
			}
		break;
		
		case 4:
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			draw_text(128, 78, "WATCH OUT!\nTHEY GET BACK UP!");
			if counter >= 120 {
				currentStep++;
				counter = 0;
			}
		break;
		
		case 5:
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			draw_text(128, 78, "HIT ENEMIES WHILE STUNNED\nTO WRAP THEM");
			input.action_two_pressed = false;
			if counter == 1 {
				input.action_two_pressed = true;
			}
			if counter >= 30 {
				currentStep++;
				counter = 0;
			}
		break;
		
		case 6:
			input.r = false;
			if obj_player.x <= 180 {
				draw_set_color(c_white);
				draw_set_halign(fa_center);
				draw_text(128, 78, "HIT ENEMIES WHILE STUNNED\nTO WRAP THEM");
				input.r = true;
			} else {
				currentStep++;
				counter = 0;
				obj_game.alarm[0] = 240;
			}
		break;
		
		case 7:
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			draw_text(128, 78, "ONCE EVERY ENEMY IS\nWRAPPED, THEY WILL BECOME\nA BONUS ITEM!");
			with obj_present {
				instance_destroy();
				sound(snd_transform);
			}
			if counter == 180 {
				currentStep++;
				counter = 0;
			}
		break;
		
		case 8:
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			draw_text(128, 78, "THEY DISSAPEAR OVER TIME!");
			input.l = false;
			if obj_player.x >= 110 {
				input.l = true;
			}
			if counter == 180 {
				currentStep++;
				counter = 0;
			}
		break;
		
		case 9:
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			draw_text(128, 78, "EVERY 5000 POINTS GETS YOU\nAN EXTRA LIFE!\n\nGOOD LUCK!!");
			if counter == 180 {
				room = MainMenu;
			}
		break;
	}
	counter++;
} else if currentState == cutSceneStates.Paused {
	
}