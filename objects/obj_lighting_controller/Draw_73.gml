
/// @description Insert description here
// You can write your code in this editor

if !surface_exists(lightable_surf){
	lightable_surf = surface_create(view_w,view_h);
	var _tex = surface_get_texture(lightable_surf);
	texW = texture_get_texel_width(_tex);
	texH = texture_get_texel_height(_tex);
}else{
	surface_set_target(lightable_surf);
		draw_clear_alpha(0,0);
		camera_apply(view_camera[0]);
		#region
		with o_rock{
			if room != r_tutorial{
			event_perform(ev_draw,0);
			}
		}
		#endregion
		with(obj_lightable_parent){
			//draw_self();

			if object_index = o_portal{
				draw_self();	
			}else{
				event_perform(ev_draw,0);
			}
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
				draw_surface(lightable_surf,view_x,view_y);
				shader_reset();
				//gpu_set_blendmode(bm_normal);
			}
			_light_array = undefined;
		}
		////apply blendmode here
		//gpu_set_blendmode(bm_add);
		//draw_surface(other.surf,view_x,view_y);
		//gpu_set_blendmode(bm_normal);	
}