if array_length(global.fliped) >= 2 and !trava{

	alarm[0] = 30
	trava = 1
	
}

if !global.turno and jogada_cpu = 0{

	jogada_cpu = 1
	alarm[1] = 60

}

if keyboard_check_pressed(ord("F")) {
    window_set_fullscreen(!window_get_fullscreen());
}

if keyboard_check_pressed(ord("R")) {
    game_restart()
}