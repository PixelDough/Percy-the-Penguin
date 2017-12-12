/// @description Next Stage Alarm
if global.lives_ > 0 and instance_exists(obj_percy) {
	if room != room_last {
		if room == StageBonus {
			room = global.lastRoom + 1;
		} else {
			room_goto_next();
		}
	}
}