//game_saved
///using ini

//[SECTION] (KEY) = VALUE
/*

	if (ini_key_exists("playerOne", "name")) {
		ini_key_delete("playerOne", "name");
	}
	if (ini_section_exists("playerOne")){
		ini_section_delete("playerOne"));
	}

*/

//open an ini file for saving
ini_open("save.ini")



if ini_section_exists("Dungeons"){
	if ini_key_exists("Dungeons","Dragon") {
		global.dragon_complete = ini_read_real("Dungeons","Dragon",0);
		//ADD THE SWORD UPGRADES
	}
	
		if ini_key_exists("Dungeons","Cloak"){
		global.cloak_complete = ini_read_real("Dungeons","Cloak",0);
	}
		
		if ini_key_exists("Dungeons","Antlion"){
		global.antlion_complete = ini_read_real("Dungeons","Antlion",0);

	}

}


ini_close();

if global.player = 2 global.dragon_complete = true;