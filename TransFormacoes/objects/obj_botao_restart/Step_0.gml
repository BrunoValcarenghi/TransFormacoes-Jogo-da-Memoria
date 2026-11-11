button_hover()

if (device_mouse_check_button_pressed(0, mb_left)) {
    var _tx = device_mouse_x(0);
    var _ty = device_mouse_y(0);
    
    if (_tx > 0 || _ty > 0) and position_meeting(_tx, _ty, id){
	
		play_audio_random(sfx_button)
	
		game_restart()
	
	}

}
