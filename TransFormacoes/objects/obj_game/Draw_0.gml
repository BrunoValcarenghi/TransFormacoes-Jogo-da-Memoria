//placar
draw_set_colour(#fadbbf)
draw_roundrect_ext(750, 40, 1890, 160, 50, 50, 0)

if global.modo != 2{
	
draw_set_font(f_poppins)
draw_set_valign(1)

draw_set_colour(#ec8444)
draw_set_halign(0)
if global.modo = 0 draw_text(780, 95, "Jogador")
else draw_text(780, 95, "Jogador 1")

draw_set_halign(1)
draw_text(1320, 95, string_concat(global.placar[1], " X ", global.placar[0]))

draw_set_halign(2)
if global.modo = 0 draw_text(1860, 95, "Computador")
else draw_text(1860, 95, "Jogador 2")

}
else{

draw_set_font(f_fairplay)
draw_set_valign(1)
draw_set_halign(1)
draw_set_colour(#ec8444)
draw_text(1320, 95, "TransFormações")

}

//fundo carta
draw_set_colour(#fadbbf)
draw_roundrect_ext(40, 40, 730, 952, 50, 50, 0)

//fundo info
draw_set_colour(#fadbbf)
draw_roundrect_ext(750, 190, 1300, 952, 50, 50, 0)
draw_roundrect_ext(1340, 190, 1890, 952, 50, 50, 0)

draw_set_colour(#ec8444)
draw_set_font(f_poppins)

draw_set_valign(0)
draw_set_halign(1)
draw_text(1025, 230, "informações \ncarta virada 1")
draw_text(1615, 230, "informações \ncarta virada 2")