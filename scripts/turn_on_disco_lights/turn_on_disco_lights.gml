//turn off all the lights in the room
if room = r_tutorial exit;

var choose_ = false;
var next_light = 0;

while choose_ = false{
	var next_light = string(choose(1,2,3));
	
	if next_light != o_game.last_disco_light{
	choose_ = true;	
	}
}

turn_off_disco_lights();
if o_game.last_disco_xscale = false{
	next_light += "_inv";	
}
if room = r_boss_battle_second_phase exit;

layer_set_visible(layer_get_id("disco_"+next_light),1);
layer_set_visible(layer_get_id("neon_combo"),1);


with o_boss_battle_stage{
	image_index = 1;	
}

o_game.last_disco_light = next_light;
if o_game.last_disco_xscale = false{
	o_game.last_disco_xscale = true;
}else{
	o_game.last_disco_xscale = false;
}

var lay_id = layer_get_id("Collision");
var tile_id = layer_tilemap_get_id(lay_id);

if tilemap_get_tileset(tile_id) != t_wall_neon_combo
{
  tilemap_tileset(tile_id, t_wall_neon_combo);
}


