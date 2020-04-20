/// @description init pickable entity

z_speed_ = -3;
gravity_ = .25;
xscale = .45;
yscale = 1.75;
visible = true;
image_speed = .5;
half_height = (sprite_get_height(sprite_index));
depth = -y;

#region alter price


original_price = rent_dragon;



if free = true{
	rent_dragon = 0;
}
#endregion
pickable = true;

u_ht = shader_get_uniform(sh_outline_image_blend, "pixelH"); 
u_width = shader_get_uniform(sh_outline_image_blend, "pixelW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0));	

flavor_text_length = 0;



for (var i = 0; i < string_length(flavor_text); i++){
	if string_char_at(flavor_text,i+1) = "[" {
		move_to_next = false;
	}
	if string_char_at(flavor_text,i+1) = "]" {
		move_to_next = true;
	}
	if move_to_next = true and  string_char_at(flavor_text,i+1) != "]"{
		flavor_text_length += sprite_get_width(s_font_custom)+1;
	}
}
	