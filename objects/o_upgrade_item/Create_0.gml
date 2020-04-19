/// @description Insert description here
// You can write your code in this editor


x = x div 32;
y = y div 32;

x *= 32;
y *= 32;

x += 16;
y += 16;
txt_h = 0;
flavor_text_length = 0;
total_number_of_sprites = 5;
offset_w = 0;
return_from_error_timer_format = 0;
return_from_error_timer = 0;
for (var i = 0; i <= total_number_of_sprites; i++){
	sprite_index_in_text[i] = noone;
	sprite_text_add[i] = 0;	
}

txt_w = 0;//how much our text offset is

return_from_error_timer = 0;
return_from_error_timer_format = 0;
offset_h = 0;



alarm[2] = 2;
title_flag = false;
desc_flag = false;
final_desc_len = 0;
final_title_len = 0;

string_for_width = "";//TITLE

flavor_text = "[fa_center][c_yellow]";

text_w = 0;
final_title_len = 0;
title_display_text = noone;
desc_display_text = noone;
desc_text_final = "";
title_flag = false;
desc_flag = false;
title_9_slice_width_ = 0;
output_txt = "";
char = 0;
picked_up_weapon = false;
description_width = 0;
can_be_picked = false;
txt_x_off = 10;
desc_text_for_width = "";
made_from_boss = false;
creator = noone;
made_from_boss_reward = noone;
made_from_upgrade = false;
choose_from_multiple = 0;
sprite_2 = noone;
sprite_2_image_index = 0;
sprite = sprite_index;
current_max_length = 0;
current_max_length_title = 0;
title = "";
description = "";
reward = "";
desc_text_for_width = "";
reward_color = C_LIME;
action = noone;
rent = 100;
price = 1000;
visible = true;
rent_dragon = 2000;
original_price = 0;
pickable = false;


grayscale = false;
x_len_thresh = 15;
in_range = false;
image_color = c_white;
z_ = 0;
z_speed_ = 0;
xscale = 1;
yscale = 1;
gravity_ = .2;
x_len = 0;
special_deal = false;
price_color = c_white;
walk_range = 35;

free = false;

sprite_overlay_x = 0;
sprite_overlay_y = 0;

particle_timer = 0;

special_deal_color = c_white;//make_color_rgb(58,150,204);

error_title = "SORRY";
error_text = "NOT ENOUGH [c_gum]MONEY";
title_string_no_scribble = "";//title string with out the [c_blue] for scribble

title_9_slice_width = 0;//this is the total width for our title


y_top_offset = 0;//offset for when we include a sprite
shop_text = noone;

u_ht = shader_get_uniform(sh_outline_image_blend, "pixelH"); 
u_width = shader_get_uniform(sh_outline_image_blend, "pixelW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0)); 
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0)); 	

tier = 0;
tier_color[0] = make_color_rgb(222,231,247); //white
tier_color[1] = make_color_rgb(74,136,247); // blue
tier_color[2] = make_color_rgb(183,73,247); //purple
tier_color[3] = make_color_rgb(255,235,25); //gold
tier_color[4] = c_white;//rainbow

tier_color[5] = C_RED;
rainbow_color_timer = 0;