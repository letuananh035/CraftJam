///@arg x
///@arg y
///@arg size_mod
///@arg color
///@arg alpha
var xx = argument0;
var yy = argument1;
var size_mod = argument2;
var color = argument3;
var alpha = argument4;
draw_sprite_ext(s_light_ambient,0,return_gui_x(xx),return_gui_y(yy),other.radius*size_mod,other.radius*size_mod,0,color,alpha);

//draw_set_alpha(alpha);
//draw_circle_color(return_gui_x(xx),return_gui_y(yy),other.radius*size_mod,color,c_black,false);
//draw_set_alpha(1);