///@arg bounce
var bounce_ = argument0;


z_ += z_speed_;

z_speed_ += gravity_;

if z_ >= 0{ 
	z_speed_ = -z_speed_ * bounce_;
		if z_speed_ > -.5 {
		z_speed_ = 0;
		z_ = 0;
		}
}