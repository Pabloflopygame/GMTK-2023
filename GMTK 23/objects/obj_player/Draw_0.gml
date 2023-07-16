draw_self()

//[WE NEED TO ADD IMAGE SPEED THAT WWILL BE FASTER DEPENDING ON SPEED]

if (var_velocity_x > 0){
	if (last_valid_key_x == "d"){
		image_index = var_move_right_frame;
		if (var_move_right_frame == array_move_right_frames[array_length(array_move_right_frames)-1]){
			var_move_right_frame = array_move_right_frames[0];
		} else{
			var_move_right_frame += var_image_speed;
		}
	}
	if (last_valid_key_x == "a"){
		//slows down the right way
	}
} else if (var_velocity_x < 0){
	if (last_valid_key_x == "a"){
		image_index = var_move_left_frame;
		if (var_move_left_frame == array_move_left_frames[array_length(array_move_left_frames)-1]){
			var_move_left_frame = array_move_left_frames[0];
		} else{
			var_move_left_frame += var_image_speed;
		}
	}
	if (last_valid_key_x == "d"){
		//slows down the right way
	}
} else{ // standby animation
	image_index = var_stand_center_frame;
	if (var_stand_center_frame == array_stand_center_frames[array_length(array_stand_center_frames)-1]){
		var_stand_center_frame = array_stand_center_frames[0];
	} else{
		var_stand_center_frame += var_image_speed;
	}
}
