

if instance_exists(o_grass){
var	x_ = instance_nearest(x,y,o_grass).x;
var	y_ = instance_nearest(x,y,o_grass).y;
if point_distance(x,y,x_,y_) <40{
	with instance_nearest(x,y,o_grass){
		instance_create_layer(x,y,"Effects",o_grass_fire);		
	}
}
}