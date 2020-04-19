/// @description array_add(array, index, value)
/// @function array_add
/// @param array
/// @param index
/// @param value 


var array_ = argument0;
var index_ = argument1;
var value_ = argument2;

var length_ = array_length_1d( array_);

for (var i = length_; i > index_; i--){
	array_[@ i] = array_[i-1];	
}

array_[@ index_] = value_;