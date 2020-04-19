/// @description Insert description here
// You can write your code in this editor



var _originx = view_w/2;
var _originy = view_h/2;

scribble_draw_set_box_align(fa_center, fa_middle);
var _h = 0;
for (var i = 0; i < array_length_1d(credits); i++){
	scribble_draw(_originx,_originy+_h-scroll,credits[i]);
	
	var _bbox = scribble_get_bbox(credits[i],0,0);
	_h += _bbox[3]+10;
}
scribble_draw_reset();

draw_sprite_ext(spr_end,0,_originx,_originy+_h-scroll,view_w/320,view_w/320,0,c_white,1);

var _total_h = _h+((view_w/320)*180)-_originy;
if (scroll < _total_h){
	scroll += .1;
}else{
	draw_set_alpha(fade_alpha);
	draw_set_color(c_black);
	draw_rectangle(0,0,view_w,view_h,false);
	fade_alpha = lerp(fade_alpha,1,.01);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	if fade_alpha > .99{
		room_goto(r_main_menu);
	}
}
