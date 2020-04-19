/// @description 


if instance_exists(o_cutscene_rock){
instance_destroy(o_cutscene_rock);	
create(0,0,o_cutscene_crafting);
}

with obj_light_parent{
	if creator = id{
		instance_destroy();	
	}
}

var xx = x div 32;
var yy = y div 32;

o_grid.grid[# xx , yy] = PICKUP;

xx *= 32;
yy *= 32;

xx += 16;
yy += 24;



	create(xx,yy,o_ore_pickup);



