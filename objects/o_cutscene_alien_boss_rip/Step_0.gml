/// @description 

fade_to_next_room_timer = SEC*1;
persistent = true;
global.beat_count = 0;
turn_off_disco_lights();
if o_game.space = true{
	state_manual_move = true;	
}



if  state_manual_move = true and end_cutscene = false and !fade_black  and !instance_exists(o_fade_out) {
	state_manual_move = false;
	text_timer = 0;
	element_flag = false;
	ui_timer = 0;
	previous_text = current_text;
	y_ui_offset = 10
	state++;
	
	hit_sound = false;
	white_flash = false;
	shake = false;
}

	

if global.skip_boss_cutscene = true{
	switch state {
		case 0: current_text = "...";   o_player.state = player.cutscene; alien_ui_sprite = s_ui_argh; break;		
		default: end_cutscene = true; o_player.state = player.move; if !audio_is_playing(a_boss_battle) { audio_music_play(a_boss_battle); } break;
	}

}else{
		switch state {
	
		case 0:  current_text = "HAHAHAHA, THAT WAS AWESOME!"; black_foreground = false;  o_player.state = player.cutscene; alien_ui_sprite = s_ui_happy; break;
		case 1: current_text = "YOU REALLY GOT ME THERE";alien_ui_sprite = s_ui_happy; black_foreground = false; break;
		case 2: current_text = "OH WAIT...I FORGOT\nI'M THE ALIEN VILLAIN";  alien_ui_sprite = s_ui_derp; break;
		case 3: current_text = "ARGGH, OH NO YOU GOT ME";					 alien_ui_sprite = s_fail_positive_scream; break;
		case 4: current_text = "THE EVIL DREADED ALIEN\nTHAT KIDNAPPED YOU"; alien_ui_sprite = s_fail_positive_scream; break;
		case 5: current_text = "I'M VANQUISHED AND NOW\nYOU'VE SUCCEEDED, CHAMPION";		 alien_ui_sprite = s_fail_positive_scream; break;
		case 6: current_text = "YOU'VE COMPLETED\nYOUR HEROES JOURNEY";			 alien_ui_sprite = s_fail_positive_scream; break;
		case 7: current_text = "NOW YOU CAN GO BACK HOME\nFROM THIS PLANET";	 alien_ui_sprite = s_fail_positive_scream; break;
		case 8: current_text = "AND LIVE THE REST OF\nYOUR LIFE HAPPY";			 alien_ui_sprite = s_fail_positive_scream; break;
		case 9: current_text = "NEVER TO COME BACK...";						 alien_ui_sprite = s_fail_positive_scream; break;
		case 10: current_text = "HERE...";									 alien_ui_sprite = s_fail_positive_scream; break;
		case 11: current_text = "...again...";								alien_ui_sprite = s_ui_derp_neutral; break;
		case 12: current_text = "...";										alien_ui_sprite = s_ui_derp; break;
		case 13: current_text = "...";	 alien_ui_sprite = s_ui_argh;			break;
		case 14: current_text = "...";		break;
		case 15: current_text = "...pls_dont_go....";					 break;
		case 16: current_text = "its_lonely_here ";						 break;
		case 17: current_text = "...pls...";							 break;
		case 18: current_text = "it's_horrible...";							 break;
		case 19: current_text = "isolation";						break;
		case 20: current_text = "not_having_anyone\nto_hang_out_with"; break;
		case 21: current_text = "....or_to_talk to...";break;
		case 22: current_text = "i_know_you_want\nto_get_back_home";	break; 
		case 23: current_text = "but_im_not_ready";	break;
		case 24: current_text = "for_this_game_to_be_over";				 break;
		case 25: current_text = ".....";				 break;
		case 26: current_text = "AAAAAAAAAAAAA"; global.hide_ui = true; hit_sound = true;	black_foreground = true;	alien_ui_sprite = s_ui_alien; break;
		case 27: current_text = "I CANT LET THAT HAPPEN";								break;
		case 28: current_text = "I MUST MAKE CONTENT";								break;
		case 29: current_text = "[shake]NOW!";													break;
		case 30: current_text = "CAN'T FALL DOWN";										break;
		case 31: current_text = "MUST KEEP KEEP DANCING,\nMUST KEEP SINGING";			break;
		case 32: current_text = "AAAAAAAAAAAA";
		default: fade_black = true;  break;
	
	}
}
//end_cutscene = true;
if element_flag = false{
	element_flag = true;
	if shake = true{
		screenshake(8,1);	
	}
	if hit_sound{
			white_flash = true; 
		audio_play(a_explosion,0,0,0);
	}	
	element = scribble_draw(W/2+triangle_offset-40+current_text_offset, H -25, current_text);
	scribble_autotype_fade_in(element, SCRIBBLE_AUTOTYPE_PER_CHARACTER, .8, 0);
	var speak_array = [a_speak1,a_speak2,a_speak3,a_speak4];
	switch alien_ui_sprite{
		case s_ui_argh: if state > 14 speak_array = [a_hurt] break;
		case s_ui_alien: speak_array = [a_talk_mad] break;
		case s_fail_positive_scream: speak_array = [a_talk_high_pitch] break;							
		case noone: speak_array = [a_silence]; break;
	}
	
	scribble_autotype_set_sound(element, speak_array, 30);
}