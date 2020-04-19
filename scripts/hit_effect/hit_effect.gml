///@para sprite
var knockback_direction = point_direction(other.x,other.y, x,y);
	var dis = point_distance(other.x,other.y, x,y);
	var yy = lengthdir_y(dis/2,knockback_direction+180);
	var xx = lengthdir_x(dis/2,knockback_direction+180);
	var s = create_animation_effect(argument0,other.x+xx,y+yy,1,false);
	return s;