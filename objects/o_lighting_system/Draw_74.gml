/// @description 



with o_torch{
	radius = 1;	
}

if beat_combo() and room != r_boss_battle_second_phase {
		if global.darkness_alpha !=  .8{
			global.darkness_alpha = lerp(global.darkness_alpha,.8,.3);	
		}
}else if room = r_boss_battle_second_phase{
		if global.darkness_alpha !=  .3 and global.boss_hp <= 3{
			
			with o_boss_controller_second_phase{
				
				var alpha = .2;
				if lazer_warning {
					alpha = .6;
				}
				if lazer_warning{ 
					alpha = .9;
				}
				global.darkness_alpha = lerp(global.darkness_alpha,alpha,.3);	
				}
			}else{
				global.darkness_alpha = .2;
			}
			if !instance_exists(o_boss_controller_second_phase){
				global.darkness_alpha = .5;
			}
	}else{
		global.darkness_alpha =  .3;
}


global.screen_width = view_w;
global.screen_height = view_h;

	var w = global.screen_width;
	var h = global.screen_height;
	var dark = global.darkness_alpha;

	col = make_color_rgb(100,150,200);
	var flicker = random_range(-.08,.08);
	var light_sprite = s_gradiant;
	display_set_gui_size(
		global.screen_width,
		global.screen_height);
	application_surface_draw_enable(false);
if room = r_tutorial{
	global.darkness_alpha = 0;	
	draw_surface(application_surface,0,0);
		exit;
	
}

	radius = .25*(w/view_w);	

	

	if surface_exists(lighting){
		surface_set_target(lighting);
		draw_set_color(c_black);
		
		
			
		light_intense_amount = lerp(light_intense_amount,1.45,.2);	
		
		draw_clear_alpha(c_black,1);
		
		var base_alpha = .99;

		var red_gui = make_color_rgb(245,158,153);
		
		var light_fuchi = make_color_rgb(243,97,245);
		var light_cyan = merge_color(c_white, c_aqua,.6);
		
	gpu_set_blendmode(bm_normal);
	

with o_boss_controller_second_phase{
		if lazer_warning or lazer_fire{
				var size = .3;	
			if lazer_fire{
				var size = 1;	
			}
			
		var xx = view_x-32;
		var yy = lazer[0];
		
		for (var i = 0; i < 12; i++){
			//lazer[0]
			draw_sprite_ext(light_sprite,0,return_gui_x(xx+32+i*32 ),return_gui_y((yy+1)*CELL_SIZE-16),
			(other.radius)*1.2*image_xscale+flicker*.2,
			(other.radius)*.4*image_yscale+flicker*.2*size,
			0,col,base_alpha*1*size);
		}
	}
			
}
	
	with o_torch{
		
		var col = C_FIRE;
		
		if room != r_tutorial{
			var col = C_GUM;
		}
			draw_sprite_ext(light_sprite,0,return_gui_x(x),return_gui_y(y)-15,
			(other.radius)*1.2*image_xscale+flicker*.2,
			(other.radius)*1.2*image_yscale+flicker*.2,
			0,col,base_alpha*.8);
	}
	
	with o_alien_plant{
			draw_sprite_ext(light_sprite,0,return_gui_x(x),return_gui_y(y)-15,
			(other.radius)*1.2*image_xscale+flicker*.1,
			(other.radius)*1.2*image_yscale+flicker*.1,
			0,C_AQUA,base_alpha*.9);
	}
	
	with o_firetile{
		if animate = true{
			draw_sprite_ext(light_sprite,0,return_gui_x(x),return_gui_y(y)-15,
			(other.radius)*1.2*image_xscale+flicker*.1,
			(other.radius)*1.2*image_yscale+flicker*.1,
			0,C_RED,base_alpha*.9);
		}
	}
	
	
	if beat_combo(){
		with o_ore_light{
				draw_sprite_ext(light_sprite,0,return_gui_x(x),return_gui_y(y)-15,
				(other.radius)*1.2*image_xscale+flicker*.1,
				(other.radius)*1.2*image_yscale+flicker*.1,
				0,C_AQUA,base_alpha*.8);	
		}
	}
	
	if beat_combo() and room != r_boss_battle_second_phase{
		
		with o_player{
			
			draw_sprite_ext(s_spotlight,0,return_gui_x(x+10),
			return_gui_y(y+75),
			(other.radius)*4.2*image_xscale+flicker*.1,
			(other.radius)*4.2*image_yscale+flicker*.1,
			0,c_white,base_alpha);	
			draw_sprite_ext(s_spotlight,0,return_gui_x(x+10),
			return_gui_y(y+75),
			(other.radius)*4.2*image_xscale+flicker*.1,
			(other.radius)*4.2*image_yscale+flicker*.1,
			0,c_white,base_alpha);	
			
		}
	}	
	
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();

	shader_set(sh_light_add_xor);
	//0 = off, 1 = a bit, 80 = extremely intense
	shader_set_uniform_f(intensity,light_intense_amount);

	shader_set_uniform_f(darkness,1-global.darkness_alpha);	
	var tex = surface_get_texture(lighting);
	var handle = shader_get_sampler_index(sh_light_add_xor,"lighting");
	texture_set_stage(handle,tex);
	#region draw it to our final surface
		if surface_exists(surf_final){
		surface_set_target(surf_final);
		draw_surface_ext(application_surface,0,0,1,1,0,c_white,1);	
		surface_reset_target();
		}else{
		surf_final = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
		}
	#endregion
	shader_reset();


		#region
	
			
		if bloom_smooth_1 != .6{
		bloom_smooth_1 = lerp(bloom_smooth_1,.6,bloom_lerp_amount);
		}
		if bloom_smooth_2 != .9{
		bloom_smooth_2 = lerp(bloom_smooth_2,.9,bloom_lerp_amount);
		}
		
		
		if bloom_size_amount != 1/512{
		bloom_size_amount = lerp(bloom_size_amount,1/512,bloom_lerp_amount);
		}
		if bloom_intensity_amount != .2{
		bloom_intensity_amount = lerp(bloom_intensity_amount,.2,bloom_lerp_amount);
		}
		
		
		#endregion
			if surface_exists(surf_final) && surface_exists(surf_post_process){
				
			surface_set_target(surf_post_process);
				shader_set(sh_bloom);
				shader_set_uniform_f(shader_get_uniform(sh_bloom,"smooth_1"),
				bloom_smooth_1);
				shader_set_uniform_f(shader_get_uniform(sh_bloom,"smooth_1"),
				bloom_smooth_2);
				shader_set_uniform_f(bloom_size, bloom_size_amount);
				shader_set_uniform_f(bloom_intensity,.4);
		
				draw_surface_ext(surf_final,0,0,1,1,0,c_white,1);	
				shader_reset();
			surface_reset_target();
			
			if room != r_tutorial and beat_combo(){
				shader_set(sha_crt);
				shader_set_uniform_f(u_itime, current_time);
				draw_surface_ext(surf_post_process, 0, 0, 1, 1, 0, c_white, 1);
				shader_reset();
			}else{
				draw_surface_ext(surf_post_process, 0, 0, 1, 1, 0, c_white, 1);
			}
			
			}else{
			surf_final = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
			surf_post_process = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
			}

		if surface_get_width(application_surface) != surface_get_width(lighting) or
		surface_get_height(application_surface) != surface_get_height(lighting) or
		surface_get_width(application_surface) != surface_get_width(surf_final) or
		surface_get_height(application_surface) != surface_get_height(surf_final)
		
		{
			surface_resize(lighting,
			surface_get_width(application_surface),
			surface_get_height(application_surface));
		
			surface_resize(surf_final,
			surface_get_width(application_surface),
			surface_get_height(application_surface));
		}
	}else{
	lighting = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));	
	}
	draw_set_color(c_white);