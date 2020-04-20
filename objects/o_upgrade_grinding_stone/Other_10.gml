/// @description Add health
event_inherited();

//wep[wep_current, stats_weapon.crit_damage ] += 2;
//wep[wep_current, stats_weapon.crit_chance ] += .1;

#region //tutorial boss spawn
	if room = r_tutorial{
		create(0,0,o_cutscene_alien);
	}
#endregion