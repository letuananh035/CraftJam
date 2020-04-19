/// @params index

audio_group_set_gain(audiogroup_music,  .5,0);
with o_music{
	song_index = audio_play_sound(argument0, 9, 1);
}