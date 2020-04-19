
if global.combo_bonus_damage_mod > 1 and instance_exists(o_combo_parent) and o_combo_parent.combo > global.combo_bonus_damage_combo_thresh{
		other.damage_ *= global.combo_bonus_damage_mod;
}
	
	
	if o_game.crit_timer > 0 { 
		other.damage_ *= o_game.crit_timer_mod;
		other.crit_text = true;
	}

	if o_game.crits_on_kill_timer > 0 {
		var s = false;
		if other.made_from_boomerang{
		other.damage_ *= global.boomerang_crit;	 s = true;
		}else if other.bullet_type >= 0{
		other.damage_ *= wep[other.bullet_type, CRIT];  s = true;
		}else if other.made_from_player{
		other.damage_ *= 2;	 s = true;
		}
		if  s = true{
		other.crit_text = true;
		}
	}
	
	health_ -= other.damage_*global.global_damage_mod;
	
	
	
	//crits on ko
	if health_ <= 0{
		
		

		if global.atk_spd_on_kill_time > 0{
			with o_game{
				atk_spd_on_kill_timer = global.atk_spd_on_kill_time;
			}
		}
		

		
		
		if global.crit_on_kill_time > 0 { 
			with o_game{
				crits_on_kill_timer = global.crit_on_kill_time;
			}
		}
	
	}