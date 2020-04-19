///@arg x,y,dir
var x_ = argument0;
var y_ = argument1;
var dir = argument2;

var fire_ = instance_create_layer(x_,y_,I,o_fire_ball_nut);
fire_.creator = id;
fire_.image_xscale = image_xscale;
if global.green_dragons
{
	fire_.bounce_count = 1;
	if global.second_run = true
	{
		fire_.bounce_count = 2;
	}
	fire_.green = true;
	create_animation_effect(s_explosion_smoky_GREEN,x_,y_,2,false);
}
else
{
	create_animation_effect(s_explosion_circle,x_,y_,2,false);
}

fire_.target = dir;

return fire_;