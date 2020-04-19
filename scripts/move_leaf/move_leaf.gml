with o_bush_leaf{
	var dis = point_distance(x,y,other.x,other.y);
	if dis  < 20{
		if z_ = 0{
			z_ = -.01;	
		}
		var s = other.speed_;
		s = clamp(s,0,3);
		z_speed_ = -s*.05;		
		speed = (s*1.5)/dis;
		direction = other.direction_;
	}
}