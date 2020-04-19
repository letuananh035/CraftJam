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
	
	if state = 1 {
		change_music(music.boink);	 
	}
}

switch state {
	case 0: current_text = "CONGRATS YOU ARE DOING GREAT"; alien_ui_sprite = s_ui_happy;   o_player.state = player.cutscene; break;
	case 1:	current_text = "LET'S BRING UP THE HEAT";  alien_ui_sprite = s_ui_neutral;  break;
	case 2: current_text = "I'LL BE SHOOTING [s_fail_heart,1,0] AT YOU"; alien_ui_sprite = s_ui_neutral; break;
	case 3: current_text = "AVOID STANDING IN THE\nSAME PLACE AS [s_fail_heart,1,0]"; break;
	case 4: current_text = "BUT YOU CAN [rainbow]WALK THROUGH[] [s_fail_heart,1,0]\nIF YOU [c_gum]MOVE ON THE BEAT[]"; break;
	case 5: current_text = "JUST KEEP MOVING ON THE BEAT"; alien_ui_sprite = s_ui_neutral; break;
	case 6: current_text = "AND YOU'LL BE FINE"; alien_ui_sprite = s_ui_happy; break;
	default: end_cutscene = true; o_player.state = player.move; break;
}

//end_cutscene = true;

if element_flag = false{
	element_flag = true;
	element = scribble_draw(W/2+triangle_offset-40+current_text_offset, H -25, current_text);
	scribble_autotype_fade_in(element, SCRIBBLE_AUTOTYPE_PER_CHARACTER, .8, 0);
	scribble_autotype_set_sound(element, [a_speak1,a_speak2,a_speak3,a_speak4], 30);
}