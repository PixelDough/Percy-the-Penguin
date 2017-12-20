draw_set_font(global.font);

if room == MainMenu {
	
	draw_set_halign(fa_center);
	draw_text_color(128,72,"SAVES CHRISTMAS",c_white,c_white,c_white,c_white,100);
	draw_text_color(128,112,"PRESS F TO START\n< " + string(global.players) + " PLAYER >\n\nPRESS T TO SEE TUTORIAL\n\n\nVERSION " + global.version,c_white,c_white,c_white,c_white,100);
	draw_text_color(128,208,"@ PIXELDOUGH",c_white,c_white,c_white,c_white,100);
}

if room == Win {
	draw_text_color(128,72,"SAVED CHRISTMAS!",c_white,c_white,c_white,c_white,100);
	draw_text_color(128,112,"THANKS FOR PLAYING!",c_white,c_white,c_white,c_white,100);
	draw_text_color(128,144,"GAME BY ADAM WORRELL",c_white,c_white,c_white,c_white,100);
	draw_text_color(128,160,"MUSIC BY LILY PRICE",c_white,c_white,c_white,c_white,100);
	draw_text_color(128,192,"PRESS F TO RESTART",c_white,c_white,c_white,c_white,100);
}

if instance_exists(obj_player) {
	for (i = 0; i < global.lives_; i++) {
		draw_sprite(spr_percy_life, 0, 6+i*8+(i), 222);
	}
	
	for (var _x = 0; _x < 5; _x ++) {
		if global.bonus[_x] == true {
			draw_sprite(spr_bonus, _x, 10+(_x*16), 16);
		}
	}
	
	if instance_exists(obj_player) {
		draw_set_halign(fa_right);
		draw_text(254,0,(room_get_name(room)));
	}
}

if room != MainMenu and room != TUTORIAL and room != Win {
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
}

if room == GameOver {
	draw_set_color(c_red);
	draw_set_halign(fa_center);
	draw_text(128, 64, "GAME OVER");
	if (global.time%30) <= 15 {
		draw_text(128, 80, "PRESS ANY KEY");
	}
}
	
draw_set_halign(fa_center);
draw_set_color(c_red);
draw_text(128,0,"HIGH SCORE");
draw_set_color(c_white);
draw_text(128,8,global.score_);