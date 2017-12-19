if alarm[0] > 0 and alarm[0] < 60 {
	if (alarm[0]+1) % 2 == 0 {
		draw_sprite_ext(sprite_index,image_index,x,y,dir,1,0,c_white,100);
	}
} else {
	draw_sprite_ext(sprite_index,image_index,x,y,dir,1,0,c_white,100);	
}