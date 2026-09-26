trava = 0

w = 5
h = 4

ja_foi = [-1]

for(var i = 0; i < w; i++){
	for(var j = 0; j < h; j++){
		
		var k = -1
	
		while(array_contains(ja_foi, k)){
		
			k = irandom(19)
		
		}
		
		array_push(ja_foi, k)
		
		instance_create_layer(128 + 128 * i, 160 + 200 * j, "cards", obj_card, {n: k})

	}
}