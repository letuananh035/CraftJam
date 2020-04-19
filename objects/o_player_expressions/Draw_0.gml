/// @description 


if !instance_exists(o_player) exit;
if o_player.sprite_index = hug exit;
image_speed = 1;

//x = o_player.xx+15;
//y = o_player.yy+5;

x = view_x+view_w/2+16;
y = view_y+view_h/2+12;

image_xscale = o_player.image_xscale;




draw_self();




//sprite_set_offset(sprite_index, 16,16)
