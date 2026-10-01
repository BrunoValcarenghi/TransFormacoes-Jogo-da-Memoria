if mouse_check_button_pressed(mb_left) and place_meeting(x, y, obj_cursor) 
and !fliping and !state and !obj_game.trava{

	if (global.modo = 0 and global.turno) or global.modo != 0{
		fliping = 1
		array_push(global.fliped, {numero: n, inst: id})
	}
	
}

if fliping = 1{
	
	scale_x = abs(image_xscale)/3
	
	if image_xscale = 0 state_img *= -1	
	
	if image_xscale > state image_xscale -= .1
	else if image_xscale < state image_xscale += .1
	
	if image_xscale = state {
		fliping = 0
		state *= -1	
		scale_x = i_scale_x
	}
	
}

card_hover()

if image_xscale > 0 image_blend = c_white
else image_blend = c_blue