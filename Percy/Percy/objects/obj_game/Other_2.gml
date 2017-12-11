display_reset(0,true)
reset_game();
var fnt = "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]";
global.font = font_add_sprite_ext(spr_font,fnt,true,1);

global.time = 0;

global.paused = false;



//global.snow = part_type_create();
//part_type_shape(global.snow,pt_shape_pixel);            
//part_type_size(global.snow,1,1,0,0);                    
//part_type_scale(global.snow,1,1);                       
//part_type_color1(global.snow,c_white);                  
//part_type_alpha1(global.snow,1);                        
//part_type_speed(global.snow,2,2,0,0);            
//part_type_direction(global.snow,270,270,0,20);            
//part_type_orientation(global.snow,0,0,0,0,1);           
//part_type_blend(global.snow,0);                         
//part_type_life(global.snow,60,60);    
//global.P_System=part_system_create();