///@arg sprite
///@arg x_pos
///@arg y_pos
///@arg image_speed
///@arg has_depth
var _sprite = argument0;
var _x = argument1;
var _y = argument2;
var _image_speed = argument3;
var _has_depth = argument4;
var _effect = instance_create_layer (_x, _y, "Effects", o_animation_effect);
_effect.sprite_index = _sprite;
_effect.image_speed = _image_speed;

if _has_depth{
	_effect.depth = -_y;
}else{
_effect.depth = -8999;	
}

return _effect;