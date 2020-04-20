/// @description 


if end_cutscene = false{
	triangle_offset = lerp(triangle_offset,0,.1);	
	}else{
	triangle_offset = lerp(triangle_offset,325,.2);	
	if triangle_offset > 324 instance_destroy();
}
	y_ui_offset = lerp(y_ui_offset,y_ui_offset_target,.2);	
if  y_ui_bounce_timer <= y_ui_bounce_time{
	y_ui_add = easings("easeoutelastic",-1,1,y_ui_bounce_time,y_ui_bounce_timer);
	y_ui_bounce_timer++;
}

fail_positive_icon_x_offset = lerp(fail_positive_icon_x_offset,0,.1);
fail_positive_icon_x_offset = clamp(fail_positive_icon_x_offset, W/2-triangle_offset, W/2+triangle_offset);

if black_foreground = true{
	draw_sprite_ext(s_pixel,0,0,0,99999,99999,0,c_black,1);
	
}

draw_sprite_ext(s_triange_border,0,W/2+triangle_offset,H/2-y_ui_offset+y_ui_add,1,1,0,c_black,1);
draw_sprite_ext(s_triange_border,0,W/2-triangle_offset,H/2+y_ui_offset-y_ui_add+y_top_ui_offset,1,1,180,c_black,1);

if text_timer <= text_time {
	current_text_offset = 	easings("easeoutexpo",200,-200,text_time,text_timer);
	previous_text_offset = 	easings("easeinquad",0,200,text_time,text_timer);
	var scale = easings("easeoutelastic",.8,.2,text_time,text_timer);
	text_timer++;	
}

if alien_ui_sprite != noone{
draw_sprite_ext(alien_ui_sprite,0,W+115-fail_positive_icon_x_offset,H-45-y_ui_offset,1,1,0,c_white,1);
}
scribble_draw(W/2+triangle_offset-40, H -25, element);

	

//	draw_sprite_ext(s_pixel,0,0,0,99999,99999,0,c_black,1);

if white_flash = true{
	
	draw_sprite_ext(s_pixel,0,0,0,99999,99999,0,c_white,1);
	white_flash = false;
}



if fade_black = true{
	
	fade_black_alpha = approach(fade_black_alpha,1,.006);
	draw_sprite_ext(s_pixel,0,0,0,99999,99999,0,c_black,fade_black_alpha);

	if fade_black_alpha = 1 {
		
		global.hide_ui = false;
		instance_destroy();
		global.boss_complete = true;
		var s  = create(0,0,o_fade_out);
		s.approach_amount = .008;
		room_goto(r_boss_battle_second_phase);
	
		
	}
	
}	