display_reset(0,true)
reset_game();
var fnt = "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]";
global.font = font_add_sprite_ext(spr_font,fnt,true,1);

global.time = 0;

global.paused = false;

global.lastRoom = parent;

global.players = 1;

window_set_size(window_get_width()*3, window_get_height()*3);

global.version = string(1.1)