/// @description string_copy_words(string, index, count);
/// @function scr_string_copy_words
/// @param string
/// @param  index
/// @param  count
var str = argument0;
var index = argument1;
var count = ceil(argument2); //always rounds a number up

var char = string_char_at(str, count);
while (char != " " and char != "") {
    count++;
    char = string_char_at(str, count);
    
    } 
var return_str = string_copy(str, index, count);
return return_str;


//we passed in a string, we pass an index which is the start of the string or 
// where we want to start copying
//if thats not a space
//that way we copy whole words
