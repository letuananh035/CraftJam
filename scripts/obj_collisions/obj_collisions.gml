if place_meeting(x+_x_speed, y, collision_object_) {
	if !place_meeting(x+sign(_x_speed), y, collision_object_) {
		x += sign(_x_speed);
	}
	
	if _bounce {
		_x_speed = -(_x_speed)*bounce_amount_;
	} else {
		_x_speed = 0;
	}
	
}

if place_meeting(x, y+_y_speed, collision_object_) {
	if !place_meeting(x, y+sign(_y_speed), collision_object_) {
		y += sign(_y_speed);
	}
	
	if _bounce {
		_y_speed = -(_y_speed)*bounce_amount_;
	} else {
		_y_speed = 0;
	}
}