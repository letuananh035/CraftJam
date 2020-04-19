///@arg XP amount

var xx = argument0;
xx += random_range(-xx*.25,xx*.25);

xp_amount = 
power(1.08,global.lvl)*
power(1.05,global.floor_number)*
(xx/1.55);
reward_color = c_aqua;