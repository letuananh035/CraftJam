

var attack = 1;


attack += global.star_power_attack; //bonus attack when grabbing an item

	
if room = r_boss_battle_second_phase{
	global.beat_count = 9999;	
}

var groovy = false;
if beat_combo() {
	var color = choose(C_AQUA,C_YELLOW,C_FUCHISIA);
	
	while color = o_game.last_crit_color {
		color = choose(C_AQUA,C_YELLOW,C_FUCHISIA);
	}
	o_game.last_crit_color = color;
	
	if room = r_boss_battle_second_phase{
		color = C_YELLOW;	
	}
	
	create_text(o_player.xx,o_player.yy+10,SEC*.25,"CRIT",color,0);	

if room = r_boss_battle_second_phase{
	var s = create(o_player.xx,o_player.yy,o_miss_text);
	s.alarm[0] = SEC*.25;
	s.text = "SUPER";
	s.color = C_GUM;
}


	attack += global.combo_bonus_attack;
	audio_play(a_break,0,0,0);
	groovy = true;
}


if chance(default_crit_chance) {
create_text(x,y,SEC,"CRIT",C_YELLOW,0);
attack *= default_crit_amount;
if groovy = true {
	var audio = a_impact;	
		audio_play(a_crit,0,0,0);
}else{
		
		audio_play(a_break,0,0,0);
}

}

if global.star_power_attack >= 3 and hp < attack and beat_combo(){
	audio_play(a_impact,0,0,0);
}

return attack;