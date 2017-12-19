if ACTION == chick.run {
	ACTION = chick.hit;
	alarm[0] = 180;
}
if ACTION == chick.roll {
	ACTION = chick.run;
}