/// @description get_visible_text_blank(pause_time)
/// @function get_visible_text_blank
/// @param pause_time

var pause_time = argument0;

if (text_page > array_length_1d(text)-1){
	state = dialog_box.final;
	exit;
}

if text_page > 1000{
	state = dialog_box.final;
	exit;
}

var new_string = string_copy(text[text_page], 1, text_count);

if (string_length(new_string) > string_length(text_visible)) {
    //Check for the last key make him talk
    var last_char = string_char_at(new_string, text_count);

//CHECK FOR PARENTHESES
if last_char = "("{
	talking = false;
}

if last_char = ")"{
	talking = true;
}
    if (last_char != " " && last_char != "," && last_char != "" && last_char != "\n" &&
	last_char != "." && last_char != "?" && last_char != ")" && last_char != "(") {
		
		

//audio_emitter_gain(o_audio.ran_emitter, random_range(.01, .08));
//audio_emitter_pitch(o_audio.ran_emitter, random_range(1+pitch_add, 1.1+pitch_add));
//audio_play_sound_on(o_audio.ran_emitter, vo, false, 10);

//animate character
if global.talker != noone{
	if talking = true {
	global.talker.image_speed = .7;
	}
}
	
}
//no animate
	if global.talker != noone{
	var text_length = string_length(text[text_page]);
	if talking = false or text_count >= text_length {
	global.talker.image_speed = 0;
	global.talker.image_index = 0;
	}
}	

    /*Check for a pause, if it hits any of these characters there is going to be
    a little pause */
    if (is_in_array(last_char, array(".", ",", "!", "?")) && text_count < string_length(text[text_page])) {
        alarm[0] = pause_time;
       	global.talker.image_speed = 0;
		global.talker.image_index = 0;
	   } 
        //Set the Visible text
        text_visible = new_string;
		
}
 var text_length = string_length(text[text_page]);
  if text_count >= text_length and global.talker != noone{
	global.talker.image_speed = 0;
	  global.talker.image_index = 0;
  }