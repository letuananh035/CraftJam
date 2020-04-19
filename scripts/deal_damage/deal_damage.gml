with o_player{
	if !invincibile_{
			hurt_timer = hurt_time;
			invincibile_ = true;
			alarm[0] = SEC*3;
			global.hp--;
			global.hp = clamp(global.hp, 0, global.hp_max);	
			invincibile_ = true;
			audio_play(a_gasp,0,0,0);
	}
}