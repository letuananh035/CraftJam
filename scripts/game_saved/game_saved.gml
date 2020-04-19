//game_saved
///using ini

//[SECTION] (KEY) = VALUE


//open an ini file for saving
ini_open("save.ini");
ini_write_real("GemCount","Gold", global.gems);
ini_write_real("GemCount","Gold_Max", global.gems_all);
ini_write_real("Dungeons","Dragon", global.dragon_complete);
ini_write_real("Dungeons","Cloak", global.cloak_complete);
ini_write_real("Dungeons","Antlion",global.antlion_complete);
ini_close();