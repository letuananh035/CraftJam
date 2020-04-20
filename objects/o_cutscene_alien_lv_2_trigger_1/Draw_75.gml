/// @description 


if end_cutscene = false{
	triangle_offset = lerp(triangle_offset,0,.1);	
	}else{
	triangle_offset = lerp(triangle_offset,340,.2);	
	
		if triangle_offset > 339{
			instance_destroy();	
		}
}

fail_positive_icon_x_offset = lerp(fail_positive_icon_x_offset,fail_positive_icon_ui_amount,.1);




y_ui_offset = lerp(y_ui_offset,y_ui_offset_target,.2);	


if y_ui_bounce_timer <= y_ui_bounce_time{
	y_ui_add = easings("easeoutelastic",-1,1,y_ui_bounce_time,y_ui_bounce_timer);
	y_ui_bounce_timer++;
}

draw_sprite_ext(s_triange_border,0,W/2+triangle_offset,H/2-y_ui_offset+y_ui_add,1,1,0,c_black,1);
draw_sprite_ext(s_triange_border,0,W/2-triangle_offset,H/2+y_ui_offset-y_ui_add+y_top_ui_offset,1,1,180,c_black,1);
//draw_sprite_ext(s_triange_border,image_index/2,W/2+triangle_offset,H/2+y_ui_add+y_ui_add+y_ui_offset,1,1,0,c_black,1);


if text_timer <= text_time {
	current_text_offset = 	easings("easeoutexpo",200,-200,text_time,text_timer);
	previous_text_offset = 	easings("easeinquad",0,200,text_time,text_timer);
	var scale = easings("easeoutelastic",.8,.2,text_time,text_timer);
	//	draw_sprite_ext(s_triange_border,0,W/2+triangle_offset,H/2,scale,scale,0,c_black,1);
	//	draw_sprite_ext(s_triange_border,0,W/2-triangle_offset,H/2,scale,scale,180,c_black,1);
	text_timer++;	
}
if end_cutscene exit;
draw_sprite_ext(alien_ui_sprite,0,W-35-fail_positive_icon_x_offset,H-40-y_ui_offset,1,1,0,c_white,1);

scribble_draw(W/2+triangle_offset-40, H -25, element);
//scribble_draw(W/2+triangle_offset-40, H -25+previous_text_offset, element2);

if state < 5{
	space_x_lerp = lerp(space_x_lerp,0,.1);
}else{
	space_x_lerp = lerp(space_x_lerp,-200,.1);
}
scribble_draw(20,30,"[rainbow][wave]RESTART");
draw_sprite_ext(s_q_button,current_time*.004,100+space_x_lerp,40,1,1,0,c_white,1);