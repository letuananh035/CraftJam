/// @description Add health
event_inherited();

//wep[wep_current, stats_weapon.crit_damage ] += 2;
//wep[wep_current, stats_weapon.crit_chance ] += .1;
global.hp = 5;
audio_play(a_crit,0	,0,0);
audio_play(a_impact,0,0,0);
audio_play(a_break,0,0,0);

global.boss_hp -= 1;
if global.boss_hp <= 0{
	
	if room = r_boss_battle{
	global.hp = 5;
	global.skip_boss_cutscene = false;
	global.killed_by_boss = 0;
	create(0,0,o_cutscene_alien_boss_rip);	
	
	}else if room = r_boss_battle_second_phase{
	global.hp = 5;
	instance_destroy(o_fail_bullets);
	instance_destroy(o_boss_controller_second_phase);
	audio_music_stop();
	global.skip_boss_cutscene = false;
	global.killed_by_boss = 0;
	create(0,0,o_cutscene_alien_boss_2_rip);	
		
	}
}

if global.boss_hp = 3{
	with o_boss_controller_second_phase{
		current_lazer_state = 0;
	}
}
with o_boss_controller{
	o_boss_controller.crafting_bench_flag = false;	
}