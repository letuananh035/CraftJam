/// @desc Audio Parser for Volume, returns volume from preset range (See script for a list of all ranges)
// @arg index

// This script takes the name of a sound file WITHOUT the numbered suffix.
// Example: "sfx_footstep_wood_<number>" becomes just "sfx_footstep_wood"

// It then returns a given volume from a preset list of ranges.
// This script is meant for randomization inside other audio play scripts, not for direct usage.
// ~WangleLine




var input = argument0;
var input_id = argument1;
var output;

switch(input)
{
	#region FOOTSTEPS
		case "sfx_footstep_grass":
			output = 0.02;
			break;			
		case "sfx_footstep_dirt":
			output = 0.03;
			break;
		case "sfx_footstep_wood":
			output = 0.08;
			break;
		case "sfx_footstep_sand":
			output = 0.02;
			break;
	#endregion
	
	case "sfx_hitmarker":
		output = 0.2;
		break;
	case "sfx_orchestral_impact":
		output = 1;
		break;	
	
	case "sfx_spider_web_rubber_band":
		output = 1.0;
		break;
	case "sfx_mob_bird_chirp":
		output = 0.05;
		break;
	case "sfx_mob_bird_flap":
		output = 0.045;
		break;
	case "sfx_box_destroy":
		output = 1;
		break;
	case "sfx_bomb_explosion":
		output = 1;
		break;
	case "sfx_bomb_thunder":
		output = 1;
		break;
	case "sfx_bomb_fuse":
		output = 0.85;
		break;
	case "sfx_bomb_fuse_loop":
		output = 0.25;
		break;
	case "sfx_bomb_tick":
		output = 0.3*input_id.sound_tick_multiplier_volume;
		break;
	case "sfx_water_droplet":
		output = 0.1+input_id.sound_tick_multiplier_volume;
		break;			
	case "sfx_fire_loop":
		output = 0.4;
		break;
	case "sfx_fire_shoot":
		output = 0.85;
		break;
	case "sfx_dragon_shoot":
			output = 0.9;
	break;			
	case "sfx_combo":
		output = 0.85;
		break;
	case "sfx_sword_swing":
		output = 0.32;
		break;
	case "sfx_heart_last":
		output = 0.85;
		break;
		
	
		
// LEGACY LEGACY
	case "sfx_bush_destroy":
		output = 0.25;
		break;
// LEGACY LEGACY
	case "sfx_currency_add":
		output = 0.5;
		break;
// LEGACY LEGACY
	case "a_high_blip":
		output = 0.6;
		break;
	case "a_error":
		output = 1;
		break;		
	// Throw Message, Exit Script
	default:
	{
		show_debug_message("[AUDIO PARSER VOLUME] Malformed input (" + string(input) + ") in audio_parser_volume script!");
		exit;
	}
}

return output;