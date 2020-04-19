/// @description 

sprite_index = choose(s_iron_ore_1,s_iron_ore_2);

if room != r_tutorial{
sprite_index = s_ore_iron;	
}
init_shine();
var xx = x div 32;
var yy = y div 32;

o_grid.grid[# xx , yy] = PICKUP;


pos = 0;
get_ore = ore_type.iron_;
ore_value = 1;

image_index = 0;
image_speed = 0;

z_init();
z_ = 0;
z_speed_ = -random_range(1.5,3.5);
gravity_ = .25;
depth = -y+10;
bounce = random_range(.5,.6);
direction_ = random(360);
xscale = 1;
yscale = 1;