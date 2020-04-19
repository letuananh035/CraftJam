///@arg sound
///@arg x
///@arg y
///@arg gain1
///@arg gain2
///@arg pitch1
///@arg pitch2
var sound = argument0;
var xx = argument1;
var yy = argument2;
var gain_1 = argument3;
var gain_2 = argument4;
var pitch_1 = argument5;
var pitch_2 = argument6;

if instance_exists(o_player){
audio_emitter_position(o_audio.ran_emitter,xx,yy,0);
}
audio_emitter_gain(o_audio.ran_emitter, random_range(gain_1,gain_2));
audio_emitter_pitch(o_audio.ran_emitter, random_range(pitch_1,pitch_2));
audio_play_sound_on(o_audio.ran_emitter, sound , false, choose(0,1,2,3,4,5,6,7,8));
