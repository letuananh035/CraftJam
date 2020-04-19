/// @description text_to_sound
//custom controls each portrait to a specific sound 
/*
switch (o_dialog.portrait){

    case s_log_portrait:
        audio_emitter_gain(emitter, random_range(.3, .5));
        //audio_emitter_pitch(emitter, random_range(voice_pitch-.1, voice_pitch+.1));
        audio_emitter_pitch(emitter, random_range(voice_pitch-.1, voice_pitch+.1));
        audio_play_sound_on(emitter, choose(a_key_1,a_key_3) , false, 10); break;
  
        
     case s_snowy_portrait:
        audio_emitter_gain(emitter, random_range(.3, .5));
        audio_emitter_pitch(emitter, random_range(voice_pitch+2, voice_pitch+2.1));
        audio_play_sound_on(emitter, a_voice_snowy , false, 10); break;
    
    case s_gaston_portrait_idle:
        audio_emitter_gain(emitter, random_range(.3, .5));
        audio_emitter_pitch(emitter, random_range(voice_pitch+0.1, voice_pitch+0.3));
        audio_play_sound_on(emitter, a_voice_gaston , false, 10); break;
    
     case s_gaston_portrait_closed:
        audio_emitter_gain(emitter, random_range(.3, .5));
        audio_emitter_pitch(emitter, random_range(voice_pitch+0.1, voice_pitch+0.3));
        audio_play_sound_on(emitter, a_voice_gaston , false, 10); break;


    case s_portrait_chinchilla:
        audio_emitter_gain(emitter, random_range(.3, .5));
        audio_emitter_pitch(emitter, random_range(voice_pitch-8.1, voice_pitch-8.2));
        audio_play_sound_on(emitter, a_voice , false, 10); break;     
        
    case s_elizabeth_portrait:
        audio_emitter_gain(emitter, random_range(.3, .5));
        audio_emitter_pitch(emitter, random_range(voice_pitch+2.5, voice_pitch+2.7));
        audio_play_sound_on(emitter, a_voice , false, 10); break; 
        
    case s_elizabeth_portrait_closed:
        audio_emitter_gain(emitter, random_range(.3, .5));
        audio_emitter_pitch(emitter, random_range(voice_pitch+2.5, voice_pitch+2.7));
        audio_play_sound_on(emitter, a_voice , false, 10); break;             
    
    case s_fr_portrait:
        audio_emitter_gain(emitter, random_range(.3, .4));
        audio_emitter_pitch(emitter, random_range(voice_pitch+0.0, voice_pitch+0.1));
        audio_play_sound_on(emitter, a_voice_fr , false, 10); break;
    
    default:
        audio_emitter_pitch(emitter, random_range(voice_pitch+4.1, voice_pitch+4.2));
        audio_emitter_gain(emitter, random_range(.3, .5));
        audio_play_sound_on(emitter, choose(a_voice) , false, 10);break;
        
 
        }


