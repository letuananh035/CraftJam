obj_collisions();

if _x_speed > 0  bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+_x_speed,bbox_top) != 0) || 
(tilemap_get_at_pixel(tilemap,bbox_side+_x_speed, bbox_bottom) != 0)
{
	if (_x_speed > 0) {
		//x = x - (x % 32) mod returns remainder
		//snaps to a 32 to 32 grid
		x = x - (x mod 16)+16  - (bbox_right - x);
		if _bounce {
		_x_speed = -(_x_speed)*bounce_amount_;
		} else {
		_x_speed = 0;
		}
		}else{ 
		x = x - (x mod 32) - (bbox_left - x);
		if _bounce {
		_x_speed = -(_x_speed)*bounce_amount_;
		} else {
		_x_speed = 0;
		}
}
}else{
x += _x_speed;
}
//VERTICLE TILE COLLISIONS
if (_y_speed > 0)  bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+_y_speed) != 0) ||
(tilemap_get_at_pixel(tilemap,bbox_right, bbox_side+_y_speed) != 0)
{
	if (_y_speed > 0) {
		//x = x - (x % 32) mod returns remainder
		//snaps to a 32 to 32 grid
		y = y - (y mod 16) + (16-1) - (bbox_bottom - y );
			if _bounce {
			_y_speed = -(_y_speed)*bounce_amount_;
			} else {
			_y_speed = 0;
			}
		}else{ y = y - (y mod 32) - (bbox_top - y);
			if _bounce {
			_y_speed = -(_y_speed)*bounce_amount_;
			} else {
			_y_speed = 0;
			}
}
}else{
y += _y_speed;
}