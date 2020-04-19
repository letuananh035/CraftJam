/// @description 
event_inherited();
alarm[0] = 1;//initialize grid


outline = true;

outline_color = true;
hp = default_hp;
hp_max = hp
hit_timer = 0;
hit_time = SEC;
we_are_hit = false;

hit_bar_alpha = 0;
border_lerp = 1;
border_actual = 1;

sprite = s_rock_tile;
if room != r_tutorial{
//	var s = create(x+16,y+32-16-25,obj_light_parent);
//	s.color = C_YELLOW;
//	s.radius = 32;
	sprite = s_rock_tile_neon;	
}
move_bar_up_timer = 0;
move_bar_up_time = SEC;
move_bar_flag = false;
nine_y_offset = 24;