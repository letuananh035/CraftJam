/// @description idle


idle_timer--;
stronger_attacks = false;
if idle_timer <= 0{
	init_attacks = true;
	#region set atttacks duration
	//LAZERS
	lazer_warning = SEC;
	lazer_duration = SEC; 
	//BULLETS
	bullet_duration = SEC*3;
	bullet_firing_speed = SEC*.4;
	#endregion
	
	#region set lazers
		top_tile = 5;
		bot_tile = 8;
		lazer[0] = -100;
		lazer[1] = -100;
		lazer[2] = -100;
	var player_y = o_player.y div 32;	
	switch player_y{
		case 5: 
						lazer[0] = top_tile;
						lazer[1] = top_tile+1;
						if stronger_attacks lazer[2] = top_tile+2;
		break;
		case 6:
						lazer[0] = top_tile;
						lazer[1] = top_tile+1;
						if stronger_attacks lazer[2] = top_tile+2;
		break;
		case 7:
						lazer[0] = bot_tile;
						lazer[1] = bot_tile-1;
						if stronger_attacks lazer[2] = bot_tile-2;
		break;	
		case 8:
						lazer[0] = bot_tile;
						lazer[1] = bot_tile-1;
						if stronger_attacks lazer[2] = bot_tile-2;
		break;	
	}
	#endregion

	state = boss_state.bullets;
	idle_timer = idle_time;
}