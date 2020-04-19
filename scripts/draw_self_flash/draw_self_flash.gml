///@arg color
///@arg interval
///@arg alarm

if health_ <= 0 exit;
var _color = argument0;
var _interval = argument1;
var _alarm = argument2;
//hurt case
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,image_index));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,image_index));
//once the alarm hits 0 flash stops
if (_alarm % _interval) <= _interval/2 and _alarm > 0 {
	///
		//draw_sprite_ext(sprite_index, image_index, x, y+z_, (xscale*sign(image_xscale)), yscale, image_angle, image_blend, image_alpha);

		draw_outline(sprite_index, image_index, x, y+z_, (xscale*sign(image_xscale)), yscale, image_angle, outline_color, image_alpha);
		
	
		if invincibile_ = true{
		shader_set(sh_sprite_flash);
		var shd_alpha = shader_get_uniform(sh_sprite_flash, "_alpha");
		//gpu_set_blendmode(bm_add);
		shader_set_uniform_f(shd_alpha, hurt_flash);
		hurt_flash = lerp(hurt_flash,0,.01);
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(sprite_index, image_index, x, y+z_, (xscale*sign(image_xscale)), yscale, image_angle, image_blend, image_alpha);
		shader_reset();
		gpu_set_blendmode(bm_normal);
		}
	
		if object_is_ancestor(object_index,o_boss_parent) and state != enemy.hit{
		
		shader_set(sh_fill);
		draw_sprite_ext(sprite_index, image_index, x, y+z_, (xscale*sign(image_xscale)), yscale, image_angle, c_white, image_alpha);
		shader_reset();	
		}
		
	if global.player = 1 and health_ > 0{
		
		
		

	draw_outline(sprite_index,image_index,x,y+z_,xscale*image_xscale,yscale,image_angle,C_RED,image_alpha);


	shader_set(sh_fill);
	draw_sprite_ext(sprite_index, image_index, x, y+z_, (xscale*sign(image_xscale)), yscale, image_angle, c_white, image_alpha);	
	shader_reset();	

	}
		
}else if invincibile_ = true and health_ >0{
hurt_flash = 1;		
}else if invincibile_ = false and hurt_flash >0 and health_ > 0 {

		
	
		shader_set(sh_sprite_flash);
		var shd_alpha = shader_get_uniform(sh_sprite_flash, "_alpha");
		//gpu_set_blendmode(bm_add);
		shader_set_uniform_f(shd_alpha, hurt_flash);
		hurt_flash = lerp(hurt_flash,0,.2);
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(sprite_index, image_index, x, y+z_, (xscale*sign(image_xscale)), yscale, image_angle, image_blend, image_alpha);
		shader_reset();
		gpu_set_blendmode(bm_normal);
	
}



