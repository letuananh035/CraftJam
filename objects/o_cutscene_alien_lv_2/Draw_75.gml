/// @description 

if end_cutscene = false{
	triangle_offset = lerp(triangle_offset,0,.1);	
	}else{
	triangle_offset = lerp(triangle_offset,325,.2);	
	if triangle_offset > 324 instance_destroy();
}
y_ui_offset = lerp(y_ui_offset,y_ui_offset_target,.2);	
if y_ui_bounce_timer <= y_ui_bounce_time{
	y_ui_add = easings("easeoutelastic",-1,1,y_ui_bounce_time,y_ui_bounce_timer);
	y_ui_bounce_timer++;
}


fail_positive_icon_x_offset = lerp(fail_positive_icon_x_offset,0,.1);
fail_positive_icon_x_offset = clamp(fail_positive_icon_x_offset, W/2-triangle_offset, W/2+triangle_offset);
draw_sprite_ext(s_triange_border,0,W/2+triangle_offset,H/2-y_ui_offset+y_ui_add,1,1,0,c_black,1);
draw_sprite_ext(s_triange_border,0,W/2-triangle_offset,H/2+y_ui_offset-y_ui_add+y_top_ui_offset,1,1,180,c_black,1);

/*
if !end_cutscene{
draw_sprite_ext(s_pixel,0,0,43+y_ui_add,600,25-y_ui_add*2,0,c_black,1);
scribble_draw(W/2-30,H/2-37-5,"[fa_center]THIS [c_gum]BAR[] MEASURES\n[rainbow][wave]COOL POINTS");


for (var i = 0; i < 28; i ++){
draw_sprite_ext(s_caret,current_time/70,W/2-2-6*i,H/2-15,1,1,0,C_YELLOW,1);
draw_sprite_ext(s_caret,current_time/70,W/2+34+6*i,H/2-15,-1,1,0,C_YELLOW,1);
}

}
*/
if text_timer <= text_time {
	current_text_offset = 	easings("easeoutexpo",200,-200,text_time,text_timer);
	previous_text_offset = 	easings("easeinquad",0,200,text_time,text_timer);
	var scale = easings("easeoutelastic",.8,.2,text_time,text_timer);
	text_timer++;	
}

draw_sprite_ext(alien_ui_sprite,0,W+115-fail_positive_icon_x_offset,H-45-y_ui_offset,1,1,0,c_white,1);

scribble_draw(W/2+triangle_offset-40, H -25, element);
scribble_draw(W/2-triangle_offset-135, H/4 -35, "PRESS [s_q_button] TO RESTART");


