///@desc create_xp(xp_range_1,xp_range_2);
///@arg range_1
///@arg range_2


var range_1 = argument0;
var range_2 = argument1;


how_much = irandom_range(range_1,range_2);

repeat how_much{
ran_x = random_range(-25,25);
ran_y = random_range(-25,25);
create(x,y,o_xp_pick_up);	
}