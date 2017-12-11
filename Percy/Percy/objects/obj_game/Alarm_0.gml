/// @description Next Stage Alarm
if global.lives_ > 0 and instance_exists(obj_percy) {
	if room != room_last {
		room_goto_next();
	}
}