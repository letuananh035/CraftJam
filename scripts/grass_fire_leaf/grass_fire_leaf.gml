with o_bush_leaf{
	var dis = point_distance(x,y,other.x,other.y);
		if dis < 13{
		if burn = false{
			burn = true;
			sprite_index = s_grass_leaf_burn;
			image_index = 0;
			image_speed = .5;
		}
		}
	if dis  < 45 and z_ > -50{
		if z_ = 0{
		z_ = -.01;	
		}
		z_speed_ = -random_range(.2,.5);		
		speed = dis/200;
		direction = point_direction(other.x,other.y,x,y);
	}
}