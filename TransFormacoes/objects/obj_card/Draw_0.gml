draw_self()

draw_set_colour(c_white)

if state_img = 1 img = global.card[n].spr
else img = spr_logo

draw_sprite_ext(img, 0, x,
y, scale_x, scale_y, 0, image_blend, 1)

if state_img = 1 draw_text(x, y, n)

