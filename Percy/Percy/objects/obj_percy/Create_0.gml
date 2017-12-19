event_inherited();
sprites = [spr_percy_walk, spr_percy_walk, spr_percy_attack, spr_percy_die];
player_number = 0;
snowball_type = obj_snowball_percy;

if global.players == 2 {
	instance_create_layer(x+16, y, layer, obj_polly);
}