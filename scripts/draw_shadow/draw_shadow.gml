/// draw_shadow(x, y, sprite, index, alpha)
//Yellow after life shadow https://yal.cc/top-down-bouncing-loot-effects/
///@arg x
///@arg y
///@arg sprite
///@arg index
///@arg alpha

var _x = argument0;
var _y = argument1;
var sprite = argument2;
var index = argument3;
var alpha = argument4;

var new_scale = (30-abs(z_))/30;//30 is the cutoff range in the fake z Axis, after 30 pixels high it stops drawing
new_scale = clamp(new_scale,0,1);//can't go higher than one or less than 0


draw_sprite_ext(sprite,index,_x,_y,new_scale*sign(image_xscale),new_scale,image_angle,image_blend,alpha);
