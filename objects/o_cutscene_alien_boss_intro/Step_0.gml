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


if global.skip_boss_cutscene = true{
		switch state {
		case 0: current_text = "YOU CAN DO IT!";  audio_music_stop(); o_player.state = player.cutscene; alien_ui_sprite = s_ui_neutral; break;
		default: end_cutscene = true; o_player.state = player.move; change_music(music.jamming) break;
	}
}else{

	switch state {
		case 0: current_text = "HOW ARE YOU FEELING BTW"; audio_music_stop();  o_player.state = player.cutscene; break;
		case 1:	current_text = "TBH IT'S GETTING KINDA\nBORING AND STUFF";  alien_ui_sprite = s_ui_neutral; break;
		case 2: current_text = "I FIGURED WE COULD\nTAKE A BREAK"; break;
		case 3: current_text = "WHAT BETTER WAY \nTHAN WITH A BOSS BATTLE";  break;
		case 4: current_text = "BUT THERE ARE NO\nBAD GUYS HERE..."; alien_ui_sprite = s_ui_neutral; break;
		case 5: current_text = "it's just...me...here"; alien_ui_sprite = s_ui_derp; break;
		case 6:	current_text = "BUT DO NOT WORRY THOUGH"; alien_ui_sprite = s_ui_neutral;  break;
		case 7: current_text = "I WILL DO MY BEST";	 break;
		case 8: current_text = "TO GIVE YOU THE\nBEST BOSS FIGHT";   break;
		case 9: current_text = "YOU'VE EVER HAD"; alien_ui_sprite = s_ui_happy;  break;
		case 10: current_text = ":)";  alien_ui_sprite = s_ui_happy;  break;
		case 11: current_text = "AND NOW FOR MY COOL BOSS LINE";  alien_ui_sprite = s_ui_neutral;  break;
		case 12: current_text = "PREPARE FOR YOUR DESTRUCTION";  alien_ui_sprite = s_ui_alien_bright_eyes;  break;
		default: end_cutscene = true; o_player.state = player.move; change_music(music.jamming); global.skip_boss_cutscene = true break;
	}
}

if element_flag = false{
	element_flag = true;
	element = scribble_draw(W/2+triangle_offset-40+current_text_offset, H -25, current_text);
	scribble_autotype_fade_in(element, SCRIBBLE_AUTOTYPE_PER_CHARACTER, .8, 0);
	scribble_autotype_set_sound(element, [a_speak1,a_speak2,a_speak3,a_speak4], 30);
}