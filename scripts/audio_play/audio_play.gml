/// @description audio_play(index,x,y)
/// @function audio_play
/// @param index
/// @param x
/// @param y
/// @param id


var output = argument0;//audio_parser_index(argument0);
var input_id = argument3;
if argument3 == 0
{
	input_id = noone;
}


// Check if Positioned or Not
if ((argument1 == noone) && (argument2 == noone)) || ((argument1 == 0) && (argument2 == 0))
{
	// Play Global Sound
	var sound = audio_play_sound(output,1,false);
	//audio_sound_pitch(sound,audio_parser_pitch(argument0,input_id));
	audio_sound_gain(sound,1,0);
}
else
{
	// Play Local Sound
	var emitter = audio_emitter_create();
	audio_emitter_falloff(emitter,o_audio.emitter_falloff_distance_ref,o_audio.emitter_falloff_distance_max,1);
	audio_emitter_position(emitter,argument1,argument2,0);
	audio_emitter_pitch(emitter,1);//audio_parser_pitch(argument0,input_id)
	audio_emitter_gain(emitter,1);//audio_parser_volume(argument0,input_id
	var sound = audio_play_sound_on(emitter,output,false,1);
	ds_list_add(o_audio.emitter_list,emitter);
	ds_list_add(o_audio.emitter_list_time,room_speed*audio_sound_length(sound));
}