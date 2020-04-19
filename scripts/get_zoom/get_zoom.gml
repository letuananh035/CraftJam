///@arg zoom
///@arg value

var _zoom = argument0;
var _val = argument1;

if sign(_zoom) = 1{
	return _val*_zoom;	
}else if sign(_zoom) = -1{
	return _val/-_zoom;	
}else{
	return _val;
}