var_key_x = keyboard_lastchar; //so we only move to the last pressed key

if !(keyboard_check(ord("D")) or keyboard_check(ord("A"))){
	var_key_x = "Not Valid Input";
} else{
	last_valid_key_x = var_key_x;
}

switch (var_key_x) {
    case "d":
		if (var_velocity_x < 0){ 
			//decelerate
			var_velocity_x += var_deceleration;
		} else{ 
			//accelerate
			if (funct_acceleration_x(var_velocity_x) < var_max_velocity_x){
				var_velocity_x = funct_acceleration_x(var_velocity_x);
			} else{
				var_velocity_x = var_max_velocity_x;
			}
		}
		break;

    case "a":
		if (var_velocity_x > 0){ 
			//decelerate
			var_velocity_x -= var_deceleration;
		} else{ 
			//accelerate
			if (funct_acceleration_x(var_velocity_x) > -var_max_velocity_x){
				var_velocity_x = funct_acceleration_x(var_velocity_x);
			} else{
				var_velocity_x = -var_max_velocity_x;
			}
		}
		break;

    default: //no key, will stop by itself after some time
		if (var_velocity_x < 0){
			var_velocity_x += var_deceleration;
		} else if (var_velocity_x > 0){
			var_velocity_x -= var_deceleration;
		}

		if ((var_velocity_x < var_deceleration) and (var_velocity_x > 0)){
			var_velocity_x = 0;
		}
		if ((var_velocity_x > var_deceleration) and (var_velocity_x < 0)){
			var_velocity_x = 0;
		}
		break;
}

show_debug_message(var_velocity_x)
x += var_velocity_x;
