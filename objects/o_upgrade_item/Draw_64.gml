

//
var yoff = -23;
var pr_x_ease = 1;
var len = 0;
var size = pr_x_ease;
var str = title;
	
var text_width = sprite_get_width(s_font_custom);
var str_width = string_width(str);

var len = 0;

var move_to_next = true;
var new_string = str;
var string_for_width = "";
desc_text_final = "";




if title_flag = false{

	for (var i = 0; i < string_length(str); i++){
		title = string_replace(title," ","_");
		if string_char_at(new_string,i+1) = "[" {
			move_to_next = false;
		}
		if string_char_at(new_string,i+1) = "]" {
			move_to_next = true;
			len--;
		}
		if move_to_next = true and  string_char_at(new_string,i+1) != "]"{
			len++;	
			string_for_width += string_char_at(new_string,i+1);
			current_max_length_title += sprite_get_width(s_font_custom)+1;
		}
	}
	
	desc_len_final = len;
	max_string_width = string_for_width;
	title_flag = true;
}else{
	string_for_width = max_string_width;
	len = desc_len_final;
}


draw_set_halign(fa_center);

var x_ = return_gui_x(x);
var y_ = return_gui_y(y);

var y_top = -2;
var y_high = y_-8-txt_h-offset_h-7+y_top;

var xlen = x_len;
item_margin = 15;

x = clamp(x,item_margin,room_width-item_margin);


var x_offset_master = 0; // when the ui box is out of bounds
var y_offset_master = 0;

var move_top = false;
if y_high <  35{
	move_top = true;
	y_	   =  160;	
	y_high = y_-8-txt_h-offset_h-7+y_top;
}




rainbow_color_timer += 4;
tier_color[5] = C_RED;
var spri_nine = s_nine_slice_camera_lock;
var spr_title = s_nine_slice_dark_24;
var text_box_color = c_white;

if room != r_tutorial{
	text_box_color = C_YELLOW;
	
	var spri_nine = s_nine_slice_camera_lock;
	var spr_title = s_nine_slice_dark_24;	
}

y_top_offset = 0;
for (var i = 0; i <= total_number_of_sprites; i++){
y_top_offset += sprite_text_add[i];	
}
y_top_offset /= 2;

if rainbow_color_timer > 255{
rainbow_color_timer = 0;	
}







if x_len > x_len_thresh {
	
	
	
var margin = 0;
x_off = 0;

x_off = 20;


var text_margin = 6;
if x_-x_len-margin+x_offset_master < text_margin{
	x_offset_master = (x_-x_len-margin)*-1+text_margin ;
	x_ += x_offset_master;
}


	//x_offset_master =  x_ + xlen ;
while 	x_ +xlen  >  W-10 {//  x_offset_master; 
	
	x_ -= 1;
	
}

nine_slice_image_blend(spri_nine,
x_-xlen,
y_-10-txt_h-offset_h-26+y_top-y_top_offset,
x_+xlen,
y_-28+2,1,text_box_color);

if x_len > txt_w/2 {
	with o_game{
	gem_offscreen_timer = SEC*.25;	
	}
	if move_top = false{
	draw_sprite_ext(s_item_nine_slice,0, return_gui_x(x),y_-26,1,1,0,text_box_color,1);	
		
	}else{
	draw_sprite_ext(s_item_nine_slice,0, return_gui_x(x),y_-10-txt_h-offset_h-24+y_top-y_top_offset-2,1,-1,0,text_box_color,1);	
		
	}
	if alarm[1] > -1{
		draw_set_color(c_maroon);
	}else{
		draw_set_color(c_black);	
	};
	x_ += 2;
	draw_set_color(c_black);
//	draw_text(x_,y_-txt_h-29,output_txt);
	draw_set_color(c_black);
	//draw_text(x_+1,y_-txt_h-29,output_txt)	
	draw_set_color( merge_color(c_white ,tier_color[tier],.2));

	if alarm[1] > -1{
	draw_set_color(C_GUM);
	}
	
//	draw_text(x_,y_-txt_h-30,output_txt);
//output_txt
//Add the spritefont called "fnt_score" to Scribble
//This function works the same as GM's native font_add_sprite_ext() (but is always proportional)

var desc_width = string_width(output_txt);
//+sprite_get_width(s_font_custom)/2 

if return_from_error_timer_format > 0 {
return_from_error_timer_format--;	
}
if return_from_error_timer_format <= 0 or output_txt = error_text{
scribble_draw(x_-(current_max_length/2),y_-txt_h-28-4-y_top_offset,output_txt);
}
draw_set_colour(c_white);

///////////////////////	

	draw_set_color( merge_color(c_white ,tier_color[tier],.2));
	x_ -= 2;




var character_count = len;
var character_size = (sprite_get_width(s_font_custom)+1);

	len *= character_size;
	len /= 2;

	
	if alarm[1] != -1{
		
	title_display_text = "[c_yellow][shake]SORRY";
	var box_width = (((string_width("SORRY")/2))*pr_x_ease);
	title_9_slice_width = (string_width("SORRY"));
	title_string_no_scribble = "SORRY";
	len = 13;
	}else{
	title_string_no_scribble = string_for_width;	
	title_display_text = title;	
	var box_width = (((string_width(string_for_width)/2))*pr_x_ease);
	title_9_slice_width = (string_width(string_for_width));

	}

	var x_off = 2;
	var y_off = -7;
	
	var y_offset = -20;
	var margin = 15 ; 
		
//	nine_slice_image_blend(s_nine_slice_dark_24,x_+x_off,y_-y_off,1+w-x_+x_off,1+y_+y_off,1,c_black);
	nine_slice_image_blend(spr_title,
	x_-box_width+x_off-margin,
	y_high+y_off+y_offset-y_top_offset,
	x_-box_width+box_width*2+x_off+margin,
	y_high-y_off+y_offset-y_top_offset,
	1,text_box_color);
	character_size = 6;
	scribble_draw(x_-len,y_high-18+y_top-8+sprite_get_height(s_font_custom)/2+1-y_top_offset,title_display_text);	

	}
}


draw_set_halign(fa_center)
