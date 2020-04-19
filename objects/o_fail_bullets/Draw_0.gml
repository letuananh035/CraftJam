/// @description 

x = x div 32;
y = y div 32;

x *= 32;
y *= 32;

xx = lerp(xx,x+16,.1);
yy = lerp(yy,y+16,.1);


if squash_timer <= squash_time{
	image_xscale = easings("easeoutelastic",.6,.4,squash_time,squash_timer);
	squash_timer++;
}



draw_sprite_ext(sprite_index,image_index,xx,yy,image_xscale,image_xscale,0,c_white,1);