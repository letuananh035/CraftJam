/// @description 

if o_game.space{  
	state_manual_move = true;
}

if  state_manual_move = true {
	state_manual_move = false;
	text_timer = 0;
	element_flag = false;
	ui_timer = 0;
	previous_text = current_text;
	y_ui_offset = 10
	state++;
}


switch state {
	case 0: current_text = "HEY! IT'S THE\n[wave][rainbow]SECRET SAX"; shake =  false; alien_ui_sprite = s_ui_happy;   o_player.state = player.cutscene; break;
	case 1: current_text = "I HID IT HERE"; alien_ui_sprite = s_ui_neutral; break;	
	case 2: current_text = "IT DOESN'T REALLY DO ANYTHING"; alien_ui_sprite = s_ui_hurt; break;
	case 3: current_text = "BESIDES PLAY SWEET TUNES!";  alien_ui_sprite = s_ui_derp; break;
	case 4: current_text = "I JUST FELT THAT\nIF YOU CAME OVER HERE"; break;
	case 5: current_text = "AND DIDN'T SEE A\nREWARD FOR YOUR EFFORT"; break;
	case 6: current_text = "YOU'D FEEL BAD AND LEAVE"; alien_ui_sprite = s_ui_hurt; break;
	case 7: current_text = "BUT YOUR STIL HERE"; alien_ui_sprite = s_ui_neutral; break;
	case 8: current_text = "SO I GUESS YOU LIKED THE SAX"; alien_ui_sprite = s_ui_neutral; break;	
	case 9: current_text = "GOOD JOB SAX :D"; alien_ui_sprite = s_ui_happy; break;	
	case 10: current_text = "YOU'RE AMAZING!"; alien_ui_sprite = s_ui_happy; break;	
	case 11: current_text = "THANKS FOR MAKING OUR FRIEND\nFEEL REWARDED!"; alien_ui_sprite = s_ui_happy; break;	
	case 12: current_text = "[shake][rainbow](HAPPY SAXOPHONE NOISES)[]"; shake = true; alien_ui_sprite = s_ui_saxaphone; break;	
	
		
	default: end_cutscene = true; o_player.state = player.move; change_music(music.boink) break;
}

//end_cutscene = true;

if element_flag = false{
	element_flag = true;
	element = scribble_draw(W/2+triangle_offset-40+current_text_offset, H -25, current_text);
	scribble_autotype_fade_in(element, SCRIBBLE_AUTOTYPE_PER_CHARACTER, .8, 0);
	scribble_autotype_set_sound(element, [a_speak1,a_speak2,a_speak3,a_speak4], 30);
}