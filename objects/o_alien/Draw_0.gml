/// @description 


if shake = false{
shake_amount = lerp(shake_amount,0,.1);	
}else{
shake_amount = lerp(shake_amount,1,.1);		
}

xshake_amount = random_range(-shake_amount,shake_amount);
yshake_amount = random_range(-shake_amount,shake_amount);

draw_sprite_ext(sprite_index,image_index,x+xshake_amount,y+yshake_amount,xscale,yscale,image_angle,image_blend,image_alpha);