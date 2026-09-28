function card_hover(){

	if place_meeting(x, y, obj_cursor) 
	and !fliping 
	and !obj_game.trava
	and !state
	and global.turno{
	
		scale_x = i_scale_x * 1.03
		scale_y = i_scale_y * 1.03
		
		image_xscale = 1.03
		image_yscale = 1.03
	
	}
	else if image_yscale > 1{
	
		scale_x = i_scale_x
		scale_y = i_scale_y
		
		image_xscale = 1
		image_yscale = 1
	
	}

}