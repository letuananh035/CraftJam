var xoffset = 5;
var yoffset = 5;
if _x_speed > 0  bbox_side = bbox_right +1 ; else bbox_side = bbox_left ;
if (tilemap_get_at_pixel(tilemap,x+_x_speed,y) != 0)
{
	if (_x_speed > 0){
			
			x = x - (x mod 16) + 15 - (bbox_right - x);
			_x_speed = -(_x_speed)*bounce_amount_;
			bounce_count--;
			var s = explosion(x-xoffset,y,90,270);
			if bounce_count > 0{
			s.green = true;	
			}
		
			}else{
		
			var s = explosion(x-xoffset,y,0,90);
			if bounce_count > 0{
			s.green = true;	
			}
		
			var s = explosion(x-xoffset,y,270,360);
			if bounce_count > 0{
			s.green = true;	
			}				

			 x = x - (x mod 16) - (bbox_left - x);
			_x_speed = -(_x_speed)*bounce_amount_;
			bounce_count--;
			
			}



}else{
x += _x_speed;	
}

//VERTICLE TILE COLLISIONS
if (_y_speed > 0)  bbox_side = bbox_bottom+1; else bbox_side = bbox_top-1;
if (tilemap_get_at_pixel(tilemap,x,y+_y_speed) != 0)
{
	

	
	if (_y_speed > 0) {
		

		
		y = y - (y mod 16) + 15 - (bbox_bottom - y );
		_y_speed = -(_y_speed)*bounce_amount_;
		bounce_count--;
			var s = explosion(x,y+yoffset,0,180);
			if bounce_count > 0{
			s.green = true;	
			}
		}else{
		y = y - (y mod 16) - (bbox_top - y);
		_y_speed = -(_y_speed)*bounce_amount_;
		bounce_count--;
			var s = explosion(x,y-yoffset,180,360);
			if bounce_count > 0{
			s.green = true;	
			}
		}
}else{
y += _y_speed;
}

