/// @description  string_lpad(string, char, len)
/// @param string
/// @param  char
/// @param  len
var s = string(argument0);
var n = string_length(s);
var z = argument2;
if (n >= z) return s;
var c = argument1;
return string_repeat(c, (z - n) div string_length(c)) + s;