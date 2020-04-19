/// @description 

persistent = true;


if  state_manual_move = true{
	state_manual_move = false;
	text_timer = 0;
	element_flag = false;
	ui_timer = 0;
	previous_text = current_text;
	y_ui_offset = 10
	state++;
}

switch state {
	case 0: 
	
			if global.star_count = 3{
				current_text = "YOU ARE SO GOOD!";
				alien_ui_sprite = s_ui_happy;
			}else{
				current_text = "YOU CAN DO IT";
				alien_ui_sprite = s_ui_neutral;
			}
	
	
	break;
	default: end_cutscene = true; break;
}



if element_flag = false{
	element_flag = true;
	element = scribble_draw(W/2+triangle_offset-40+current_text_offset, H -25, current_text);
	scribble_autotype_fade_in(element, SCRIBBLE_AUTOTYPE_PER_CHARACTER, 1, 0);
	scribble_autotype_set_sound(element, [a_speak1,a_speak2,a_speak3,a_speak4], 30);
}