///@arg value
///@arg target_array

var _value = argument0;
var _array = argument1;
var _array_length = array_length_1d(_array);



for (var _index = 0; _index<_array_length; _index++){
	if _value == _array[_index] return true;
	//checks to see if the target is an ancestor
	if object_is_ancestor(_value, _array[_index]) return true;
}

return false;
