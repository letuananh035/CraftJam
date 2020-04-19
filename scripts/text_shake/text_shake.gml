draw_set_halign(fa_right);
myString="text shake";

draw_x=x;
draw_y=y+32;

intensity = .5; //shakeyness

//get how long the string is in terms of width
length = string_length(string(myString));

for(i=1;i<=length;i+=1){ //loop through each character of the string
    str=string_copy(myString,i,1); //1 character of the string 
    length_so_far=string_width(string_copy(myString,1,i)); //how far to offset the text
    draw_text(draw_x+length_so_far+random_range(-intensity,intensity),draw_y+random_range(-intensity,intensity),str);
}