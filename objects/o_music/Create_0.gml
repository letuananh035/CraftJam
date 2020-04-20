/// @description Insert description here
// You can write your code in this editor



if (instance_number(o_music) > 1) {
	var first = instance_find(o_music, 0);
	if (id != first) { instance_destroy(); exit; }
}



_pos = 0;
_beat = 0;
_division = 0;

_current_division = 0;
offbeat_timer = 0;

enum music{
	music_planet,
	boink,
	jamming,
	boss,
	nightcycle
}


song_list = [
	a_music_planet,//,
	Boink_v0_2,
	a_jamming_and_crafting,
	a_boss_battle,
	a_nightcycle,
	//_120_BPM_Online_Metronome__3_min____StudyBass,
]

bpm_list = [
	120,
	120,
	120,
	120,
	120
	//120
]

beat_division_list = [ //how many beats between each bar
	4,
	4,
	4,
	4,
	4
	//4
]

current_song = 0;
prev_song =	-1;

song_change = false;

song_index = audio_play_sound(song_list[current_song], 9, 1);

song_starting = false;

beat_hit = -1;

key_pressed = false;
key_sync = 0;
key_pressed_last = false;

on_beat = false;//use this to check if input was on beat

fail_beat_flag_2 = false;
fail_beat_flag_1 = false;
can_we_add_beat	 = false;
//sync room stuff
beat_size = 10;
beat_color = c_gray;

average_delay = ds_list_create();
