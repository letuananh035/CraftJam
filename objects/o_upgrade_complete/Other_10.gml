/// @description Add health
event_inherited();

//default_crit_amount += 2;
//default_crit_chance += .1;
//wep[wep_current, stats_weapon.crit_damage ] += 2;
//wep[wep_current, stats_weapon.crit_chance ] += .1;

#region //tutorial boss spawn
	switch room {
		case r_tutorial: create(0,0,o_cutscene_alien);
		break;
		
		case r_main: room_goto(r_level_2);
		break;
		
		case r_level_2: room_goto(r_level_3);
		break;
		
		case r_level_3:
		
		room_goto(r_boss_battle);
		
		create(0,0,o_cutscene_alien_boss_intro);
		break;
		
		
	}
#endregion