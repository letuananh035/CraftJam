/// @description audio_effect(sound_id, loops, priority);
/// @function audio_effect
/// @param sound_id
/// @param  loops
/// @param  priority

var sound_id = argument0;
var loops = argument1;
var priority = argument2;

// Don't let hitmarkers overlap
if sound_id = a_bass
{
	audio_stop_sound(sound_id);
}

if instance_exists(o_player)
{
	audio_emitter_position(o_audio.sfx_emitter,x,y,0);
}

audio_play_sound_on(o_audio.sfx_emitter, sound_id, loops, priority);