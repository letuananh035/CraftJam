/// @description 



change_star(global.star_gain_amount);
ore[get_ore , ORE_COUNT]	   += 1;
ore[get_ore , ORE_SCALE_TIMER]  = 0;
ore[get_ore , ORE_FLASH_TIMER]  = SEC*.5;
ore[get_ore , ORE_X_OFFSET]		= 7;
ore[get_ore	, ORE_FLASH_COLOR]  = c_white;
