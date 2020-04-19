/// @description Insert description here
// You can write your code in this editor

u_light_pos = shader_get_uniform(sha_rim,"lightPos");
u_light_rad = shader_get_uniform(sha_rim,"lightRad");
u_light_col = shader_get_uniform(sha_rim,"lightCol");
u_falloff	= shader_get_uniform(sha_rim,"falloff");

u_texel = shader_get_uniform(sha_rim,"texel");

lightable_surf = -1;

u1_light_array = shader_get_uniform(sha_rim_new,"light_array");
u1_texel = shader_get_uniform(sha_rim_new,"texel");
u1_sources = shader_get_uniform(sha_rim_new,"sources");
u1_max_dist	= shader_get_uniform(sha_rim_new,"max_dist");
