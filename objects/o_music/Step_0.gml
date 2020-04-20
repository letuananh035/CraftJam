/// @description Insert description here
// You can write your code in this editor

#region stop audio
if song_index = a_silence exit;

#endregion

_pos = audio_sound_get_track_position(song_index)*60;
_beat = _pos%bpm_list[current_song]/bpm_list[current_song];
_division = (_beat*beat_division_list[current_song])%1;
_current_division = (_beat*beat_division_list[current_song]);

	
if abs(_division-.5) > .45{ 
	

	#region squash and stretch world

	offbeat_timer = 0;
	
	if can_we_add_beat = 0{


	with o_boss_controller_second_phase{
		
		event_user(15); //lazers	
	}

	with o_fail_bullets {
		event_user(0);		
	}	
	
	with o_bullet_generator{
		event_user(0);	
	}

	
	with o_cutscene_parent{
		y_ui_bounce_timer = 0;
	}
	

	with o_alien_plant{
		scale_timer = 0;
	}
	
	with o_interactable_parent{
		hit_timer = hit_time*.3;
	}
		for (var i = 0; i < 3 ; i++){
			ore[i , ORE_SCALE_TIMER] = ore_time*.3;	
		}
			can_we_add_beat++;
	}
	beat_size = lerp(beat_size, 20, .25);
	#endregion
	#region press beat flag

	}else{
	offbeat_timer++;
	//total time for 120 bpm beat is 16-20 steps per beat
	with o_fail_bullets{
			if other.offbeat_timer >= 14{
			no_damage_timer = SEC*.1;
		}
	}
	#region flags	
	#endregion
	can_we_add_beat = 0;
	#endregion
	beat_size = lerp(beat_size, 10, .25);
}

if current_song != prev_song{
	song_change = true;
	prev_song = current_song;
}

if song_change{
	
	audio_sound_gain(song_index,lerp(audio_sound_get_gain(song_index),0,.25),1);
	if audio_sound_get_gain(song_index) < .1{
		audio_stop_sound(song_index);
		song_starting = true;
		song_change = false;
		song_index = audio_play_sound(song_list[current_song], 0, true);
	}
}

if song_starting{
	audio_sound_gain(song_index,lerp(audio_sound_get_gain(song_index),1,.25),1);
	if audio_sound_get_gain(song_index) > .9{
		song_starting = false;
	}
}

if instance_exists(o_player){
	key_pressed = o_player.left_pressed || o_player.right_pressed || o_player.up_pressed || o_player.down_pressed;
	var _real_key_time = _pos-key_sync;
	var _key_beat = _real_key_time%bpm_list[current_song]/bpm_list[current_song];
	var _key_division = (_key_beat*beat_division_list[current_song])%1;


	if abs(_key_division-.5) <= .15{
	#region	
	with o_fail_bullets{
		no_damage_timer = SEC*.1;
		
	}
	#endregion
		
		with o_player{
			can_move = true;	
		}	
	}

	if abs(_key_division-.5) <= .15 {
		key_pressed_last = false;
	}
	if key_pressed{
		
		if abs(_key_division-.5) > .15 && !key_pressed_last{
			//audio_play_sound(snd_switch,0,0);
			on_beat = true;
		}else{
			
			
			on_beat = false;
		}
		key_pressed_last = true;
	}
	

	
}
prev_song = current_song;