/// @description interact with the player
hit_timer = 0;
hp -= get_attack();


if hp <= 0 {
		change_tile(x,y,FLOOR);
		audio_play(a_whack,0,0,0);
}else{
		audio_play(a_rock_hit,0,0,0);	
}	
