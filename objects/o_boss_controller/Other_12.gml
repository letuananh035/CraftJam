/// @description bullets fire_tile


	bullet_firing_speed--;	
	
	
if bullet_firing_speed < 0 {
	var time = SEC;
	switch global.boss_hp{
		
		case 5: time = SEC*.9;
		
		case 4: time = SEC*.8;
		
		case 3: time = SEC*.6;
		
		case 2: time = SEC*.5;
		
		case 1: time = SEC*.4;
		
	}
	bullet_firing_speed = SEC*.4;
	
	
		var xx = left_tile - 3 - irandom(2);
		var yy = top_tile + irandom(3);
		if !instance_position(xx*32,yy*32,o_fail_bullets){
			var s = create(xx*32,yy*32,o_fail_bullets);	
				s.direction_ = 0;
			}
}