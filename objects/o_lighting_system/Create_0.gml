/// @description 


application_surface_draw_enable(false);
lighting = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));	
surf_final = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));	
first_pass = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));	

surf_post_process = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
u_itime = shader_get_uniform(sha_crt, "iTime");

hue = 0;


darkness = shader_get_uniform(sh_light_first_pass,"darkness");
bloomblurSize = shader_get_uniform(sh_light_first_pass, "blurSize");
intensity = shader_get_uniform(sh_light_first_pass,"mult");



darkness = shader_get_uniform(sh_light_add_xor,"darkness");
bloomblurSize = shader_get_uniform(sh_light_add_xor, "blurSize");
intensity = shader_get_uniform(sh_light_add_xor,"mult");


bloom_size = shader_get_uniform(sh_bloom,"blurSize");
bloom_intensity = shader_get_uniform(sh_bloom,"intensity");


fog_opacity = .1;
light_instense_lerp = .1;
bloom_smooth_1 = .6;
bloom_smooth_2 = .9;
bloom_size_amount = 1/512;
bloom_intensity_amount = .2;
bloom_lerp_amount = .1;
light_intense_amount = 1.45;