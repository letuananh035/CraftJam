/// @description 

event_inherited();

if hit_timer <= hit_time{
	
	hit_timer++;
	xscale = easings("easeoutelastic",0,1,hit_time,hit_timer);
	xscale = easings("easeoutelastic",0,1,hit_time,hit_timer);
	yscale = xscale;
	
	if hp <= 0 and hit_timer <= hit_time*.5{
		instance_destroy();		
		screenshake(6,SEC*.05);
	}	
}


we_are_hit = false;


if hit_timer <= SEC*.1{
	draw_outline_ext(sprite,image_index,x+16,y+32,xscale,yscale,image_angle,C_GUM,image_alpha);	
	shader_set(sh_fill);
	draw_sprite_ext(sprite,image_index,x+16,y+32,xscale,yscale,image_angle,c_white,image_alpha);
	shader_reset();
	we_are_hit = true;	
}else{
if outline{ 
	draw_outline_ext(sprite,image_index,x+16,y+32,xscale,yscale,image_angle,outline_color,image_alpha);		
}
draw_sprite_ext(sprite,image_index,x+16,y+32,xscale,yscale,image_angle,c_white,image_alpha);	
}