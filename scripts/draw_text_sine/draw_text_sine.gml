///@description draw_text_sine(String,font,size,x,y,color,kerning);
///@param String
///@param font
///@param size
///@param x
///@param y
///@param color
///@param kerning

//var wavytext_x = 0;
//var wavytext_y = 0;
var wavytext_ang = global.wavytext_angle;

var String = argument0;
var TextFont = argument1;
var TextSize = argument2;
var XPos = argument3;
var YPos = argument4;
var Color = argument5;
var kerning = argument6;
//var tf = undefined;
    draw_set_color(Color);
	draw_set_font(TextFont);
    var strlen = string_length(String);
    var i = 0;
    var length = 0;
    var lengthy = 0;
    var color = Color;
    while(i < strlen){
        draw_set_color(color);
        if(string_char_at(String,i+1) == "&"){
			
            lengthy += string_height(string_char_at(String,i+1));
            length = string_width("  ");
        } else {
            draw_text_ext_transformed(
			XPos + length + (cos(wavytext_ang)*1.5),
			YPos + lengthy+(sin(wavytext_ang)*1.5),
			string_char_at(String,i+1),
			10,
			300,
			TextSize,
			TextSize,
			0);
            length += string_width(string_char_at(String,i+1))+kerning;
        }
        if(string_char_at(String,i+1) == "#"){
            lengthy += string_height(string_char_at(String,i+1));
            length = 0;
        }
        wavytext_ang -= 1;
        i++;
    }
draw_set_colour(c_white);
draw_set_font(global.font);

