/// @description Insert description here
// You can write your code in this editor
event_inherited();


title	    = "[c_yellow]BRONZE";	
description = "YOU PERFORMED...";



if global.current_score > .6 {
	title	    = "[c_yellow]SILVER";	
	description = "YOU PERFORMED OK";
}


if global.current_score > .7 {
	title	    = "[c_yellow]GOLD";	
	description = "YOU PERFORMED WELL";
}


if global.current_score > .8 {
	title	    = "[c_yellow]PLATINUM";	
	description = "YOU PERFORMED INCREDIBLE";
}


if global.current_score > .9 {
	title	    = "[c_yellow]DIAMOND";	
	description = "YOU PERFORMED FANTASTICALLY";	
}


if global.current_score = 1 {
	title	    = "[c_yellow]PERFECT";	
	description = "YOU HAD A PERFECT PERFORMANCE";	
}