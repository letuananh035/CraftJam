/// @description 
// Inherit the parent event


event_inherited();

if room != r_tutorial{
	sprite = s_crafting_bench_neon;	
}else{
	sprite = s_crafting_bench;	
}


outline = true;
outline_color = c_red;

cost[0] = 0;
cost[1] = 0;
cost[2] = 0;

cost[0] = instance_number(o_rock);


if room = r_tutorial {
	cost[0] = 5;
	cost[1] = 0;
	cost[2] = 0;	
}


hp_max = cost[0] + cost[1] + cost[2];

hp = hp_max;

if room = r_boss_battle{
	cost[0] = 5;
	hp = 5;
	hp_max = 5;
}

if room = r_boss_battle_second_phase{
	cost[0] = 1;
	hp = 1;
	hp_max = 1;
}