function card_hover(){

	if place_meeting(x, y, obj_cursor) and !fliping and !obj_game.trava and !state{
	
		scale_x = .17
		scale_y = .17
		
		image_xscale = 1.1
		image_yscale = 1.1
	
	}
	else if image_yscale > 1{
	
		scale_x = i_scale_x
		scale_y = i_scale_y
		
		image_xscale = 1
		image_yscale = 1
	
	}

}