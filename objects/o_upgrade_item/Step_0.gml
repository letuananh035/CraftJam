/// @description becomes invisible if no pause

walk_range = 64;

var xx = x div 32;
var yy = y div 32;

var xx2 = o_player.x div 32;
var yy2 = o_player.y div 32;


if xx = xx2 and yy = yy2{
	
	event_user(0);
}