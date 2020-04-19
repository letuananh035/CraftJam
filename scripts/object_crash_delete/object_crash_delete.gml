
if place_meeting(x+_x_speed, y, collision_object_) {
	if !place_meeting(x+sign(_x_speed), y, collision_object_) {
		x += sign(_x_speed);
	}
	
	if _bounce {
		_x_speed = -(_x_speed)*bounce_amount_;
	} else {
		instance_destroy();
	}
}


if _x_speed > 0  bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+_x_speed,bbox_top) != 0) || (tilemap_get_at_pixel(tilemap,bbox_side+_x_speed, bbox_bottom) != 0)
{
	instance_destroy();
}else{
x += _x_speed;
}
if place_meeting(x, y+_y_speed, collision_object_) {
	if !place_meeting(x, y+sign(_y_speed), collision_object_) {
		y += sign(_y_speed);
	}
	
	if _bounce {
		_y_speed = -(_y_speed)*bounce_amount_;
	} else {
		
		instance_destroy();

	}
	
}


//VERTICLE TILE COLLISIONS
if (_y_speed > 0)  bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+_y_speed) != 0) || (tilemap_get_at_pixel(tilemap,bbox_right, bbox_side+_y_speed) != 0)
{
	instance_destroy();

}else{

y += _y_speed;
}