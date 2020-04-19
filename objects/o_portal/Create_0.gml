/// @description Insert description here
// You can write your code in this editor
u_screen_size = shader_get_uniform(sha_portal, "screenSize");
u_time = shader_get_uniform(sha_portal, "time");
u_surf = shader_get_sampler_index(sha_portal,"texture");

surf = -1;