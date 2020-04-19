///@arg sprite_index
///@arg image_index
///@arg x
///@arg y
///@arg xscale
///@arg yscale
///@arg image_angle
///@arg outline_color
///@arg image_alpha


shader_set(sh_fill);
draw_sprite_ext(argument0,argument1,argument2+1,argument3,argument4,argument5,argument6,argument7,argument8);
draw_sprite_ext(argument0,argument1,argument2-1,argument3,argument4,argument5,argument6,argument7,argument8);
draw_sprite_ext(argument0,argument1,argument2,argument3+1,argument4,argument5,argument6,argument7,argument8);
draw_sprite_ext(argument0,argument1,argument2,argument3-1,argument4,argument5,argument6,argument7,argument8);
shader_reset();