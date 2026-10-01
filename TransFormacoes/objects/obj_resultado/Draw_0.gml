draw_set_font(f_fairplay)
draw_set_colour(#fadbbf)
draw_text(x, y - 200,  "PARABÉNS, VOCÊ COMPLETOU")

var _minutos = floor(global.cronometro/60)
var _segundos = global.cronometro - _minutos*60

var _zero
if _segundos <= 9 _zero = "0"
else _zero = ""

var _tempo = string_concat("Tempo para finalizar: ", _minutos, ":", _zero, _segundos)

draw_set_font(f_poppins)
draw_text(x, y-100, _tempo)

if global.modo != 2{
	
	var _vencedor = ""
	
	if global.modo = 0
	{
	
		if p[0] > p[1] _vencedor = "Você venceu"
		else if p[0] < p[1] _vencedor = "Computador venceu"
		else _vencedor = "Empate"
	
	}
	else if global.modo = 1{
	
		if p[0] > p[1] _vencedor = "Jogador1 venceu"
		else if p[0] < p[1] _vencedor = "Jogador2 venceu"
		else _vencedor = "Empate"
	
	}
	
	draw_text(x, y, _vencedor)

}