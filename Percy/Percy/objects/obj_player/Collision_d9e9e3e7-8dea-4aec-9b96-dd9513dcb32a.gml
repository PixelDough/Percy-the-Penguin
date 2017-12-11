global.score_ += other.pts;
instance_destroy(other);
sound(other.snd);

if other.sprite_index == spr_bonus {
	global.bonus[other.image_index] = true;
}