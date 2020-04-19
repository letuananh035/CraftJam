
var fire_ = instance_create_layer(x+xoff,y+yoff,I,o_fire_ball_nut);
	fire_.creator = id;
	if o_red_dragon.hp_percent <= o_red_dragon.hurt{
	fire_.green = true;	
	}
	

	fire_.target = argument0;
	//fire_._direction_to_player = argument0;	
	fire_.state = fire.levitating;
	fire_.image_angle = argument0;
	fire_.alarm[0] = SEC;
	if hp_percent <= hurt{

		
		
	fire_.accel_ = 3;
	fire_.max_speed_ = 3;
	if o_game.loop > 0{
	fire_.accel_ = 6;
	fire_.max_speed_ = 6;		
	}

	

	fire_.bounce_count = global.green_dragons+1;
	}else{	
	fire_.bounce_count = 0;	
	if global.dragon_complete = true{
	fire_.accel_ = 6;
	fire_.max_speed_ = 6;
	}else{
	fire_.accel_ = 4.5;
	fire_.max_speed_ = 4.5;	
	}

	if global.second_run{
	fire_.accel_ = 6+o_game.loop;
	fire_.max_speed_ = 6+o_game.loop;	
	}
	}
	fire_.accel_ *= fire_ball_speed_mod;
	fire_.max_speed_ *= fire_ball_speed_mod;
	
	fire_.point_player = true;
	fire_.point_a = o_red_dragon;
	

	return fire_;