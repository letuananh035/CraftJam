


#region weapon stats
globalvar wep, wep_current, default_crit_amount, default_crit_chance;
							
default_crit_amount = 0;
default_crit_chance = 0;
global.combo_bonus_attack = .5; //player attack
global.beat_thresh = 5;//amoutn of beats we have to hit until we get combo effects

global.star_power_attack = 0;//end of level feeling of power that you can destroy anything

enum stats_weapon{
	attack,
	crit_chance,
	crit_damage,	
	size_
}


enum type_weapon{
	pickaxe_iron,
	pickaxe_steel,
	pickaxe_diamond,
	size_
}
wep_current = 0;

wep[type_weapon.pickaxe_iron, stats_weapon.attack]		= 1;
wep[type_weapon.pickaxe_iron, stats_weapon.crit_chance] = 0;
wep[type_weapon.pickaxe_iron, stats_weapon.crit_damage] = 0; //200% 


#endregion