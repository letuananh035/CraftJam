/// @description 


if alarm[0] > -1 and alarm[0] % 2{ //invincible flash
	exit;	
}

	if beat_combo(){
		var pal_index = 1;
	}else{
		pal_index = 0;
	}


pal_swap_set(s_player_palette,pal_index,false)
draw_sprite_ext(sprite_index,image_index,xx+16,yy+26,xscale*image_xscale,yscale,image_angle,c_white,image_alpha);
pal_swap_reset();

if sprite_index = hug exit;
pal_swap_set(s_pickaxe_palette,pal_index,false);
var wob = wobble*13;
var x_off = 0;

if sprite_index = s_player_walk_happy{
	wob = 0;	
	x_off = -2*image_xscale;
}
draw_sprite_ext(weapon_sprite_index,image_index,xx+16+x_off,yy+12+4,xscale*image_xscale,yscale, wob,c_white,image_alpha);
pal_swap_reset();