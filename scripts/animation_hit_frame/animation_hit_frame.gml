///@arg frame
var _frame = argument0;
var _speed = SEC/sprite_get_speed(sprite_index);
return (image_index >= _frame+1 - image_speed/_speed) and (image_index < _frame+1);

