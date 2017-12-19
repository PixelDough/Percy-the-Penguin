/// @description Idle Event
image_speed = 0;
image_index = 0;
if input.r[player_number] or input.l[player_number] {
	ACTION = player.walk;
}