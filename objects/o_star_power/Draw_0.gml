/// @description 

timer++;
if timer > 254{
timer = 0;	
}
var color = make_color_hsv(timer,162,172);
var wob = (wobble*3);
z_ = wob;
draw_shadow(x-4,y+12,s_ore_shadow,image_index,1);
draw_outline(sprite_index,image_index,x,y+wob,1,1,image_angle,color,1);
draw_sprite_ext(sprite_index,image_index,x,y+wob,1,1,image_angle,c_white,1);
