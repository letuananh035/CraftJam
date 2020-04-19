/// @description 




if bullet_timer <0 {
	bullet_timer = random_range(SEC*.5,SEC*.5);
	fire_direction = image_angle;
	for (var i = 0; i < 7; i++){
		if instance_position(x-32*i,y,o_fail_bullets){
			
		}
		
	}
	

		
	
	var  s = create(x,y,o_fail_bullets);
	s.direction_ = 180;	
	create_flag = false;	
}