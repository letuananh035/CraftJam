/*

if other.made_from_boomerang  and instance_exists(o_boomerang){
	
	if global.boomerang_bounce {

		with o_boomerang{
		if state = ang.back exit; 
		boomerang_bouncy();
		xscale = .4;
		yscale = 1.6;


		_x_speed = -(_y_speed)*global.boomerang_bounce_amount/2;
		_x_speed = -(_y_speed)*global.boomerang_bounce_amount/2;

		speed_ = point_distance(0, 0, _x_speed, _y_speed);
		direction_ = point_direction(0, 0, _x_speed, _y_speed);
		
		}
	}
}