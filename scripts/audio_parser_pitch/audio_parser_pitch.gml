/// @desc Audio Parser for Pitch, returns pitch from preset range (See script for a list of all ranges)
// @arg index

// This script takes the name of a sound file WITHOUT the numbered suffix.
// Example: "sfx_footstep_wood_<number>" becomes just "sfx_footstep_wood"

// It then returns a given pitch from a preset list of ranges.
// This script is meant for randomization inside other audio play scripts, not for direct usage.
// ~WangleLine



var input = argument0;
var input_id = argument1;
var output;

switch(input)
{
	#region FOOTSTEPS
		case "sfx_footstep_grass":
			output = random_range(0.92,1.15) + 0;
			break;
		case "sfx_footstep_dirt":
			output = random_range(0.92,1.1) + 0;
			break;
		case "sfx_footstep_wood":
			output = random_range(0.92,1.1) + 0;
			break;
		case "sfx_footstep_sand":
			output = random_range(1,1.2) + 0;
			break;
			
			
	#endregion

	case "sfx_hitmarker":
		output = random_range(1,1) + 0;
		break;
	case "sfx_orchestral_impact":
		output = 1;
		break;
	case "sfx_spider_web_rubber_band":
		output = random_range(.99,1.01);
		break;
	case "sfx_mob_bird_chirp":
		output = random_range(0.7,1) + 0;
		break;
	case "sfx_mob_bird_flap":
		output = random_range(1.05,1.55) + 0;
		break;
	case "sfx_box_destroy":
		output = random_range(0.92,1.1) + 0;
		break;
	case "sfx_bomb_explosion":
		output = random_range(0.9,1.1) + 0;
		break;
	case "sfx_bomb_thunder":
		output = random_range(0.85,1.1) + 0;
		break;
	case "sfx_bomb_fuse":
		output = random_range(0.95,1.15) + 0;
		break;
	case "sfx_bomb_fuse_loop":
		output = random_range(0.95,1.15) + 0;
		break;	
	case "sfx_bomb_tick":
		output = 0.3+input_id.sound_tick_additional_pitch;
		break;
	case "sfx_water_droplet":
		output = 1+input_id.sound_tick_additional_pitch;
		break;		
	case "sfx_fire_loop":
		output = random_range(0.9,1.2) + 0;
		break;
	case "sfx_fire_shoot":
		output = random_range(0.8,1.2) + 0;
		break;
	case "sfx_dragon_shoot":
			output = random_range(0.8,1.2) + 0;
	break;		
	case "sfx_combo":
		output = 1;
		break;
	case "sfx_sword_swing":
		output = random_range(0.85,1.05) + 0;
		break;
	case "sfx_heart_last":
		output = 1;
		break;
	
	
	
	
	
// LEGACY, NEED REPLACEMENT
	case "sfx_bush_destroy":
		output = random_range(0.95,1.2) + 0;
		break;
// LEGACY, NEED REPLACEMENT
	case "sfx_currency_add":
		output = 1+o_audio.coin_additional_pitch;
		break
// LEGACY, NEED REPLACEMENT
	case "a_high_blip":
		output = random_range(0.99,1.01) + 0;
		break;	
	case "a_error":
		output = random_range(0.99,1.01) + 0;
		break;		
	
	// Throw Message, Exit Script
	default:
	{
		show_debug_message("[AUDIO PARSER PITCH] Malformed input (" + string(input) + ") in audio_parser_pitch script!");
		exit;
	}
}

return output;