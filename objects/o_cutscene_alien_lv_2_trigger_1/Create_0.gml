/// @description 
// Inherit the parent event

event_inherited();


text_time = SEC;
portrait_shake = false;

fail_positive_icon_ui_amount = 0; //default
element_flag  = false;
space_x_lerp = -400;
state_manual_move = false;
y_top_ui_offset = 0;
fail_positive_icon_x_offset = -100;
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


current_text = "";
previous_text = "";

alien_ui_sprite = s_ui_neutral;

element = scribble_draw(W/2+triangle_offset-40+current_text_offset, H -25, current_text);
scribble_autotype_fade_in(element, SCRIBBLE_AUTOTYPE_PER_CHARACTER, .5, 0);
scribble_autotype_set_sound(element, [a_speak1,a_speak2,a_speak3,a_speak4], 30);

ui_timer = 0;
ui_time = SEC;