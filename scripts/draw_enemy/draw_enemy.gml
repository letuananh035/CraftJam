if instance_exists(o_boss_final_hit){
draw_self();
exit;
}

if hide_sprite = true or global.special_floor = SPECIAL_EVERYONE_IS_INVISIBLE{
exit;	
}



if room = r_ran_black_and_white{
	black_outline = false;
	draw_outline(sprite_index,image_index,x,y+z_,xscale*image_xscale,yscale,image_angle,
	c_white,image_alpha);
	
	switch object_index{
		
	case o_porcupine: 
	
	
	
	draw_outline(sprite_index,image_index,x,y+z_,xscale*image_xscale,yscale,image_angle,
	c_white,image_alpha);
	
	
	pal_swap_set(s_porcupine_palette, 1,false);
	draw_sprite_ext(sprite_index,image_index,x,y+z_,xscale*image_xscale,yscale,image_angle,
	c_white,image_alpha);
	pal_swap_reset();
	
	exit;
	
	
	
	break;
		
	}
	
}


if instance_exists(o_this_is_a_dungeon){
if global.enemies_in_dungeon <= 1 or global.enemies_are_crazy = true{
	
if o_game.last_enemy_hue > 255{
	o_game.last_enemy_hue = 0;
}
o_game.last_enemy_hue += 4;
outline_color = make_color_hsv(o_game.last_enemy_hue,230,230);	
}
}

if flash_enemy {

var col = choose(c_white,c_red);

draw_outline(sprite_index,image_index,-1+x,y+z_,xscale*image_xscale,yscale,image_angle,
col,image_alpha);
draw_outline(sprite_index,image_index,+1+x,y+z_,xscale*image_xscale,yscale,image_angle,
col,image_alpha);
draw_outline(sprite_index,image_index,x,-1+y+z_,xscale*image_xscale,yscale,image_angle,
col,image_alpha);
draw_outline(sprite_index,image_index,x,1+y+z_,xscale*image_xscale,yscale,image_angle,
col,image_alpha);

}

if instance_exists(o_arrow) and !instance_exists(o_boomerang) or instance_exists(o_player_flash)
or global.player = 1 and instance_exists(o_combo_parent) and o_combo_parent.combo >= 6
or health_ <= 0 or outline = true or global.control_enemy = id or 
global.enemies_in_dungeon = 1 or global.enemies_are_crazy = true{
		//draw_sprite(s_arrow_target_lock,0, x,y-5);	
		
		
	if black_outline = false or object_is_ancestor(object_index, o_boss_parent) {


		draw_outline(sprite_index,image_index,x,y+z_,xscale*image_xscale,yscale,image_angle,outline_color,image_alpha);
		draw_sprite_ext(sprite_index,image_index,x,y+z_,xscale*image_xscale,yscale,image_angle,c_white,image_alpha);

	}else{

		

		draw_outline_thick(sprite_index,image_index,x,y+z_,xscale*image_xscale,yscale,image_angle,outline_color,image_alpha,2);
		

		
		draw_sprite_ext(sprite_index,image_index,x,y+z_,xscale*image_xscale,yscale,image_angle,c_white,image_alpha);

		
	
	
	}
}


	
	if poison > 0{
	var color = c_olive;	
	

	}else{
		color = c_white;
	}
	
	if black_outline = true and !object_is_ancestor(object_index, o_boss_parent) and !instance_exists(o_this_is_boss_room) and 
	!object_is_ancestor(object_index,o_boss_parent){

		draw_outline(sprite_index,image_index,x,y+z_,xscale*image_xscale,yscale,image_angle,c_black,image_alpha);
		draw_sprite_ext(sprite_index,image_index,x,y+z_,xscale*image_xscale,yscale,image_angle,color,image_alpha);
		

		
	}else{
		draw_sprite_ext(sprite_index,image_index,x,y+z_,xscale*image_xscale,yscale,image_angle,color,image_alpha);
	}
		if poison{
			var index_ = 0;
			if xscale > 1{
				index_ = 1;
			}
			var col = c_olive;
			draw_outline(s_poisonn,index_,x-1,y-sprite_height+z_,xscale*image_xscale,yscale,image_angle,col,image_alpha);
			draw_outline(s_poisonn,index_,x+1,y-sprite_height+z_,xscale*image_xscale,yscale,image_angle,col,image_alpha);
			draw_outline(s_poisonn,index_,x,y-sprite_height-1+z_,xscale*image_xscale,yscale,image_angle,col,image_alpha);
			draw_outline(s_poisonn,index_,x,y-sprite_height+1+z_,xscale*image_xscale,yscale,image_angle,col,image_alpha);
			draw_outline(s_poisonn,index_,x,y-sprite_height+z_,xscale*image_xscale,yscale,image_angle,c_black,image_alpha);
			draw_sprite_ext(s_poisonn,index_,x,y-sprite_height+z_,xscale*image_xscale,yscale,image_angle,c_white,image_alpha);		
		}




#region //show enemy hp 
if global.show_enemy_hp and health_ >0 and !instance_exists(o_papa_ray_parent){
	var sat = 255;


if health_ <= 1{
hue = 0; sat = 0;//yellow		
}else if health_ >1 and health_ <= 2{
hue = 35;//yellow	
}else if health_ > 2 and health_ <= 3{
hue = 17;//orange
}else if health_ >3 and health_ <= 4{
hue = 11;//redish	
	
}else if health_ > 4 and health_ <= 5{
hue = 8;//redish

}else if health_ >5 and health_ <= 6{
hue = 6;//redish	
	
}else if health_ > 6 and health_ <= 7{
hue = 4;//redish


}else if health_ >7 and health_ <= 8{
hue = 2;//redish	
	
}else{
hue = 0;	
}

var color = make_color_hsv(hue,sat,255)
draw_set_color(c_black);
	
if floor(health_) = health_ {
	//not a percentage
	var hp_string = string(floor(health_)); 
	
	draw_text(x+3,y-4+z_,hp_string);	
	draw_set_color(color);
	draw_text(x+2,y-5+z_,hp_string);	
	draw_set_color(c_white);	
	
}else{
	
#region
draw_set_color(color);
var hp_string = string_format(health_,1,1); 
//draw_text(x+3,y-4+z_,hp_string);		
	//decimal

var len = string_length(hp_string); //number of characters
var str = string_format(health_,1,1); 
var current_len = 0;
for (var i_ = 0; i_ < len; i_++){
	
//	string_char_at(str,i_+2))

	if i_ > 0 and string_char_at(str,3) != "0"{ //AVOID THE FIRST ZERO THIS IS THE DECIMAL
		draw_set_color(c_black);
		
		draw_text_ext_transformed(x+7 + current_len ,y+0+z_,string_char_at(str,i_+1),10,300,
		xscale/2,
		yscale/2,0);	
		draw_set_color(color);
		draw_text_ext_transformed(x+6 + current_len ,y-1+z_,string_char_at(str,i_+1),10,300,
			xscale/2,
			yscale/2,5);
	//draw_text_transformed_color(x+wid/2,y+z_,decimal,xscale/2,yscale/2,angle,color,color,color,color,image_alpha);
	}else if i_ = 0{//THIS IS THE WHOLE NUMBER
		draw_set_color(c_black);
		draw_text_ext_transformed(x+3 + current_len ,y-4+z_,string_char_at(str,i_+1),10,300,
			xscale,
			yscale,0);	
		draw_set_color(color);
		draw_text_ext_transformed(x+2 + current_len ,y-5+z_,string_char_at(str,i_+1),10,300,
			xscale,
			yscale,0);	
	}
	current_len += string_width(string_char_at(str,i_+1))/3;
}
#endregion
		
	}

}
#endregion

//draw_text(x,y-10,string(poison));