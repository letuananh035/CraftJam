/// @description format_text(text_array, width, font)
/// @function format_text
/// @param text_array
/// @param  width
/// @param  font


/*
the goal is that we are going to have a bunch of text but we also need to format the RETURNS so it goes
onto the next line and it all fits nicely in the box
*/
var text = argument0;
var width = argument1;
var font = argument2;

//Set the font, as we get the size of the font we need to make sure we know what type of font it is
draw_set_font(font);

//Get the number of pages
var array_size = array_length_1d(text);
var last_space = 0; //if we exceed the width then we go back to that space and add a return

//Loop through the pages
for (var i=0; i<array_size; i++) {
    //Set the count to zero, count is our current position in our text
    var count = 0;//every time we hit a new page we need to set our count to zero, because count is that little thing that creates the new letter
    
    //Loop through the characters
    var char = string_char_at(text[i], count); 
    //the @ makes the array into a array refrence , NOT AN ARRAY , just a refrence
    while (char != "") {
        var str = string_copy(text[i], 1, count);
        var str_width = string_width(string_hash_to_newline(str)); //check the string to see if it has exceeded our max width
        
        //Update the last space
        if (char == " ") last_space = count;
        //this saves a space in last_space
        
        //Check the width 
        if (str_width > width) {
            //Remove the space
            text[@ i] = string_delete(text[i], last_space, 1);
            
            text[@ i] = string_insert("\n", text[i], last_space);
        }
        //Increment count
        count++;
        
        //need to update the char otherwise it goes forever lol
        char = string_char_at(text[@ i], count);
       }
}

return text;

