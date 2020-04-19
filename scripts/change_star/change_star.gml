///@arg amount


var amount = argument0;

if amount < 0 {
o_game.star_y_lerp += 15;
o_game.show_y_ui_no_lerp = true;
}else{
o_game.show_y_ui_no_lerp = false;
o_game.star_y_lerp = -5;	
}


global.star_percent += amount;
global.star_percent = clamp(global.star_percent,0,1);


if global.star_percent = 0 {
	global.star_percent = 1;
	global.star_count -= 1;

	global.star_perstar_countent = clamp(global.star_count,0,3);
}