

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var x_ =	display_get_gui_width()/2; 
var y_ = 	-25+display_get_gui_height()/2;
for (var i_ = 0; i_ <= 4; i_++){

	switch i_{
	case 0: string_ = "CONTINUE"; break;
	case 1: if global.floor_number >0  and global.prologue_complete = true
	or global.racetrack = true{
		
		if global.challenge = 0{
		if room = r_hub{
			string_ = "START"; 
			}else{
			string_ = "RETRY";
			
			if room = r_tutorial{
			string_ = "???";	
			}
		}
		}else{
		string_ = "END RUN";	
		}
		
		
		}else{ string_ = "???";	 end_state[i_] = pau.menu_main;} break;
	case 2: string_ = "STUFF";  end_state[i_] = pau.menu_upgrade; break;
	case 3: string_ = "SETTINGS";  end_state[i_] = pau.menu_settings;break;
	case 4: string_ = "TITLE SCREEN"; 
	
	if room = r_tutorial{string_ = "???";}
	if room = r_hub{ string_ = "END PROGRAM"}; end_state[i_] = pau.menu_exit; break;
	}
	if i_ = pause_menu_choose{
		draw_text_sine(string_,global.font,main_menu_text_scale,3+x_-(string_width(string_)/2),y_+i_*15,C_YELLOW,0);
	}else{
		draw_text(x_,y_+i_*15,string_);
	}
}

if o_input.up_pressed and pause_menu_choose -1 != -1 and state = pau.menu_main{
	text_timer = 0;
	audio_play("a_high_blip",0,0,0);
	pause_menu_choose = max(pause_menu_choose-1,0);
}
if o_input.down_pressed and pause_menu_choose +1 != 5 and state = pau.menu_main{
	text_timer = 0;
	audio_play("a_high_blip",0,0,0);
	pause_menu_choose = min(pause_menu_choose+1,4);
}


//and open_transition_on = false
if (o_input.back or o_input.extra  or o_input.m1_pressed)  and next_state = noone {
	


	
next_state_timer = 0; 
audio_effect(a_sbubble,0,9);

if room = r_tutorial and pause_menu_choose = 1 or
	room = r_tutorial and pause_menu_choose = 4
{
	pause_menu_choose = 0;
}

	switch pause_menu_choose{
	case 0 :	paused_ = false;
				if sprite_exists(paused_sprite_){
					sprite_delete(paused_sprite_);	
				}
				display_set_gui_size(global.gui_default_width,global.gui_default_height);
				instance_activate_all();
				audio_resume_all();
				o_input.extra = false;
				o_input.back = false;
					surface_resize(application_surface,global.screen_width*global.screen_zoom,global.screen_height*global.screen_zoom);
				break;
	case 1 : 


if global.floor_number >0 and global.prologue_complete = true and 
pause_top_string = "PAUSE" or global.racetrack = true or (global.challenge >0 ){
next_state = pau.menu_item;
to_retry = true;
to_title_screen = false;
if global.racetrack{
pause_top_string = choose(
"BUILDING",
"GIVE ME A SEC",
"GOTCHA",
"RETRYING",	
"RELEASING PORCUPINES",	
"CLOSING BLACK BARS",
"STRAIGHTENING CAPE",
"IRONING CAPE",
"MENTALLY PREPARING",
"FEEDING THE PORCUPINES",
"SWEEPING UP EXPLOSIVE POWDER",
"PETTING THE PORCUPINES",
"DYING SHIRT BLUE",
"POSITIONING ENEMIES",
"RESTARTING ROOM",
"MASSAGING PORCUPINES",
"LOADING STREAMERS",
"ON YOUR MARKS",
"WATERING GRASS",
"MOWING GRASS",
"RESETTING TIMER",
"SHARPENING QUILLS",
"MOTIVATING PORCUPINES",
"POLISHING BOMBS",
"IGNITING BOMBS",
"PURCHASING BOXES",
"PREPARING WALLY",
"ABANDONING BOOMERANG",
"GENERATING WITTY MESSAGE",
"STRAPPING BOMBS TO CRITTERS",
"POLISHING SHOES",
"WORLD RECORD INCOMING",
"CHOMP",
"VANISHING EYEBALLS",
"MAKING YOUR DAY",
"MOTIVATING WALLY",

"AARGH I DONT HAVE A GOOD MESSAGE SRY",
"EQUIPPING BUNNY EARS");
}else{
#region //restart dungeon
pause_top_string = 
choose(
"BUILDING",
"GIVE ME A SEC",
"GOTCHA",
"RETRYING",
"ON IT",
"BUILDING HARDER DUNGEON",
"LOADING",
"EXCAVATING ROOM",
"RELEASING PORCUPINES",
"GENERATING SICK DUNGEON",
"CLOSING BLACK BARS, AWESOMELY",
"WHITE TEXT ON BLACK IS THE BEST",
"STRAIGHTENING CAPE",
"IRONING CAPE",
"TYING SHOELACES",
"POLISHING CHESTS",
"MENTALLY PREPARING",
"FEEDING THE PORCUPINES",
"SWEEPING UP EXPLOSIVE POWDER",
"PETTING THE PORCUPINES",
"DYING SHIRT BLUE",
"SCARING OFF GHOSTS",
"POSITIONING ENEMIES",
"FEEDING DRAGONS",
"BATHING SKELETONS IN MILK",
"MAKING A FAIRER DUNGEON",
"FEEDING BATS",
"DIGGING DUNGEON",
"ELIMINATING SELF DOUBT",
"PAINTING GRASS",
"WATERING GRASS",
"PLANTING GRASS",
"HIDING COINS",
"POLISHING COINS",
"GETTING DON JON COFFEE",
"MOTIVATING DON JON",
"PREPARING DON JON",
"SHARPENING QUILLS",
"PETTING DRAGONS",
"SUMMONING GHOSTS",
"RELEASING THE BEAR",
"FINDING RUNAWAY BEAR",
"JUICING UP MENUS",
"HIDING KEYS FRAGMENTS",
"HIDING KEYS",
"MASSAGING THE BATS",
"GIVING SHOPKEEPER CONFETTI",
"HIDING EXP",
"OVERFILLING THE CHESTS",
"GENERATING HARDER FLOORS",
"PETTING BATS",
"FEEDING DRAGONS TINDER",
"PREPARING FOR LANDING",
"WATERING GRASS",
"MOWING GRASS",
"ALLOCATING CHESTS",
"FILLING CHESTS",
"SHARPENING QUILLS",
"MOTIVATING PORCUPINES",
"POLISHING BOMBS",
"IGNITING BOMBS",
"HIDING BOMBS",
"GETTING THE PIANO READY",
"PREPARING WALLY",
"SHARPENING BOOMERANG",
"POLISHING BOOMERANG",
"GENERATING WITTY MESSAGE",
"STRAPPING BOMBS TO CRITTERS",
"MAGNETIZING COINS",
"POLISHING APPLES",
"PAYING PIANOPLAYER",
"FILING QUILLS",
"PLANTING GRASS",
"PUSHING BOXES",
"ENDING COFFEE BREAK",
"MOTIVATING SHOPKEEPER",
"MOTIVATING BACKPACK GUY",
"TAKING LUNCH BREAK",
"CALLING THE DRAGONS",
"BRUSHING FUR",
"PREPARING SICK DUNGEON",
"HIDING LOADING TIME WITH THIS MESSAGE",
"MOTIVATING DON JON",
"CURTAIN CALL EVERYONE",
"MAKING THE SCREEN REALLY DARK",
"WASHING THE APPLES",
"GROWING GRASS",
"PREPARING SICK TUNES",
"HIGH FIVING BACKPACK GUY",
"RELEASING THE CUTE DOGS",
"POLISHING CHESTS",
"ENDING LUNCH BREAK",
"ALERTING PORCUPINES",
"BATHING PORCUPINES",
"MOPPING UP DUNGEON",
"VACUUMING UP THE DUNGEON",
"AAAAA THIS MESSAGE I WROTE IS TOO BIG TO FIT ON THE SCREEN...SRY",
"MOTIVATING THE BOMBS",
"FEEDING BOMBS GUNPOWDER",
"TAKING DEEP BREATHS",
"TODAYS BIGGEST STAR: YOU",
"CREATING UNFORGETTABLE RUN",
"RANDOMLY HIDING THE APPLES",
"CALLING DON JON TO COME",
"PAINTING THE LEAVES GREEN",
"ONE SEC, PAINTING THE FLOWERS REAL QUICK",
""
);

if global.challenge > 0{
	pause_top_string = "GO BACK";
}

#endregion
}
	}else{/* pause_top_string = "BUILDING";*/}break;
	case 2 : next_state = pau.menu_upgrade; up_index = 0; pause_top_string = "STUFF";	 break;
	case 3 : next_state = pau.menu_settings; pause_top_string = "CLOSING";	  break;
	case 4 : next_state = pau.menu_item; if pause_top_string = "END GAME"{ end_game = true;} to_title_screen = true; pause_top_string = ""; break;
	}	
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);