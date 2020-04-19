
if global.control_enemy = id exit;



if global.player = 2 and instance_exists(o_game) and o_game.loop = 0 exit;
if instance_exists(o_mysterious_stranger) exit;
if global.enemies_in_dungeon = 1 or global.enemies_are_crazy = true{
	if  health_ > 0{
	alarm[3] = global.warning_alarm/4;
	var ss = create_animation_effect(s_shock,x,y,1,false);
	ss.image_xscale = image_xscale;
	}
	attack_flag = true;
	state = porcupine.attack;

//	if green = false{
//	sprite_index = s_porcupine_attack_lvl2;
//	}else{
//	sprite_index = s_porcupine_attack_green_lvl2;		
//	}
	image_index = 0;
}else if instance_number(o_quill) > quill_amount{
	alarm[2] = random_range(SEC*2.5,SEC*3.8);
}
if !instance_exists(o_player) exit;
if instance_exists(o_dialog_blank) exit;
if alarm[2] != -1 exit;

if alarm[5] != -1 exit;


var _distance_to_player = point_distance(x,y, o_player.x, o_player.y);

if health_ = max_health_ and hard = false{
var dis = 1200;
}else{
hard = true;
dis = 1200;
}




if _distance_to_player <dis and instance_number(o_quill) < quill_amount{
	
	if  health_ > 0{
	audio_effect(a_porcupine_scream,0,4);
	alarm[3] = warning_time;
	var ss = create_animation_effect(s_shock,x+10*image_xscale,y-14,.7,false);
	ss.image_xscale = image_xscale;
	}
	attack_flag = true;
	state = porcupine.attack;

	image_index = 0;
}else{
	
	alarm[2] = random_range(SEC*.4,SEC*.9);
}