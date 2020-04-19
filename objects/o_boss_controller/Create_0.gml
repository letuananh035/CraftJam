/// @description 

last_rock_x = 0;
last_rock_y = 0;
crafting_bench_flag = false;
disable_rock_creatiron = false;
stronger_attacks = false;
depth = 1000;
bot_tile = 8;
top_tile = 5;
left_tile = 7;
right_tile = 12;
global.hp_max = 5;
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

enum bullet_type{
	horizontal_cards,
	vertical_cards,
	diagonal_cards
}

enum boss_state{
	idle,
	lazer,
	bullets,
	fire_tile,
	player_standing_tile_on_fire,
	duplicate_player
}