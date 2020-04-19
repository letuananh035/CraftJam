// Set Number Of Available Audio Channels

audio_channel_num(1024);

// Set Position to 0,0 for now, will be changed in Step
xx = 0;
yy = 0;

// Create Emitter Lists for both the Emitter ID and the time until deletion
emitter_list = ds_list_create();
emitter_list_time = ds_list_create();


// Load Audiogroups
audio_group_load(audiogroup_default); // should be redundant at some point in the future
audio_group_load(audiogroup_sfx);
audio_group_load(audiogroup_music);

// commented out to check if this is necessary, considering these values are set later in the save/load part
//global.volume_sfx = 1;
//global.volume_music = 1;

emitter_falloff_distance_ref = 200;
emitter_falloff_distance_max = 1800;

music_current = noone;
music_changeto = noone;
music_loops = 0;


// LEGACY STUFF !!
// LEGACY STUFF !!
// LEGACY STUFF !!


//Create the emitter for random things
ran_emitter = audio_emitter_create();

current_song_bg = noone;
combo_bg_gain = 0;//BG of the combo sound effects
coin_additional_pitch = 0;

audio_group_set_gain(audiogroup_sfx,1,0);
audio_group_set_gain(audiogroup_music,1,0);
audio_group_set_gain(audiogroup_default, 1,0);