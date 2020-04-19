/// @description get_visible_text_blank(pause_time)
/// @function get_visible_text_blank
/// @param pause_time
var pause_time = argument0;
var new_string = string_copy(text[text_page], 1, text_count);

if (string_length(new_string) > string_length(text_visible)) {
    //Check for the last key
    var last_char = string_char_at(new_string, text_count);
    if (last_char != " " && last_char != "#" && last_char != "") {
		
/// @description text_to_sound
//custom controls each portrait to a specific sound 
if voice = noone
{
	voice = "sfx_text_voice_key";
}

audio_play(voice,0,0,0);

    }
    /*Check for a pause, if it hits any of these characters there is going to be
    a little pause */
    if (is_in_array(last_char, array(".", ",", "!", "?")) && text_count < string_length(text[text_page])) {
        alarm[0] = pause_time;
       } 
        //Set the Visible text
        text_visible = new_string;
}

