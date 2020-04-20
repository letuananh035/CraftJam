/// @description 


change_music(music.boss);

//lazer state 0 WARNING 1 WARNING 2 WARNING 3 FIRE, stay silent for 3 measures

enum get_lazer_state {
	rest,
	warning,
	fire

}
timer = 0;
lazeryscale = 1;
//user event 15 handles lazer state, 
//controlled by o_music
current_lazer_state = 0;
lazer_state[0] = get_lazer_state.rest; 
lazer_state[1] = get_lazer_state.warning; 
lazer_state[2] = get_lazer_state.warning; 
lazer_state[3] = get_lazer_state.fire; 

lazer_state[4] = get_lazer_state.rest; 
lazer_state[5] = get_lazer_state.rest; 
lazer_state[6] = get_lazer_state.rest; 
lazer_state[7] = get_lazer_state.rest; 

lazer_warning = false;
lazer_fire = false;




last_rock_x = 0;
last_rock_y = 0;
crafting_bench_flag = false;
disable_rock_creatiron = false;
stronger_attacks = false;

spawn_top = false;
spawn_left = false;
depth = 1000;
bot_tile = 8;
top_tile = 5;
left_tile = 7;
right_tile = 12;
global.hp_max = 3;
global.hp = 5;

state = 0;
create_rock_timer = 0;

idle_time = SEC*6;
attack_time = SEC;
attack_timer = 0;
#region attacks

lazer[0] = bot_tile;
lazer[1] = bot_tile-1;
lazer[2] = bot_tile-2;

init_attacks = true;


idle_timer = 0;

lazer_warning = SEC;
lazer_duration = SEC;

bullet_duration = SEC*3;
bullet_firing_speed = SEC*.4;

#endregion

