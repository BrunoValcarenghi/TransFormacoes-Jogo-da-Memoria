if (device_mouse_check_button_pressed(0, mb_left)) {
    var _tx = device_mouse_x(0);
    var _ty = device_mouse_y(0);
    
    if (_tx > 0 || _ty > 0) {
        
        if (position_meeting(_tx, _ty, id) && !fliping && !state && !obj_game.trava) {
            
            if (global.modo = 0 and global.turno) or global.modo != 0 {
                fliping = 1;
                array_push(global.fliped, {numero: n, inst: id});
            
                global.carta_mostrada[array_length(global.fliped) - 1] = global.card[n];
            }
        }
    }
}

if fliping = 1{
	
	scale_x = abs(image_xscale)/3
	
	if image_xscale = 0 state_img *= -1	
	
	if image_xscale > state image_xscale -= .1
	else if image_xscale < state image_xscale += .1
	
	if image_xscale = state {
		play_audio_random(sfx_transition)
		fliping = 0
		state *= -1	
		scale_x = i_scale_x
	}
	
}

card_hover()

if image_xscale > 0 image_blend = c_white
else image_blend = c_blue