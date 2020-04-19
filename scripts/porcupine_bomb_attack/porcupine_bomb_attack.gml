

if !instance_exists(o_player) exit;
if  global.control_enemy = id exit;
var _distance_to_player = point_distance(x,y, o_player.x, o_player.y);
if global.second_run{
	var dis = 226;
}else{
	var dis = 174;			
}

if _distance_to_player <dis and alarm[4] = -1{
	
		alarm[4] = global.warning_alarm*4;
		var ss = create_animation_effect(s_shock,x,y,1,false);
		ss.image_xscale = image_xscale;
		audio_ran(a_bomb_porcupine_high_pitch,1,1,1.3,1.3);
		z_speed_ = -4;
		bounce_amount_ = 1;
}