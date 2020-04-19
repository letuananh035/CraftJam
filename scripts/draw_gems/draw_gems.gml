//Draws gems
//set them visible when paused is on 
//move 10% of the way to 1

if o_game.paused_ = true exit;
if instance_exists(o_level_down) exit;
draw_set_font(global.damage_numbers);
draw_set_halign(fa_left);
gem_scale = lerp(gem_scale, 1, .1);
gems_display_text = global.gems;//;(lerp(gems_display_text,global.gems,.14));//ceil(lerp(gems_display_text,global.gems,.01));

if paused_ = true{
	gui_alpha = 1;	
	gem_alpha = 1;
}

if instance_exists(o_pause_parent){
	var	al_ = 1;
}else{
	var al_ = min(gui_alpha,gem_alpha);
}
draw_set_alpha(al_);

var _gui_width = display_get_gui_width();
var _gem_string = string(gems_display_text);
var _text_width = string_width(_gem_string);
var _x = _gui_width - _text_width-1+shakex;

if gem_offscreen_timer <= 0 and instance_exists(o_player) and manually_move_gems = 0
{
	if gem_offscreen_y != 25{
		gem_offscreen_y = lerp(gem_offscreen_y,-35,.2);
	}
}else{
	gem_offscreen_y = lerp(gem_offscreen_y,0,.6);	
	gem_offscreen_timer--;	

}
var _y = 130+gem_offscreen_y+shakey;


/*
if o_input.right {
	x_text++;
}
if o_input.left {
	x_text--;
}
if o_input.up {
	y_text++;
}
if o_input.down {
	y_text--;
}
draw_text(_gui_width/2,_gui_height/2,x_text);
draw_text(_gui_width/2,20+_gui_height/2,y_text);
*/


var _color = c_white;
var _interval = 8;
var _alarm = alarm[2];
//once the alarm hits 0 flash stops



//draw_sprite_ext(s_gem_border,0,_x-15,y-109,gem_scale,gem_scale,0,c_black,gem_alpha);

if (_alarm % _interval) <= _interval/2 and _alarm > 0 {
	var _c = choose(c_aqua,C_YELLOW,c_white);
	gpu_set_fog(true, _c, 0, 1);
	draw_sprite_ext(s_gem,0,_x-15,_y-109,gem_scale,gem_scale,0,c_aqua,al_);
	gpu_set_fog(true, _color, 0, 1);
	draw_sprite_ext(s_gem_color,0,_x-16,_y-110,gem_scale,gem_scale,0,C_RED,al_);
	gpu_set_fog(false, _color, 0,1);
	
	draw_sprite_ext(s_gem_border,0,_x-16,_y-110,gem_scale,gem_scale,0,c_white,al_);	
	var gem_dir = random(360);
	var new_x = _x + lengthdir_x(global.gem_text_shake,gem_dir);
	var new_y = _y-109 + lengthdir_y(global.gem_text_shake,gem_dir);
	gpu_set_fog(true, _c, 0, 1);	
	draw_text(new_x-5, new_y, _gem_string);
	gpu_set_fog(false, _c, 0, 1);
	draw_set_colour(c_fuchsia);
 	draw_text(new_x-6, new_y, _gem_string);
	draw_set_colour(c_white);

}else{
	draw_sprite_ext(s_gem,0,_x-15,_y-109,gem_scale,gem_scale,0,c_black,al_);
	draw_sprite_ext(s_gem_color,5,_x-16,_y-110,gem_scale,gem_scale,0,c_white,al_);
	draw_sprite_ext(s_gem_border,0,_x-16,_y-110,gem_scale,gem_scale,0,c_white,al_);
	draw_set_colour(c_black);
	draw_text(_x-5, _y-109, _gem_string);
	var default_col = c_white;
	
	draw_set_colour(default_col);
	if instance_exists(o_upgrade_item) and instance_exists(o_player){
		with instance_place(o_player.x,o_player.y,o_upgrade_item){
			draw_set_color(price_color);
		}
	}
	
 	draw_text(_x-6, _y-110, _gem_string);
}
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(global.font);


