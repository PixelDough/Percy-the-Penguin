//Gain a life at 10000
for (var _i=0; _i<=other.pts; _i++) {
	if (global.score_ + _i) % 10000 == 0 and global.score_ % 10000 != 0 {
		global.lives_ += 1;
	}
}

global.score_ += other.pts;
instance_destroy(other);
sound(other.snd);

if other.sprite_index == spr_bonus {
	global.bonus[other.image_index] = true;
}