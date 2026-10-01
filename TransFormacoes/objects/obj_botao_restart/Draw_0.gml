draw_self()

draw_set_halign(1)
draw_set_valign(1)

draw_set_colour(c_white)

draw_set_font(f_poppins)

if room = rm_fim draw_text(x, y, "Reiniciar")
else draw_sprite(spr_restart, 0, x, y)