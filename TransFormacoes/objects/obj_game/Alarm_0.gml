if global.fliped[0].numero != global.fliped[1].numero{
		
	global.fliped[0].inst.fliping = 1
	global.fliped[1].inst.fliping = 1
	
	global.turno = !global.turno
	
	play_audio_random(sfx_damage)
	
}
else{

	global.placar[global.turno] ++
	play_audio_random(sfx_item)

}

trava = 0	
global.fliped = []