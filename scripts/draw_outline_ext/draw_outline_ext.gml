///@arg sprite
///@arg index
///@arg x
///@arg y
///@arg xscale
///@arg yscale
///@arg angle
///@arg color
///@arg alpha
var spr = argument0;
var index = argument1;
var xx = argument2;
var yy = argument3;
var sxc = argument4;
var ysc = argument5;
var angle = argument6;
var color = argument7;
var alpha = argument8;
shader_set(sh_fill);
draw_sprite_ext(spr,index,xx-1,yy,sxc,ysc,angle,color,alpha);
draw_sprite_ext(spr,index,xx+1,yy,sxc,ysc,angle,color,alpha);
draw_sprite_ext(spr,index,xx,yy-1,sxc,ysc,angle,color,alpha);
draw_sprite_ext(spr,index,xx,yy+1,sxc,ysc,angle,color,alpha);
shader_reset();