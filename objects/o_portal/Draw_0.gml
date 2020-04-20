/// @description Insert description here
// You can write your code in this editor
if !surface_exists(surf){
	surf = surface_create(view_w,view_h);
}else{
	
	surface_set_target(surf);
		draw_clear_alpha(0,0);
		draw_sprite_tiled(spr_portal_texture,0,0,0);
	surface_reset_target();
	
	shader_set(sha_portal);
		shader_set_uniform_f(u_screen_size, view_w, view_h);
		shader_set_uniform_f(u_time, current_time);
		var _tex = surface_get_texture(surf);
		texture_set_stage(u_surf,_tex);
		draw_sprite(sprite_index,0,x,y);
	shader_reset();
	draw_sprite(sprite_index,1,x,y);
}
