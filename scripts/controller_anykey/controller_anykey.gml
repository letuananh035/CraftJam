///@arg gp_id
return gamepad_button_check_pressed(argument0,gp_face1)or 
gamepad_button_check_pressed(argument0,gp_face2)or
gamepad_button_check_pressed(argument0,gp_face3)or 
gamepad_button_check_pressed(argument0,gp_face4)or

gamepad_button_check_pressed(argument0,gp_padl) or 
gamepad_button_check_pressed(argument0,gp_padr) or
gamepad_button_check_pressed(argument0,gp_padu) or 
gamepad_button_check_pressed(argument0,gp_padd) or

gamepad_button_check_pressed(argument0,gp_shoulderl) or 
gamepad_button_check_pressed(argument0,gp_shoulderl) or
gamepad_button_check_pressed(argument0,gp_shoulderr) or 
gamepad_button_check_pressed(argument0,gp_shoulderrb) or
abs(gamepad_axis_value(argument0,gp_axislh)) > .5 or 
abs(gamepad_axis_value(argument0,gp_axislv)) > .5 ;