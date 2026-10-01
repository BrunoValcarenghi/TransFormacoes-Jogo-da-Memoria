if array_length(global.fliped) >= 2 and !trava{

	alarm[0] = 30
	trava = 1
	
}

if !global.turno{
	
	if jogada_cpu = 0 and global.modo = 0{
		jogada_cpu = 1
		alarm[1] = 60
	}

}

if keyboard_check_pressed(ord("F")) {
    window_set_fullscreen(!window_get_fullscreen());
}

if keyboard_check_pressed(ord("R")) {
	global.fliped = []
    game_restart()
}

if global.placar[1] + global.placar[0] = 10 room_goto(rm_fim)