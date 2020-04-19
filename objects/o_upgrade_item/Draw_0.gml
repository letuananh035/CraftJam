/// @description 
//we ened to make this zero current_max_length when coming up with an new length


visible = true;
draw_sprite(sprite_index,image_index,x,y);

draw_set_color(c_white);
depth = -y-8000;
draw_set_color(c_black);
draw_set_halign(fa_center);
special_deal_color = c_white;

	
if !instance_exists(o_player) exit;
xscale = lerp(xscale,1,.1);
yscale = lerp(yscale,1,.1);	
txt_x_off = 10;
//[fa_center] [c_yellow]  o_upgrade_p1_roadhog
//description = "[fa_center]SWORD CREATES A [c_orange]FIREBALL[]\n[c_fuchsia]+1 SWORD STAMINA COST[]\n[c_gum]---------[shake]WARNING[/shake]------\n[c_yellow]FIRE LIGHTS GRASS ON FIRE";
if alarm[1] > -1{
output_txt = error_text;	
}else{
output_txt = description;
}

if return_from_error_timer > 0{
	return_from_error_timer--;
	desc_flag = false;
	current_max_length = 0;
}


txt_w = 0;//how much our text offset is
var len = -1;
var len_size = sprite_get_width(s_font_custom)+1;
var move_to_next = true;

var new_line = 0;
var mini_len = ""; //gets the sprites we used in the textbox
amount_of_sprites = 0;//how many sprites are there, remember to only check the biggest one per line

if desc_flag = false{
	var new_string = output_txt;	
	desc_text_for_width = "";
	for (var i = 0; i <= total_number_of_sprites; i++){
	sprite_index_in_text[i] = noone;
	sprite_text_add[i] = 0;	
	}
	for (var i = 0; i < string_length(output_txt);i++){	
		output_txt = string_replace(output_txt," ","Ö");
		if string_char_at(new_string,i+1) = "[" {
			move_to_next = false;
		
			if string_char_at(new_string,i+2) = "s" and
			   string_char_at(new_string,i+3) = "_"{			
				for (var ii = i+1; ii <= i+99; ii++){ //we're going to break so the size doesn't matter
				
					if string_char_at(new_string,ii+1) = "]" || //end of the sprite name
					   string_char_at(new_string,ii+1) = "," ||	//we have a comma so we reached the end fo the sprite name
					   string_char_at(new_string,ii+1) = " "    //just in case people add a space at the end
					{
						//SUCCESS!! WE FOUND THE END OF THE SPRITE NAME!
						for (var aa = 0; aa <= total_number_of_sprites; aa++){
							if sprite_index_in_text[amount_of_sprites] = noone{
								//find the sprite index
								sprite_index_in_text[amount_of_sprites] = asset_get_index(mini_len);
								//find the sprite size
								sprite_text_add[amount_of_sprites] = sprite_get_height(asset_get_index(mini_len));	
								len += sprite_get_width(asset_get_index(mini_len));	
								break;
							}
						}
						break;
					}else{
					mini_len += string_char_at(new_string,ii+1);//add the sprite text as a string
				
					}
				}
				amount_of_sprites++;
			}
		}
		if string_char_at(new_string,i+1) = "]" {
			move_to_next = true;
			len -= len_size;
		}
		
		if string_char_at(new_string,i+1) = "\n"{
			if current_max_length < len{
				current_max_length 	= len;
			}		
			len = 0;
		}	
		if move_to_next = true{
			len += len_size;
			if string_char_at(new_string,i+1) != "]"{
				desc_text_for_width += string_char_at(new_string,i+1);
				title_string_no_scribble += string_char_at(new_string,i+1);
			}
		}
	}
	desc_flag = true;
}


draw_set_color(c_white);
description_width = string_width(desc_text_for_width);
if len > current_max_length{
	current_max_length 	= len;
}
//len /= 2; 
draw_set_color(c_white);

txt_w += current_max_length;
txt_h = string_height(output_txt);

offset_h = 5;
offset_w = 10;
offset_desc = 20;

var s = false;




if point_distance(x,y,o_player.x,o_player.y) < walk_range 
and instance_nearest(o_player.x,o_player.y,o_upgrade_item) = id and s = false{
	x_len = lerp(x_len,(txt_w/2)+offset_w,.4);
	in_range = true;
}else{
	x_len = lerp(x_len,0,.4);
	in_range = false;
}


	if choose_from_multiple > 0 and grayscale and !in_range{
		draw_sprite_ext(sprite_index,image_index,x+1,y+z_*2
		+2,xscale,yscale,image_angle,c_black,.5);
	}
	particle_timer = 0;

	if particle_timer <= 0 and x_len < x_len_thresh {
		particle_timer += random_range(SEC*15.5,SEC*25);
		
		var xx = random_range(-sprite_xoffset,sprite_xoffset);
		var yy = random_range(-sprite_yoffset,sprite_yoffset);
		
		var dir = random(360);
		var  xx = lengthdir_x(sprite_width/2,dir)
		var  yy = lengthdir_y(sprite_height/2,dir)
		
		
		var s = create_animation_effect(s_twinkle,x+xx,y+yy,1,false);
		s.image_blend = merge_color(c_white ,image_blend,.1);
		s.direction = dir;
		s.friction = random_range(.02,.2);
		s.speed = random_range(1,5);
	
		
	}else{
		particle_timer--;
	}

draw_set_color(c_white);
draw_set_halign(fa_center);