/// @description 
draw_set_halign(fa_left);
if global.hide_ui exit;

if room != r_tutorial {
	var off = 0;
	if global.combo_max = global.combo{
	var off = ore[0, ORE_SCALE ];	
	}
	var scr = "MAX COMBO "+string(global.combo_max);//string_format(global.current_score*100,3,0)
	#region
	if global.boss_complete = true{
		scr = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
	}
	#endregion
		draw_set_color(C_AQUA);
		draw_text(20+3*off,15+3*off,string(scr));
		draw_set_color(C_FUCHISIA);
		draw_text(20+2*off,15+2*off,string(scr));
		draw_set_color(C_PURPLE);
		draw_text(20+1*off,15+1*off,string(scr));

		draw_text(20+1,15,string(scr));
		draw_text(20,15+1,string(scr));
		draw_set_color(C_YELLOW);
		draw_text(20,15,string(scr));
	
}

if instance_exists(o_boss_controller) and !instance_exists(o_cutscene_parent) {
	hp_wobble_timer += .1;
	for (var i = 0; i < global.hp; i++){
		var time = hp_wobble_timer +i;
		var intense = 1.2;
		
		if !global.boss_complete{
		var index_heart = 0;
		}else{
		var index_heart = 2;
		}
		draw_sprite_ext(s_fail_heart,index_heart,20+i*20+1,20+sin(time)*intense+1,1,1,0,c_black,1);
		draw_sprite(s_fail_heart,index_heart,20+i*20,20+sin(time)*intense);
	}
	for (var i = 0; i < global.boss_hp; i++){
		var time = hp_wobble_timer +i;
		var intense = 1.2;
		var shakex = 0;
		var shakey = 0;
		
		if !global.boss_complete{
		var index_heart = 1	
		}else{
			index_heart = 3;
			intense = 2;
			shakex = random_range(-.3,.3);
			shakey = random_range(-.3,.3);
		}
		draw_sprite_ext(s_fail_heart,index_heart,W-20-i*20+1,20+sin(time)*intense+1,1,1,0,c_black,1);
		draw_sprite(s_fail_heart,index_heart,W-20-i*20+shakex,shakey+20+sin(time)*intense);	
	}
}



#region
/*
if room != r_tutorial and room != r_main{
	var xx_margin = 20;
//	draw_text(W/2,20,"STAR "+string(global.star_count));
////	draw_text(W/2,20+10,"STAR% "+string(global.star_percent));
	var x_ = W/2;
	var y_ = 20;
	star_y_lerp = lerp(star_y_lerp, 0, .3);
	y_ += star_y_lerp;
	var y_nine_offset = 40;
	var percent = global.star_percent;
	
	var col = C_FUCHISIA;
	var col2 = C_PURPLE;
		
		star_percent_lerp = lerp(star_percent_lerp,percent,.1);
		nine_slice_image_blend(s_nine_slice_border,x_-17+16,16+y_+y_nine_offset-4,x_+17+16,16+y_+y_nine_offset+4,1,col);
		nine_slice_image_blend(s_nine_slice_border,x_-16+16,16+y_+y_nine_offset-3,x_+16+16,16+y_+y_nine_offset+3,1,col2);
		
		star_percent_lerp = lerp(star_percent_lerp,percent,.1);
		draw_set_color(c_white);
		//we gain stuff
		draw_set_color(C_GUM);	
		var lerp_color = C_YELLOW;
		draw_sprite_ext(s_pixel,0,x_-16+17,y_+y_nine_offset+14,30*star_percent_lerp,4,
		0,lerp_color, 1);
		if show_y_ui_no_lerp = true{
		draw_sprite_ext(s_pixel,0,x_-16+17,y_+y_nine_offset+14,30*percent,4,
		0,C_GUM, 1);		
		}else{
		draw_sprite_ext(s_pixel,0,x_-16+17,y_+y_nine_offset+14,30*star_percent_lerp,4,
		0,C_GUM, 1);
		}
		draw_set_color(C_GUM);
		//we gain stuff
		draw_set_color(c_white);			
}
*/
#endregion
#region 
with o_rock{ //parent object of interactable objects
var xx = o_player.x div 32;
var yy = o_player.y div 32;

var xx1 = x div 32;
var yy1 = y div 32;

if xx = xx1 and yy = yy1+1{	
		move_bar_up_time = SEC*.6;
	if move_bar_up_timer <= move_bar_up_time{
		nine_y_offset = easings("easeoutelastic",24,-36,move_bar_up_time,move_bar_up_timer);
		move_bar_up_timer++;
	}else{
	
		nine_y_offset = -12;	
	}
}else{
		move_bar_up_timer = 0;
	if nine_y_offset != 24 {
	nine_y_offset = lerp( nine_y_offset , 24, .2);	
	}
}

var col = c_white;
var col2 = C_DARK;
if we_are_hit {
col = C_DARK;
col2 = c_white;
}

var percent = hp/hp_max;
if percent != 1 {
	nine_slice_image_blend(s_nine_slice_border,return_gui_x(x-17+16),return_gui_y(16+y+nine_y_offset-4),return_gui_x(x+17+16),return_gui_y(16+y+nine_y_offset+4),1,col);
	nine_slice_image_blend(s_nine_slice_border,return_gui_x(x-16+16),return_gui_y(16+y+nine_y_offset-3),return_gui_x(x+16+16),return_gui_y(16+y+nine_y_offset+3),1,col2);
	border_lerp = lerp(border_lerp,percent,.1);
	draw_set_color(c_white);
	if we_are_hit {
	draw_set_color(C_GUM);	
	}
	draw_rectangle(return_gui_x(x-15+16),return_gui_y(16+y+nine_y_offset-2),return_gui_x(x-15+29*border_lerp+16),return_gui_y(16+y+nine_y_offset+1),false);
	draw_set_color(C_GUM);
	if we_are_hit {
	draw_set_color(c_white);	
	}
	draw_rectangle(return_gui_x(x-15+16),return_gui_y(16+y+nine_y_offset-2),return_gui_x(x-15+29*percent+16),return_gui_y(16+y+nine_y_offset+1),false);
}
draw_set_color(c_white);
}
#endregion

if !instance_exists(o_rock) and room = r_main and instance_exists(o_crafting_bench) and allow_teleport = false{
	teleport_ui_y_offset = lerp(teleport_ui_y_offset,0,.1);	
	draw_sprite_ext(s_triange_border,0,W/2,H/2+teleport_ui_y_offset,1,1,180,c_black,1);
	scribble_draw(20,20+teleport_ui_y_offset,string("[rainbow][wave]TELEPORT[] [s_r_button]"));
	if keyboard_check_pressed(ord("R")){
		var dir = irandom(3);
		var s = o_crafting_bench;
		with o_crafting_bench{
			var xx = x div 32;
			var yy = y div 32;
			var find_tile = false;
			while find_tile = false {
				var x_add = choose(1,0,-1);
				var y_add = choose(1,0,-1);
				if o_grid.grid[# xx+x_add, yy+y_add] = FLOOR{
					find_tile = true;	
					o_player.x = (xx+x_add)*32; 
					o_player.y = (yy+y_add)*32;
					allow_teleport = false;
				}
				exit;
			}		
		}	
	}	
}else{
		if teleport_ui_y_offset != -80{
		teleport_ui_y_offset = lerp(teleport_ui_y_offset,-80,.1);	
		}
}