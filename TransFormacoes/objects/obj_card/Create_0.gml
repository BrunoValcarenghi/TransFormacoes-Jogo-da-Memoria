state = -1
state_img = -1
img = spr_logo

i_scale_x = 0.32
i_scale_y = 0.32

scale_x = i_scale_x
scale_y = i_scale_y

if n > 9 n -= 10

fliping = 1

alarm[0] = 60

toque_tela = function(){

	if (device_mouse_check_button_pressed(0, mb_left)) {
	    var _tx = device_mouse_x(0);
	    var _ty = device_mouse_y(0);
    
	    if (_tx > 0 || _ty > 0) {
	        obj_cursor.x = _tx;
	        obj_cursor.y = _ty;
	    return true;
        }
    }
    return false;
}