///@arg four_way_bomb_enable
///@arg wall_destroy
var fire_bomb = argument0;
var destroy_wall = argument1;
if !instance_exists(o_target) exit;
if instance_exists(o_death_background) exit;
if !instance_exists(o_player) exit;

var dire = point_direction(o_target.x,o_target.y,o_player.x,o_player.y);
dir = dire;
		if global.aim_assist{
			var lenx = gamepad_axis_value(o_input.gp_id,gp_axisrh);
			var leny = gamepad_axis_value(o_input.gp_id,gp_axisrv);
			var dir = point_direction(0, 0, lenx, leny);
			
		}
var shake = 5*global.screenshake_percent*global.p1_screenshake_mod;
var x_ = lengthdir_x(shake*global.screenshake_percent,dire);
var y_ = lengthdir_y(shake*global.screenshake_percent,dire);

o_camera.x += x_;
o_camera.y += y_;

var yoff = -6;
if !global.aim_assist and instance_exists(o_target) and o_target.y > o_player.y or global.aim_assist and dir > 180{
	yoff = 6;	
}

var xx = o_player.x;
var yy = o_player.y+yoff+o_player.z_;


	var s = create_animation_effect(s_large_bullet,xx,yy,99,false);
	s.image_blend = c_fuchsia;
	
	audio_effect(a_sizzle,0,9);
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
//var near = instance_nearest(x,y,o_enemy_parent);
//var dir = point_direction(x,y,near.x,near.y);

	if !global.aim_assist{
	var dir = point_direction(xx,yy,mouse_x,mouse_y);
	}else{
	var dir = point_direction(xx,yy,o_target.x,o_target.y);		
	}
	

	
	var amount = 1;
	
	if chance(global.bomb_crit_more_bombs_mod){
		amount = irandom_range(2,4);
		with o_player { 
			var a = create(x,y,o_miss_text);
			a.text = "LUCKY";
			a.color = make_color_rgb(114,229,75);
			a.target = o_player;
			a.alarm[0] = SEC*5;
			create_animation_effect(s_explosion_halfcircle_rainbow,o_player.x,o_player.y+10,2,false);

		}
	}
	
	repeat(amount){
	
		var offset = 5;
		var random_x = random_range(-global.p1_bullet_random,global.p1_bullet_random);
		var random_y = random_range(-global.p1_bullet_random,global.p1_bullet_random);
				
		if !global.aim_assist{
		var dir = point_direction(xx,yy,mouse_x+random_x,mouse_y+random_y);
		}else{
		 dir = point_direction(xx,yy,o_target.x+random_x,o_target.y+random_y);		
		}
		
		if !global.aim_assist{
		var dir = point_direction(xx,yy,mouse_x+random_x,mouse_y+random_y);
		}else{
		var dir = point_direction(xx,yy,o_target.x+random_x,o_target.y+random_y);		
		}
		
		#region aim assist mode
			with o_enemy_parent{
				var dir_ = point_direction(o_stamina_meter.x,o_stamina_meter.y,o_target.x,o_target.y);
				var dir2 = point_direction(o_stamina_meter.x,o_stamina_meter.y,x, y);	
				var diff = angle_difference(dir_,dir2);
	
	
				if abs(diff) < global.aim_auto_lock_amount  and global.p1_bullet_count = 0 and 
				object_index = o_stamina_meter { //NEED TO MAKE SURE WE ARE THE STAMINA BUDDY
				dir_ = point_direction(o_player.x,o_player.y,x,y);
				var aa = 3;
	
		q.target = dir_;	
	}
}
		#endregion
		

		global.p1_bomb_fuse_time = SEC*2;
		var s = create(xx,yy,o_bomb_throwable)
		s.bomb_destroy_tile = destroy_wall;
		
		if destroy_wall{
		s.sprite_index = s_bomb_eyes;	
		}
		
			if global.aim_assist{
	
			var lenx = gamepad_axis_value(o_input.gp_id,gp_axisrh);
			var leny = gamepad_axis_value(o_input.gp_id,gp_axisrv);
			var dir = point_direction(0, 0, lenx, leny);
		}
		
			with s{
				
			if fire_bomb{	
			var n = create(xx,yy,o_bomb_cross_helper);
			n.creator = s;
			cross_fire = true;
			}
			deflect = true;
			hit_flag = false;
		
			bomb_direction = dir;
			direction_ = dir;
			max_speed = 4 * global.p1_speed_mod;
			accel = 4 * global.p1_speed_mod;
			friction_ = 10;
		
			alarm[0] = global.p1_bomb_fuse_time;//FUSE BEFORE EXPLODING
			hit_flag = true;
			creator = o_player;
			sprite_creator = s_player_run_down;
			}
		
			
	}

