///lerp_clamped(value_1,value_2,amount)
//perferm a lerp but locks the returned value between value 1 and 2.

var _min = min(argument0,argument1);
var _max = max(argument0,argument1);

return(clamp(lerp(argument0,argument1,argument2),_min,_max));
