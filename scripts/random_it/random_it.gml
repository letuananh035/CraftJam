///@arg use x and y?
//1 daily 2 twist 3 sword speedrun
if !instance_exists(o_game) exit;

#region randomize
switch global.challenge{
case 0:  randomize();  break;
case 1: random_set_seed((current_year+current_month+current_day+global.floor_number)*global.lvl); break;
case 2: random_set_seed((current_year+current_month+current_day+global.floor_number*.7)*global.lvl); break;
case 3: random_set_seed((current_year+current_month+current_day+global.floor_number)*global.lvl); break;
}
#endregion

/*
var pos = false;
pos = argument0;


switch global.challenge{
case 0:  randomize();  break;
case 1: random_set_seed(current_year+current_month+current_day+global.floor_number); break;
case 2: random_set_seed(current_year+current_month+current_weekday+global.floor_number*2); break;
case 3: random_set_seed(current_year+current_month+global.floor_number*3); break;
}