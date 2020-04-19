
if !instance_exists(o_target) exit;
if instance_exists(o_death_background) exit;
if !instance_exists(o_player) exit;

var xx = o_player.x;
var yy = o_player.y-6+o_player.z_;

	var s = create_animation_effect(s_large_bullet,xx,o_player.y-10+o_player.z_,99,false);
	s.image_blend = c_fuchsia;
	
	
	//change_stamina(-global.bullet_cost);
	//change_stamina_p1(global.bullet_cost);
	with o_stamina_meter_left_eye{
	alarm[1] = SEC*.3;	
	}
	alarm[0] = SEC*.1;
	
	if instance_exists(o_stamina_meter){
		o_stamina_meter.timer2 = 0;
	}
	alarm[2] = SEC*15;
	//change_stamina_p1(-global.bullet_cost);
	//SQUISHY
	timer = 0;
	alarm[0] = SEC*.2;
	color = c_fuchsia;
	global.spiral_diagonal_angle += 2;
	repeat(global.p1_bullet_count+1){
	
	for (var i = 0; i <= 3; i++){
		
		var offset = 5;
		var random_spread = random_range(-global.p1_bullet_random,global.p1_bullet_random);


		var dir = i*90;		
		
		dir += random_spread;
		
		#region aim assist mode
			with o_enemy_parent{
				var dir_ = point_direction(o_stamina_meter.x,o_stamina_meter.y,o_target.x,o_target.y);
				var dir2 = point_direction(o_stamina_meter.x,o_stamina_meter.y,x, y);	
				var diff = angle_difference(dir_,dir2);
	
	
				if abs(diff) < global.aim_auto_lock_amount  and global.p1_bullet_count = 0 and 
				object_index = o_stamina_meter { //NEED TO MAKE SURE WE ARE THE STAMINA BUDDY
				dir_ = point_direction(o_player.x,o_player.y,x,y);
				
	
		q.target = dir_;	
	}
}
		#endregion
		
		
		dir /= global.direction_clamp;
		dir = round(dir);
		dir *= global.direction_clamp;
		dir += global.spiral_diagonal_angle
		if dir = 90 or dir = 270{
			
			with o_game{
				y_elastic_timer		= 0;
				y_hud_begin			= -2;
				y_hud_end			= 2;
				y_hud_time			= SEC*.5;
			}
			
		}else{
			with o_game{
				x_elastic_timer		= 0;
				x_hud_begin			= -2;
				x_hud_end			= 2;
				x_hud_time			= SEC*.5;
			}
			
		}
		
		
		var dirx = lengthdir_x(o_player.speed_,o_player.direction_);
		var diry = lengthdir_y(o_player.speed_,o_player.direction_);
		var dir2 = point_direction(o_player.x,o_player.y,o_player.x+dirx,o_player.y+diry);
		var s= bullet(xx,yy,dir);
		
		s.strafe_amount = o_player.speed_*.8;
		s.strafe_direction  = dir2;
		s.another = global.p1_yaka+wep[socket[slot],CHAINING];
		s.scatter = global.p1_scatter+global.p1_scatter_add;
		
		//s.made_from_shotgun = true;
		}
	}
	


	var dire = point_direction(o_target.x,o_target.y,o_player.x,o_player.y);
	var shake = 5*global.screenshake_percent*global.p1_screenshake_mod;
	var x_ = lengthdir_x(shake*global.screenshake_percent,dire);
	var y_ = lengthdir_y(shake*global.screenshake_percent,dire);

	o_camera.x += x_;
	o_camera.y += y_;