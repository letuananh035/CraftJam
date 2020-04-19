

ini_open("save.ini");

//put it in the very beggining for efficiancy
if ini_key_exists("GemCount","Gold_Max"){
	global.gems_all = ini_read_real("GemCount","Gold_Max",0);
}else{
	global.gems_all = 0;	
}
if ini_section_exists("Keybind"){
	global.up_key = ini_read_real("Keybind","up", 0);
	global.left_key = ini_read_real("Keybind","left", 0);
	global.right_key = ini_read_real("Keybind","right", 0);
	global.down_key = ini_read_real("Keybind","down", 0);
	global.action_key = ini_read_real("Keybind","action_1", 0);
	global.back_key = ini_read_real("Keybind","action_2", 0);
	global.pause_key = ini_read_real("Keybind","pause", 0);
	global.up_key = ini_read_real("Keybind","up", 0);	
	global.restart_key = ini_read_real("Keybind","restart",ord("E"));
	global.bomb_key = ini_read_real("Keybind","bomb",ord("F"));
	global.badge_key = ini_read_real("Keybind","badge",ord("Q"));
}
ini_close();


