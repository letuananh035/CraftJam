
var spd_thresh_to_turn = .2;

//audio_group_set_gain(audiogroup_sfx,0,0)
//audio_group_set_gain(audiogroup_music,0,0)
var xx = x div 32;
var yy = y div 32;

xx *= 32;
yy *= 32;

xx += 16;
yy += 16;

var spd_cap = global.player_speed+.7;
var spd = speed_;

var bounce = bounce_amount_;//bounce_amount_/3;
var dis = 15 ;
var four_dir = get_facing(direction_);
if global.ghost_powers = false{
	if _x_speed > 0  bbox_side = bbox_right +1; else bbox_side = bbox_left;

	if (tilemap_get_at_pixel(tilemap,bbox_side+_x_speed,bbox_top) != 0) || (tilemap_get_at_pixel(tilemap,bbox_side+_x_speed, bbox_bottom) != 0) 
	{
		
	#region
		if abs(_y_speed) <= spd_thresh_to_turn {
		
//Check for a wall

if _x_speed > 0{
var bbox_hor = bbox_right;	
var four_dir_result = RIGHT;
}else{
if four_dir = 90 four_dir = LEFT;
four_dir_result = LEFT;

var bbox_hor = bbox_left;	
}
var sign_ = sign(_x_speed);
	
	var xx = x div 32;
	var yy = (bbox_top+6) div 32;	
	
	xx *= 32;
	yy *= 32;	
	if xx3 != xx or yy3 != yy{
		xx3 = xx;
		yy3 = yy;
		
		switch_bbox_flag = false;
	}	
	
		var xx = x div 32;
	var yy = bbox_bottom div 32;	
	
	xx *= 32;
	yy *= 32;	
	if xx2 != xx or yy2 != yy{
		check_x_flag = false;
	
		xx2 = xx;
		yy2 = yy;
		switch_bbox_flag = false;
		
	}

if check_x_flag = false or instance_exists(o_player){
	check_x_flag = true;

	var xx = x div 32;
	var yy = bbox_bottom div 32;	
	
	xx *= 32;
	yy *= 32;	

	var y_top = bbox_top div 32;
	y_top *= 32;

	xx += 16;
	yy += 16;
	y_top += 16;



	if tilemap_get_at_pixel(tilemap,xx+32*sign_,y_top+32) = 0{
	yy = y_top;
	

	}

	if switch_bbox_flag = false{
		
		//yy = y_top;
	
		
		switch_bbox_flag = true;
	}

	
var dis1 = point_distance(x,bbox_top,xx,yy-16);
var dis2 = point_distance(x,bbox_bottom,xx,yy+16);


if dis1 > dis2 {
	up = false;	

}else{		
	
	up = true;	
}



if _y_speed != 0 {
	if _y_speed > 0{
		up = false;	
	}else{
		up = true;
	}
}
#region
	/// _|	 _
	///		|
	///		|
	var disable_ver_checks = false;
	

	if up = false and tilemap_get_at_pixel(tilemap,xx,yy+32) != 0
				  and tilemap_get_at_pixel(tilemap,xx,yy-32)  = 0
				  and tilemap_get_at_pixel(tilemap,xx+32,yy-32) = 0 or
				  
	   up = false and tilemap_get_at_pixel(tilemap,xx+32*sign_,yy+32) != 0 
				  and tilemap_get_at_pixel(tilemap,xx-32*sign_,yy+32) = 0
	{

	up = true;
	}
	
	/*   _    W = WALLY
 		  |	
		 W|_
	*/

	if up = true and 
		tilemap_get_at_pixel(tilemap,xx+32,yy) != 0 and 
		tilemap_get_at_pixel(tilemap,xx,yy+64) != 0 and
		
		tilemap_get_at_pixel(tilemap,xx+32,yy+32) = 0 and 
		tilemap_get_at_pixel(tilemap,xx+32,yy-32) != 0 and
		tilemap_get_at_pixel(tilemap,xx,yy+32) = 0 and
		tilemap_get_at_pixel(tilemap,xx+32,yy+32) = 0
		
	{
		up = false;
		disable_ver_checks = true;
	}

	if up = true and tilemap_get_at_pixel(tilemap,xx+32*sign_,yy+32) = 0 and
	tilemap_get_at_pixel(tilemap,xx-32,yy) != 0 and
	tilemap_get_at_pixel(tilemap,xx-32,yy-32) != 0
	{
		
	up = false;
	}
	
	
	
	if up = true and tilemap_get_at_pixel(tilemap,xx,yy-32) != 0
				  and tilemap_get_at_pixel(tilemap,xx,yy+32)  = 0
				  and tilemap_get_at_pixel(tilemap,xx+32,yy+32) = 0 or
				  
	   up = true and tilemap_get_at_pixel(tilemap,xx+32,yy-32) != 0 
				  and tilemap_get_at_pixel(tilemap,xx-32,yy-32) = 0
	{

	up = false;
	}	
	
	

#endregion
	if !disable_ver_checks{
		if up = true and tilemap_get_at_pixel(tilemap,xx+32*sign_,yy-32) != 0{
			up = noone;	
		}

		if up = true and tilemap_get_at_pixel(tilemap,xx,yy-32) != 0{
			up = noone;	
		}
		if up = false and tilemap_get_at_pixel(tilemap,xx+32*sign_,y_top+32) != 0{
			up = noone;	
		}


		if up = false and tilemap_get_at_pixel(tilemap,xx,y_top+32) != 0{
			up = noone;	
		}
	}

}
//MOVE OUR DUDE!!!
if four_dir = four_dir_result and up = true { 
				y -= speed_;
				exit;
	}else if four_dir = four_dir_result and up = false {  
				y += speed_;
				exit;
	}
}
#endregion
		if (_x_speed > 0) {
			
			
			x = x - (x mod 16) + 16 - (bbox_right - x)-1;

			if _bounce {
			_x_speed = -(_x_speed)*bounce;
			} else {
				
				if max_speed_ > spd_cap {
					_x_speed = -(_x_speed)*bounce;	
				}else{
						if !global.aim_assist {
							
							if  _input_direction = 0 and _y_speed !=  0
								{
									_y_speed = lerp(_y_speed,0,.1);
								}
						}

					
					
					_x_speed = 0;
				}
			}
			
			}else{ 
				
				x = x - (x mod 16) - (bbox_left - x);
		
			if _bounce {
			_x_speed = -(_x_speed)*bounce;
			} else {
				
				if max_speed_ > global.player_speed+.7{
					_x_speed = -(_x_speed)*bounce;	
					
					
				}else{
				_x_speed = 0;

				if !global.aim_assist {
					if  _input_direction = 180 and _y_speed !=  0
						{
							_y_speed = lerp(_y_speed,0,.1);
						}
				}

				
				}
			}

	}

	}else{
	
	switch_bbox_flag = true;
	xx2 = -1;
	yy2 = -1;
	xx3 = -1;
	yy3 = -1;
	x += _x_speed;

	}

	if place_meeting(x, y+_y_speed, collision_object_) {
		if !place_meeting(x, y+sign(_y_speed), collision_object_) {
			y += sign(_y_speed);
		}
	
		if _bounce {
			_y_speed = -(_y_speed)*bounce;
		} else {
			if max_speed_ > global.player_speed+.7{
			_y_speed = -(_y_speed)*bounce;	
			}else{
			_y_speed = 0;

			_x_speed = lerp(_x_speed,0,.1);
			}
		}
	
	}


	//VERTICLE TILE COLLISIONS
	if (_y_speed > 0)  bbox_side = bbox_bottom +2; else bbox_side = bbox_top;
	if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+_y_speed) != 0) || (tilemap_get_at_pixel(tilemap,bbox_right, bbox_side+_y_speed) != 0)
	{
	//	move_intended_direction(_x_speed,_y_speed,10);

	#region 

//}
//Check for a wall
	if abs(_x_speed) <= spd_thresh_to_turn {

	if _y_speed > 0{	
	var bbox_ver = bbox_bottom+2;	
	var bbox_hor = bbox_bottom;	
	if four_dir = 135 four_dir = DOWN;
	var four_dir_result = DOWN;	

	}else{
	if four_dir = 45 four_dir = UP;
//	if four_dir = 112 four_dir = UP;
	four_dir_result = UP;
	var bbox_hor = bbox_top;		
	}
	var sign_ = sign(_y_speed)*-1;


	var xx = x div 32;
	var yy = y div 32;	
	

	if xx3 != xx or yy3 != yy{
		check_y_flag = false;
		
		xx3 = xx;
		yy3 = yy;
	}

	if check_y_flag = false or instance_exists(o_player){
		check_y_flag = true;

		var xx = bbox_right div 32;
		var yy = y div 32;
		var x_l = bbox_left div 32;
		
		xx *= 32;
		yy *= 32;
		x_l *= 32;
		
		x_l += 16;
		xx += 16;
		yy += 16;

	if tilemap_get_at_pixel(tilemap,x_l+32,yy-32*sign_) = 0{ 
	//tilemap_get_at_pixel(tilemap,x_l-32,yy-32*sign_) = 0{ 
	xx = x_l;
	}
	var dis1 = point_distance(x,y,xx-16,yy);
	var dis2 = point_distance(x,y,xx+16,yy);

	right = noone;
	if dis1 < dis2 {

		if tilemap_get_at_pixel(tilemap,xx-32,yy-32*sign_) = 0 and
		   tilemap_get_at_pixel(tilemap,xx-32,yy) = 0 
			
		{
			right = false;	
		}else if tilemap_get_at_pixel(tilemap,xx+32,yy-32*sign_) = 0 and
		   tilemap_get_at_pixel(tilemap,xx+32,yy) = 0 
			
		{
			right = true;
			
		}
		

	}else{	
		
		 if tilemap_get_at_pixel(tilemap,xx+32,yy-32*sign_) = 0 and
		   tilemap_get_at_pixel(tilemap,xx+32,yy) = 0 
			
		{
			right = true;
		}else if tilemap_get_at_pixel(tilemap,xx-32,yy-32*sign_) = 0 and
		   tilemap_get_at_pixel(tilemap,xx-32,yy) = 0 
			
		{
			right = false;	
		}

	}

	if _x_speed != 0 {
		if _x_speed > 0{
			//right = true;	
		}else{
			//right = false;
		}
	}
	

		if right != noone and tilemap_get_at_pixel(tilemap,xx-32,yy+32*sign_*-1) != 0
						and tilemap_get_at_pixel(tilemap,xx+32,yy+32*sign_*-1) != 0
		{
			right = noone;
			
		}

		if right = true and tilemap_get_at_pixel(tilemap,xx+32,yy) != 0 
		{
			right = noone;	
		}
	
		

		
		if right != noone and tilemap_get_at_pixel(tilemap,xx-32,yy) != 0 and
							tilemap_get_at_pixel(tilemap,xx+32,yy) != 0
		{
			right = noone;	
		}

	}
	
	//MOVE OUR DUDE!!!
	
	
		
	
	if four_dir = four_dir_result and right = false { 
					
					
					x -= speed_;
					
					exit;
		}else if four_dir = four_dir_result and right = true{  
					x += speed_;
					exit;
		}
	}


#endregion
	
		if (_y_speed > 0) {

			//x = x - (x % 32) mod returns remainder
			//snaps to a 32 to 32 grid
			y = y - (y mod 16) + 15 - (bbox_bottom - y );
			if _bounce {
			_y_speed = -(_y_speed)*bounce;
			} else {
			_y_speed = 0;
			if !global.aim_assist {
					if  _input_direction = 270 and _x_speed !=  0
						{
							_x_speed = lerp(_x_speed,0,.1);
							
						
						}
				}
			}
			}else{ 
			y = y - (y mod 16) - (bbox_top - y);
			if _bounce {
			_y_speed = -(_y_speed)*bounce;

			} else {
				if max_speed_ > global.player_speed+.7{
				_y_speed = -(_y_speed)*bounce;	

				}else{
				_y_speed = 0;
			if !global.aim_assist {
					
					if  _input_direction = 270 and _x_speed !=  0
						{
							_x_speed = lerp(_x_speed,0,.1);
						}
				}
			}
				}
			}
		

	
	}else{
	check_y_flag = false;
	xx4 = -1;
	yy4 = -1;
	
	xx5 = -1;
	yy5 = -1;
	y += _y_speed;
	}

}else{
//we have ghost powers and go through walls
x += _x_speed;
y += _y_speed;	
}
