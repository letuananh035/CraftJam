///arc(start, peak, end, position, bias)
///@arg start
///@arg peak
///@arg end
///@arg position
///@arg bias
var start = argument0;
var peak = argument1;
var rip = argument2;
var pos = argument3;
var bi = argument4;


var p = clamp(pos, 0,1);

if (pos <=.5)
	return(lerp(start,peak,bias(bi,p*2)));
else{
	var b = 1-argument4;
	p = 2*p-1;
	return (lerp(peak,rip,bias(b,p)));
	
	
}
