//turn off all the lights in the room


with o_boss_battle_stage{
	image_index = 0;	
}
if room = r_tutorial exit;
layer_set_visible(layer_get_id("neon_combo"),0);

var lay_id = layer_get_id("Collision");
var tile_id = layer_tilemap_get_id(lay_id);
if tilemap_get_tileset(tile_id) != t_wall_neon
{
  tilemap_tileset(tile_id, t_wall_neon);
}



layer_set_visible(layer_get_id("disco_1"),0);
layer_set_visible(layer_get_id("disco_2"),0);
layer_set_visible(layer_get_id("disco_3"),0);

layer_set_visible(layer_get_id("disco_1_inv"),0);
layer_set_visible(layer_get_id("disco_2_inv"),0);
layer_set_visible(layer_get_id("disco_3_inv"),0);
