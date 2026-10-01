if global.fliped[0].numero != global.fliped[1].numero{
		
	global.fliped[0].inst.fliping = 1
	global.fliped[1].inst.fliping = 1
	
	global.turno = !global.turno
	
	
}
else{

	global.placar[global.turno] ++

}

trava = 0	
global.fliped = []