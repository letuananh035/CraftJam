/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

depth = -9999;

with o_player_expressions{
	if beat_combo(){
	var index = 1;	
	}else{
	index = 0;
}
	

		pal_swap_set(s_portrait_palette,index,0);
		draw_sprite_ext(sprite_index,image_index,view_x+25,view_y+155,-1,1,0,c_white,1);
			pal_swap_reset();
	}

if !instance_exists(o_player) exit;
if !surface_exists(lightable_surf){
	lightable_surf = surface_create(view_w,view_h);
	var _tex = surface_get_texture(lightable_surf);
	texW = texture_get_texel_width(_tex);
	texH = texture_get_texel_height(_tex);
}else{
	
	surface_set_target(lightable_surf);
	
		draw_clear_alpha(0,0);
		camera_apply(view_camera[0]);

		with(o_player_expressions){
				event_perform(ev_draw,0);
		}
	surface_reset_target();
		if instance_exists(obj_light_parent){
			var _light_array = [];
			var i = 0;
			with(obj_light_parent){
				if (x < view_x-radius || y <  view_y-radius) || (x > view_x+view_w+radius || y >  view_y+view_h+radius){
					continue;
				}
				if (i > 20) {
					break;
				}
				_light_array[i*5] = x-view_x;
				_light_array[i*5+1] = y-view_y;
				_light_array[i*5+2] = radius;
				_light_array[i*5+3] = red/255;
				_light_array[i*5+4] = green/255;
				_light_array[i*5+5] = blue/255;
				i++;
			}
			if i > 0{
				//gpu_set_blendmode(bm_add);

				shader_set(sha_rim_new);
				shader_set_uniform_f_array(u1_light_array, _light_array);
				shader_set_uniform_f(u1_max_dist, 256);
				shader_set_uniform_f(u1_texel, texW, texH);
				shader_set_uniform_f(u1_sources, array_length_1d(_light_array)/5);
				
				
				with o_player{
				var dis = point_distance(xx,yy,x div CELL_SIZE * CELL_SIZE ,y div CELL_SIZE * CELL_SIZE);
				var dir = point_direction(xx,yy,x div CELL_SIZE * CELL_SIZE ,y div CELL_SIZE * CELL_SIZE);
				}	
				
				
				with obj_camera{
					draw_sprite(s_palm_tree,0,x,y);
				}
				
				
				if o_player.image_xscale = 1{	
				draw_surface_ext(lightable_surf,view_x+201,view_y+53,-1,1,0,c_white,1);	
				}else{
				draw_surface_ext(lightable_surf,view_x-151,view_y+53,1,1,0,c_white,1);
				}
			
				shader_reset();
				//gpu_set_blendmode(bm_normal);
			}
			_light_array = undefined;
		}
}