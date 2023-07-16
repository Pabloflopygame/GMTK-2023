/// @function                 funct_acceleration_x(var_actual_velocity_x);
/// @param {real}	var_actual_velocity_x  The message to show
/// @description              Will return the new vecolity with an exponential acceleration.
/// @return	{real}
function funct_acceleration_x(var_actual_velocity_x){
	if (var_actual_velocity_x == 0){
		if last_valid_key_x == "d"{
			return var_acceleration;
		} else if last_valid_key_x == "a"{
			return -var_acceleration;
		}
	} else if (var_actual_velocity_x > 0){
		return var_acceleration * (power(var_actual_velocity_x, 2));
	} else {
		return -var_acceleration * (power(var_actual_velocity_x, 2));
	}
}
