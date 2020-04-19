/// @description 



if target != noone and !instance_exists(target){
	exit;	
}


var text_width = string_width(text);
timer += timer_amount;
if wobble_timer <= wobble_time{
	wobble_intensity = easings("easeinquad",0,1,wobble_time,wobble_timer);
	wobble_timer++;
	timer_amount = easings("easeoutelastic",0,1,wobble_time,wobble_timer);
}

if alarm[0] < SEC*.3{
wobble_intensity = lerp(wobble_intensity,0 , 0.025 );	
}

if instance_exists(target){	


if target = o_player{
	
	var x_ = return_gui_x(target.xx-text_width/2);
	var y_ = return_gui_y(target.yy+y_amount);	
}else{

	var x_ = return_gui_x(target.x-text_width/2);
	var y_ = return_gui_y(target.y+y_amount);
}
}else{

var x_ = return_gui_x(x-text_width/2);
var y_ = return_gui_y(y+y_amount);	
}



var wavytext_ang = global.wobble;

var String = text;
var TextFont = default_font;
var TextSize = size;
var XPos = x_;
var YPos = y_;

//var tf = undefined;
   
	draw_set_font(TextFont);
    var strlen = string_length(String);
    var i = 0;
    var length = 0;
    var lengthy = 0;
    var dark = c_black;
    while(i < strlen){
        draw_set_color(dark);
        if(string_char_at(String,i+1) == "&"){
			
            lengthy += string_height(string_char_at(String,i+1));
            length = string_width("  ");
        } else {
			
			var len = length;
			len = clamp(len,0,8);
			
			
			var wob = sin(((length+2)*.001-(timer+SEC*.35)*.001)*51.01)*3*wobble_intensity;
			var wobblec = 0;//cos((length*.001-(timer+SEC*.35)*.001)*51.01)*3*wobble_intensity*.25;
			
			
            draw_text_ext_transformed(
			1+XPos + length+wobblec ,
			YPos + lengthy+wob,
			string_char_at(String,i+1),
			10,
			300,
			TextSize,
			TextSize,
			0);
			
			 draw_text_ext_transformed(
			-1+XPos + length+wobblec ,
			YPos + lengthy+wob,
			string_char_at(String,i+1),
			10,
			300,
			TextSize,
			TextSize,
			0);
			
			 draw_text_ext_transformed(
			XPos + length+wobblec ,
			1+YPos + lengthy+wob,
			string_char_at(String,i+1),
			10,
			300,
			TextSize,
			TextSize,
			0);
			
			draw_text_ext_transformed(
			XPos + length+wobblec ,
			-1+YPos + lengthy+wob,
			string_char_at(String,i+1),
			10,
			300,
			TextSize,
			TextSize,
			0);
			
			draw_text_ext_transformed(
			1+XPos + length+wobblec ,
			1+YPos + lengthy+wob,
			string_char_at(String,i+1),
			10,
			300,
			TextSize,
			TextSize,
			0);
			
			draw_set_color(color);
			draw_text_ext_transformed(
			XPos + length+wobblec,
			YPos + lengthy+wob,
			string_char_at(String,i+1),
			10,
			300,
			TextSize,
			TextSize,
			0);
			
			
            length += string_width(string_char_at(String,i+1))*1.3;
        }
        if(string_char_at(String,i+1) == "#"){
            lengthy += string_height(string_char_at(String,i+1));
            length = 0;
        }
        wavytext_ang -= 1;
        i++;
    }









if dice = true and instance_exists(target){
	var tx = return_gui_x(target.x);
	var ty = return_gui_y(target.y+y_amount-15);
	draw_sprite_ext(s_help,0,tx,ty,size,size,0,c_white,1);
}

draw_set_alpha(1);

draw_set_colour(c_white);