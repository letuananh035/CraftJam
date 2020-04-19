///@arg value
///@arg array 
var _value = argument0;
var _array = argument1;
var _array_size = array_length_1d(_array);
//Look for value

for (var i =0;i< _array_size;i++){

	if _value == _array[i]{
		//if it finds it , it will return i
		return _array[i];
	}
	
}

//if it cannot find it , it will return negative 1
return -1;

