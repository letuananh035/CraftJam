if generated = false{
if !surface_exists(surf){
	surf = surface_create(room_width div GCD,room_height div GCD);
	
	surface_set_target(surf);
	shader_set(sha_noise);
			shader_set_uniform_f(u_rand,rand,rand1);
			draw_clear_alpha(0,0);
			draw_surface(surf,0,0);
	shader_reset();
	surface_reset_target();
	generated = true;
	}
}