///@arg sprite
///@arg x
///@arg y
///@arg angle
///@arg frames
///@arg target_array
///@arg damage
///@arg knockback
///@arg sleep
var _sprite = argument0;
var _x = argument1;
var _y = argument2;
var _angle = argument3;
var _frames = argument4;
var _array = argument5;
var _damage = argument6;
var _knockback = argument7;
var _sleep = argument8;
//here we access the object ID
var _hitbox = instance_create_layer(_x, _y, "Instances", o_hitbox_deflect);
//After accessing the object id we can now modify the sprite
_hitbox.sprite_index = _sprite;
_hitbox.image_angle = _angle;
_hitbox.alarm[0] = _frames;
_hitbox.targets_ = _array;
_hitbox.damage_ = _damage;
_hitbox.knockback_ = _knockback;
_hitbox.sleep_ = _sleep;
//If we want to continue using the _hitbox id we can recall it with 
return _hitbox;
