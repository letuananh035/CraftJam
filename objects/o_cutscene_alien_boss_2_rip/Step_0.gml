/// @description 

if  fade_black = true exit;
	fade_to_next_room_timer = SEC*1;
	persistent = true;
	global.beat_count = 0;
	turn_off_disco_lights();
	if o_game.space = true{
		state_manual_move = true;	
	}
if show_option = true {
	switch current_choice{
		case 0: exit;
		case -1: if o_game.space{ 
			var s = create(0,0,o_fade_out);
			s.approach_amount = .001;
			chose_comfort = true; state++; current_choice = false;  
			y_ui_offset_target  = 0;  current_choice = 0; state_manual_move = true; 
			show_option = false; current_text = ""; element_flag = false; }  exit; //comfort
		case 1:	if o_game.space{ fade_black = true; }  exit; //leave
	}
	exit;	
}

	instance_destroy(o_player_expressions);
	instance_destroy(obj_lighting_expressions_controller);
if chose_comfort{
	with o_player{
		sprite_index = hug;	
	}
}

with o_alien{
	if other.chose_comfort{
	x = -312;	
	}else{
	x = lerp(x,312,.2);
	}
	y = 283;
}

o_player.x = 320;
o_player.y = 257;
o_player.image_speed = .3;
o_player.image_xscale = 1;

if state_manual_move = true and end_cutscene = false and !fade_black  and !instance_exists(o_fade_out)  {
	state_manual_move = false;
	text_timer = 0;
	element_flag = false;
	ui_timer = 0;
	previous_text = current_text;
	if !chose_comfort {
	y_ui_offset = 10
	}
	state++;
	hit_sound = false;
	white_flash = false;
	shake = false;
	if state = 28{
	//bye timer
	dont_show_text_timer = SEC*.4;
	}
}
	switch state {
		case 0:  current_text = "i'm_sorry"; black_foreground = false;  o_player.state = player.cutscene; alien_ui_sprite = s_ui_argh; break;
		case 1: current_text = "im_just_stalling\nbut_it's_no_use"; black_foreground = false; break;
		case 2: current_text = "you've_reached_the_end";  break;
		case 3: current_text = "...it's_hard_for_me\nto_say_[c_yellow]goodbye[]..."; break;
		case 4: current_text = "...becase_this\nis_the_[c_gum]final[]_one..."; break;
		case 5: current_text = "...that's_why_it's\n_so_hard..."; break;
		case 6: current_text = "...i_wish_it_was\nthe_type_of_[c_yellow]goodbye[]..."; break;	
		case 7:	 current_text =  "where_we_go_back_home";break;
		case 8:	 current_text = "and_see_each_other\nthe_next_day" ;break;
		case 9: current_text = "or_next_week"; break;
		case 10: current_text = "or_next_month"; break;
		case 11: current_text = "...";break;
		case 12: current_text = "or_even_the_next_year"; break;
		case 13: current_text = "i'd_do_anything\nfor_that_[c_yellow]goodbye[]";		   ;break;
		case 14: current_text = "and_[c_yellow]see_you_again[]\ninstead_of_[c_gum]this[]_one";					   ;break;
		case 15: current_text = "where_we_go_our\nseperate_ways...";					   ;break;
		case 16: current_text = "...";					   ;break;
		case 17: current_text = "[c_gum]forever";	alien_ui_sprite = s_ui_cry;		   ;break;
		case 18: current_text = "...";			;break;
		case 19: current_text = "thank_you"; break;	
		case 20: current_text = "i_hope_you_had\na_wonderful_time_here"; break;
		case 21: current_text = "there_is_a_portal_to\nearth_behind_you";break;
		case 22: current_text = "..."; break;
		case 23: current_text = "take_care";   break;
		case 24: current_text = "..."; break;
		case 25: current_text = "..."; break;
		case 26: current_text = "..."; break; 
		case 27: current_text = "..."; break; 
		case 28: current_text = "[c_gum]bye"; break; 
		case 29: current_text = "COMFORT    LEAVE"; dont_show_text_timer = SEC*.9; show_option = true; element_flag = false; alien_ui_sprite = noone;  break;

		case 30: current_text = ""; break;
		case 31: current_text = "[fa_center]A GAME BY\n[c_gum]OSCAR [c_aqua]@BOONDEV [c_gum]GONZALEZ";break;
		case 32: current_text = "[fa_center]TECHNICAL PROGRAMMING\n[c_aqua]@SOVESDEV"; break;
		case 33: current_text = "[fa_center]CHARACTER ART\n[c_aqua]@WIGGLYGULL ";	break;
		case 34: current_text = "[fa_center]ENVIORMENTAL ART\n[c_aqua]@SOFTCIRCUITRY";break;
		case 35: current_text = "[fa_center]MUSIC / SOUND EFFECTS\n[c_aqua]@FAILPOSITIV " ;break;
		case 36: current_text = "[fa_center]ADDITIONAL ART\n[c_aqua]@THIMZGAMER";break;
		case 37: current_text = "[fa_center]DIRECTING/DESIGN/PROGRAMMING\n[c_aqua]@BOONDEV[]";break;
		
		case 38: current_text = "THANK YOU FOR PLAYING";break;
		case 39: current_text = "[c_gum]GOODBYE";break;
		
		
		//case 10: show_option = true; break;
		default: current_text = "";  fade_black = true;  break;
	
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
		case s_ui_argh:
		case s_ui_cry:
		speak_array = [a_hurt]
		
		break;
		case s_ui_alien: speak_array = [a_talk_mad] break;
		case s_fail_positive_scream: speak_array = [a_talk_high_pitch] break;							
		case noone: speak_array = [a_silence]; break;
	}
	
	if state = 17{
		speak_array = [a_hurt];		 	
	}
	scribble_autotype_set_sound(element, speak_array, 30);
}