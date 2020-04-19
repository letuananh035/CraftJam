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
	y_ui_offset = 10;
	state++;
}

switch state {
	case 0: current_text = "HOLY COW! THAT WAS GREAT!";  o_player.state = player.cutscene; break;
	case 1:	current_text = "BTW IF YOU EVER MESS UP"; break;//EVERY TIME YOU [c_yellow]DO AN ACTION[]\nYOU [c_gum]LOSE[] [rainbow][wave]COOL POINTS
	case 2: current_text = "JUST PRESS [s_q_button] TO RESTART"; break;
	case 3: current_text = "LETS GO :D"; alien_ui_sprite = s_ui_happy break;
	default: end_cutscene = true; o_player.state = player.move; break;
}


//end_cutscene = true;


if element_flag = false{
	element_flag = true;
	element = scribble_draw(W/2+triangle_offset-40+current_text_offset, H -25, current_text);
	scribble_autotype_fade_in(element, SCRIBBLE_AUTOTYPE_PER_CHARACTER, .8, 0);
	scribble_autotype_set_sound(element, [a_speak1,a_speak2,a_speak3,a_speak4], 30);
}