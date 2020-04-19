///@arg x_move 
///@arg y_move
var x_move = argument0;
var y_move = argument1;

x += x_move; 
y += y_move;
				
if step_index = 0{
	audio_play(s_step1,0,0,0);
	step_index = 1;
}else{
	audio_play(a_step2,0,0,0);
	step_index = 0;
}
				
image_index = 0;
image_speed = 4;
sprite_index = s_player_walk;

if beat_combo() and room != r_boss_battle_second_phase{
	image_speed = 2;
	sprite_index = s_player_walk_happy;	
}