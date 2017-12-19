/// @description Next Stage Alarm
if global.lives_ > 0 and instance_exists(obj_percy) and !instance_exists(obj_attractCutscene) {
	if room != room_last {
		if room == BONUS and room_exists(global.lastRoom+1) {
			room = global.lastRoom + 1;
			music(snd_theme);
		} else {
			room_goto_next();
		}
	}
}