/// @description 

global.combo	 = 0;
global.combo_max = 0;
global.current_score = 1;
show_y_ui_no_lerp = true;
star_y_lerp = 0;
global.star_count = 3;
global.star_percent = 1;
global.star_lose_amount = .15;
global.star_gain_amount = 1;
star_percent_lerp = 1;

global.beat_mod = 1;
global.beat_count = 0;
global.star_power_attack = 0;


if !global.boss_complete{
	global.boss_hp = 3;
	
	if global.killed_by_boss > 3{
		global.boss_hp = 2;	
	}
	}else{
	global.boss_hp = 6;	
	
	if global.killed_by_boss > 3{
		global.boss_hp = 4;	
	}
}

allow_teleport = false;
ore[0 , ORE_COUNT] = 0;
