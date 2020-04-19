///@arg get text_w

var input_text = argument0;

var move_to_next = false;

var output_width = false;
var output_text = "";
var len = 0;
var len_max = 0;
var len_size = 1;

for (var i = 0; i < string_length(input_text);i++){	
		input_text = string_replace(input_text,"_","T"); //WE DO THIS TO GET NORMAL SPACING
		input_text = string_replace(input_text," ","Ö"); //WE DO THIS TO GET NORMAL SPACING
	if string_char_at(input_text,i+1) = "[" {
			move_to_next = false;
		}
		if string_char_at(input_text,i+1) = "]" {
			move_to_next = true;
			len -= len_size;
		}
		if move_to_next = true and string_char_at(input_text,i+1) != "]"{
			
				//desc_text_for_width += string_char_at(input_text,i+1);
				output_text +=  string_char_at(input_text,i+1);
		}
	}
return output_text;