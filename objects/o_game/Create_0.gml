/// @description initialize game


global.combo	 = 0;
global.combo_max = 0;
macros();
global.move_count = 0;


hp_wobble_timer = 0;

global.boss_complete = false;
global.skip_boss_cutscene = false;

global.hp_max = 5;
global.hp = 5;
global.boss_hp_max = 4;
global.boss_hp = 3;

global.hide_ui = true;

global.killed_by_boss = 0;





#region controls
space = false;
#endregion
#region font and scribble
var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+%*?()/@=Ö_";
default_font = font_add_sprite_ext(s_font_custom, _font_string, true, 1);

scribble_init("","s_font_custom", false);
pal_swap_init_system(shd_pal_swapper);

crafting_bench_flag = false;
teleport_ui_y_offset = -80;//offset for teleport

allow_teleport = false;


//Add the spritefont called "fnt_score" to Scribble
//This function works the same as GM's native font_add_sprite_ext() (but is always proportional)
scribble_add_spritefont("s_font_custom",
_font_string,
1,4);
sprite_set_offset(s_font_custom,3,4);
draw_set_font(default_font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
#endregion
room_goto(r_main_menu); //main room

global.darkness_alpha = .9;
reset_game();

globalvar default_hp , player_attack , wobble, default_font, 
ore, ore_timer,ore_time, ore_scale;
time = 0;
default_hp = 4;
player_attack = 1;
wobble = 0;

enum ore_type{
	iron_,
	steel_,
	diamond_,
	size_
}

ore_time = SEC;
for (var i = 0; i < ore_type.size_; i++){
	ore[i , ORE_COUNT]			= 0; //weak ore
	ore[i , ORE_SCALE]			= 1; //weak ore
	ore[i , ORE_SCALE_TIMER]    = 0; //weak ore
	ore[i , ORE_SCALE]			= 1; //weak ore
	ore[i , ORE_FLASH_TIMER]	= 0;
	ore[i , ORE_FLASH_COLOR]	= c_white;
	ore[i , ORE_X_OFFSET]		= 0;
}
	ore[0 , ORE_TITLE]			= "IRON";
	ore[1 , ORE_TITLE]			= "STEEL";
	ore[2 , ORE_TITLE]			= "DIAMOND";



last_disco_light = 0;
last_disco_xscale = 0;

var color = choose(C_AQUA,C_YELLOW,C_FUCHISIA);
last_crit_color = color;
