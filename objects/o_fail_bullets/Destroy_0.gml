/// @description 


if room = r_boss_battle_second_phase{
var spr = s_bullet_death_scared;
}else{
	spr = s_bullet_death;
}

var s = create_effect(xx,yy,s_bullet_death,2);
s.image_angle = (image_index-1)*45;


if !instance_exists(o_player) exit;

if room = r_level_3 and point_distance(x,y,o_player.x,o_player.y) < 64{
	audio_play(a_bullet_break, 0, 0, 0);
}
