if ACTION == chick.run {
	ACTION = chick.hit;
	alarm[0] = 120;
}
if ACTION == chick.roll {
	ACTION = chick.run;
}