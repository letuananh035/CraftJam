/// @description lazer state


if global.boss_hp > 3 exit;

lazer_state[0] = get_lazer_state.warning; 
lazer_state[1] = get_lazer_state.warning; 
lazer_state[2] = get_lazer_state.warning; 
lazer_state[3] = get_lazer_state.fire; 

lazer_state[4] = get_lazer_state.rest; 
lazer_state[5] = get_lazer_state.rest; 
lazer_state[6] = get_lazer_state.rest; 
lazer_state[7] = get_lazer_state.rest; 

show_debug_message(current_lazer_state)
switch lazer_state[current_lazer_state]{
	case get_lazer_state.rest: 
	lazer_warning = false;
	lazer_fire = false;
	
	break;
	
	case get_lazer_state.warning:
	lazer_warning = true;
	lazer_fire = false;	
	if current_lazer_state = 0{
	timer = 0;
	lazer[0] = o_player.y div 32;
	global.darkness_alpha = .8;
	audio_play(a_laser_warn,0,0,0);
	}
	break;
	
	case get_lazer_state.fire:
	timer = 0;
	lazer_warning = false;
	lazer_fire = true;
	audio_play(a_laser_bwah,0,0,0);
	with o_lighting_system{
	global.darkness_alpha = .8;
		light_intense_amount = 100;
		
	}
	break;
	
}
current_lazer_state += 1;
if current_lazer_state > 7 current_lazer_state = 0;