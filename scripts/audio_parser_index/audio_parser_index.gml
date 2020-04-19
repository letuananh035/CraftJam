/// @desc Audio Parser for Indexes, returns index from preset range (See script for a list of all ranges)
/// @arg index

// This script takes the name of a sound file WITHOUT the numbered suffix.
// Example: "sfx_footstep_wood_4" becomes just "sfx_footstep_wood"

// It then returns a given audio file index from a preset list.
// This script is meant for randomization inside other audio play scripts, not for direct usage.
// ~WangleLine

var input = argument0;
var output;

switch(input)
{
	#region FOOTSTEPS
		case "sfx_footstep_grass":
			output = "sfx_footstep_grass" + "_" + string(irandom_range(1,12));
			break;
		case "sfx_footstep_dirt":
			output = "sfx_footstep_dirt" + "_" + string(irandom_range(1,9));
			break;
		case "sfx_footstep_wood":
			output = "sfx_footstep_wood" + "_" + string(irandom_range(1,9));
			break;
		case "sfx_footstep_sand":
			output = "sfx_footstep_sand" + "_" + string(irandom_range(1,6));
			break;
		case "sfx_orchestral_impact":
			output = "sfx_orchestral_impact";
			break;
		case "sfx_dragon_shoot":
			output = "sfx_dragon_shoot";
		break;
	#endregion
	
	case "sfx_hitmarker":
		output = "sfx_hitmarker";
		break;
		
	case "sfx_spider_web_rubber_band":
		output = "sfx_spider_web_rubber_band";
		break;
	case "sfx_mob_bird_chirp":
		output = "sfx_mob_bird_chirp" + "_" + string(irandom_range(1,12));
		break;
	case "sfx_mob_bird_flap":
		output = "sfx_mob_bird_flap" + "_" + string(irandom_range(1,12));
		break;
	case "sfx_box_destroy":
		output = "sfx_box_destroy" + "_" + string(irandom_range(1,5));
		break;
	case "sfx_bomb_explosion":
		output = "sfx_bomb_explosion" + "_" + string(irandom_range(1,2));
		break;
	case "sfx_bomb_thunder":
		output = "sfx_bomb_thunder" + "_" + string(irandom_range(1,5));
		break;
	case "sfx_bomb_fuse":
		output = "sfx_bomb_fuse" + "_" + string(irandom_range(1,3));
		break;
	case "sfx_bomb_fuse_loop":
		output = "sfx_bomb_fuse_loop";
		break;
	case "sfx_bomb_tick":
		output = "sfx_bomb_tick";
		break;
	case "sfx_water_droplet":
		output = "sfx_water_droplet";
		break;			
	case "sfx_fire_loop":
		output = "sfx_fire_loop";
		break;
	case "sfx_fire_shoot":
		output = "sfx_fire_shoot" + "_" + string(irandom_range(1,3));
		break;
	case "sfx_combo":
		output = "sfx_combo" + "_" + string(o_combo_parent.combo_parse);
		break;
	case "sfx_sword_swing":
		output = "sfx_sword_swing" + "_" + string(irandom_range(1,4));
		break;
	case "sfx_heart_last":
		output = "sfx_heart_last";
		break;
		
		
		
// LEGACY, NEED REPLACEMENT
	case "sfx_bush_destroy":
		output = "a_bush" + "_" + string(irandom_range(1,6));
		break;
// LEGACY, NEED REPLACEMENT
	case "sfx_currency_add":
		output = "a_high_blip";
		break;
// LEGACY, NEED REPLACEMENT
	case "a_high_blip":
		output = "a_high_blip";
		break;
	case "a_error":
		output = "a_error";
		break;		
	// Throw Message, Exit Script
	default:
	{
		show_debug_message("[AUDIO PARSER INDEX] Malformed input (" + string(input) + ") in audio_parser_index script!");
		exit;
	}
}

// Return assed index id of the sound file
return asset_get_index(output);