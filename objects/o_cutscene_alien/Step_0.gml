/// @description 


persistent = true;


with o_alien {
	x = lerp(x,		  o_player.x - 32, .1);	
	y = lerp(y,       o_player.y +20, .1);	
}

if state < 13 and  keyboard_check_pressed(vk_space) or state_manual_move = true{
	state_manual_move = false;
	text_timer = 0;
	with o_alien{
	o_alien.scale_timer = 0;
	o_alien.scale_time = SEC*.35;
	}
	
	element_flag = false;
	ui_timer = 0;
	previous_text = current_text;
	y_ui_offset = 10
	state++;
}

switch state {
	case 0: if !instance_exists(o_alien){create(o_player.x - 5000,o_player.y,o_alien);} current_text = "[shake][c_gum]GREETINGS![]"; o_alien.shake = false; o_player.image_xscale = 1; o_player.state = player.cutscene;	break;
	case 1:	current_text = "I AM FAILPOSITIVE##"; o_alien.shake = false;		break;
	case 2:	current_text = "THE AUDIO MASTER OF THIS GAME##"; break;
	case 3: current_text = "I AM ALSO AN [rainbow][wave]ALIEN[]##"; break;
	case 4: current_text = "AS EVIDENCED BY MY ALIEN HAT##";  break;
	case 5: current_text = "I HAVE ENTERED YOUR WORLD##"; break;
	case 6: current_text = "TO [c_lime][wave]SAVE[] YOU##";break;
	case 7: current_text = "FROM THIS BORING##";break;
	case 8: current_text = "MUSICLESS!##";break;
	case 9: current_text = "[shake][c_gum]GAME LOOP!"; o_alien.sprite_index = s_alien_angry; o_alien.shake = true;	break;
	case 10: current_text = "SOUNDS GOOD?##";  o_alien.sprite_index = s_alien; o_alien.shake = false; break;
	case 11: current_text = "LET'S GO"; break;
	case 12: current_text = "TO MUSIC PLANET##";break;
	case 13: current_text = "";	 y_ui_offset_target = 60;break;
	case 14: current_text = "";  y_ui_offset_target = -12;  break;
	case 15: current_text = "MOVE TO THE BEAT OF THE MUSIC";y_ui_offset_target = 0;   if global.beat_count > 3{ state_manual_move = true; alarm[0] = SEC*5;}  break;
	case 16: current_text = "[wave][rainbow]YOU GOT IT![]"; alien_sprite_ui = s_ui_happy; break;
	case 17: current_text = "";y_ui_offset_target = -80;  if alarm[0] = -1{ alarm[0] = SEC*2;}  break;
	case 18: instance_destroy();
	default: state = 0; break;
}



if element_flag = false and !end_cutscene{
	element_flag = true;
	element = scribble_draw(W/2+triangle_offset-40+current_text_offset, H -25, current_text);
	scribble_autotype_fade_in(element, SCRIBBLE_AUTOTYPE_PER_CHARACTER, 1, 0);
	scribble_autotype_set_sound(element, [a_speak1,a_speak2,a_speak3,a_speak4], 30);
}