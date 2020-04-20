/// @description Insert description here
// You can write your code in this editor

fade_alpha = 0;
scroll = 0;
credits = [
	"CRAFT JAM",
	"MADE FOR THE JAMCRAFT GAMEJAM",
	"",
	"Made By:",
	"",
	"DIRECTOR / DESIGN /  PROGRAMMING\n@BOONDEV - OSCAR GONZALEZ",
	"",
	"@SOVESDEV - TECHNICAL PROGRAMMING",
	"",
	"@FAILPOSITIV - MUSIC / AUDIO EFFECTS / ALIEN",
	"",
	"@WIGGLYGULL - CHARACTER ART", 
	"",
	"@SOFTCIRCUITRY - ENVIORMENTAL ART",
	"",
	"@THIMZGAMER - MISC ART",
];

bg_col = make_color_rgb(30,23,43);

if instance_exists(o_music){
	instance_destroy(o_music);
	audio_stop_all();
}
audio_play_sound(a_credits,9,0);