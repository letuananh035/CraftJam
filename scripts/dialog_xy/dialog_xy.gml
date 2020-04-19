///@description dialog_xy(object,(offset));
///@arg object


var x_ = argument0.x-argument0.sprite_width/2;
var y_ = argument0.y-argument0.sprite_height;


//default offset


   
if instance_exists(o_dialog_blank){
	var offset = argument0.sprite_height/1.5;	
	o_dialog_blank.pos_y = y_-offset;
	o_dialog_blank.voice = argument0.voice;	
	o_dialog_blank.creator_x = x_+10;
}