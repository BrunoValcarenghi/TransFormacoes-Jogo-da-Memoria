draw_self()

if state_img = 1 img = global.card[n]
else img = spr_logo

draw_sprite_ext(img, 0, x,
y, scale, .16, 0, image_blend, 1)

draw_text(x, y, n)