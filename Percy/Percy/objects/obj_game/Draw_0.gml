draw_set_font(global.font);

if room == MainMenu {
	
	draw_set_halign(fa_center);
	draw_text_color(128,72,"SAVES CHRISTMAS",c_white,c_white,c_white,c_white,100);
	draw_text_color(128,112,"PRESS N TO START",c_white,c_white,c_white,c_white,100);
	draw_text_color(128,208,"@ PIXELDOUGH",c_white,c_white,c_white,c_white,100);
}

if room != parent and room != MainMenu {
	for (i = 0; i < global.lives_; i++) {
		draw_sprite(spr_percy_life, 0, 6+i*8+(i), 222);
	}
	
	draw_set_halign(fa_center);
	draw_set_color(c_red);
	draw_text(128,0,"HIGH SCORE");
	draw_set_color(c_white);
	draw_text(128,8,global.score_);
	
	if instance_exists(obj_player) {
		draw_set_halign(fa_right);
		draw_text(254,0,(room_get_name(room)));
	}
	if global.paused == true {
		instance_deactivate_all(true);
		draw_sprite(paused_image, 0, 0, 0);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		if (global.time%30) <= 15 {
			draw_text(128, 112, "PAUSED");
		}
	} else {
		instance_activate_all();
	}
	if global.lives_ <= 0 {
		draw_set_color(c_red);
		draw_set_halign(fa_center);
		draw_text(128, 112, "GAME OVER");
		if (global.time%30) <= 15 {
			draw_text(128, 124, "PRESS ANY KEY");
		}
	}
}