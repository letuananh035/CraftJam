/// @description 
// Inherit the parent event
event_inherited();

audio_music_stop(); 




global.hide_ui = true;
instance_destroy(o_fail_bullets);
instance_destroy(o_alien);
var s =create(-300,o_player.yy,o_alien);
s.sprite_index = s_failhug;

show_option = false;
current_choice = 0;
global.boss_hp = 6;
fade_to_next_room_timer = SEC*3;
dont_show_text_timer = 0;
white_flash = true;
hit_sound = false;

black_foreground = false;
shake = false;
fade_black = false;
fade_black_alpha = 0;

turn_off_disco_lights();

next_room = r_boss_battle_second_phase;
persistent = false;
text_time = SEC;
portrait_shake = false;
state_manual_move = true;
fail_positive_icon_ui_amount = 0; //default
 element_flag  = false;
space_x_lerp = -400;
state_manual_move = false;
y_top_ui_offset = 0;
fail_positive_icon_x_offset = -100;
chose_comfort = false;
y_ui_offset_target = 0;
y_ui_offset = 0;
text_timer = 0;
alarm[0] = -1;
triangle_offset = 320;
state = 0;
cutscene = 0;
end_cutscene = false;
y_ui_bounce_timer = 0;
y_ui_bounce_time = SEC*.3;
current_text_offset = 0;
previous_text_offset = 0;	
current_text = "HAHA THAT WAS FANTASTIC!";
previous_text = "";

element = scribble_draw(W/2-40, H -25, current_text);
scribble_autotype_fade_in(element, SCRIBBLE_AUTOTYPE_PER_CHARACTER, .8, 0);
scribble_autotype_set_sound(element, [a_speak1,a_speak2,a_speak3,a_speak4], 30);//a_explosion	

alien_ui_sprite = s_ui_argh;
ui_timer = 0;
ui_time = SEC;