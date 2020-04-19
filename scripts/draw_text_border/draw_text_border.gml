///@description draw_text_border(string, x, y, xscale, yscale,angle,color)
///@param string
///@param x
///@param y
///@param xscale
///@param yscale
///@param angle
///@param alpha
///@param color

var text = argument0;
var x_ = argument1;
var y_ = argument2;
var xscale = argument3;
var yscale = argument4;
var angle = argument5;
var alpha = argument6;
var color = argument7;

//top bot left right
		draw_text_transformed_color(x_,y_-1,text,xscale,yscale,angle,color,color,color,color,alpha);
		draw_text_transformed_color(x_,y_+1,text,xscale,yscale,angle,color,color,color,color,alpha);
		draw_text_transformed_color(x_-1,y_,text,xscale,yscale,angle,color,color,color,color,alpha);
		draw_text_transformed_color(x_+1,y_,text,xscale,yscale,angle,color,color,color,color,alpha);
//TopLeft TopRight BotLeft BotRight
		draw_text_transformed_color(x_-1,y_-1,text,xscale,yscale,angle,color,color,color,color,alpha);
		draw_text_transformed_color(x_+1,y_-1,text,xscale,yscale,angle,color,color,color,color,alpha);
		draw_text_transformed_color(x_-1,y_+1,text,xscale,yscale,angle,color,color,color,color,alpha);
		draw_text_transformed_color(x_+1,y_+1,text,xscale,yscale,angle,color,color,color,color,alpha);
//CLEANUP
		draw_text_transformed_color(x_,y_,text,xscale,yscale,angle,color,color,color,color,alpha);
