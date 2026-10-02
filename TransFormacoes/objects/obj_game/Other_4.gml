global.turno = 1
jogada_cpu = 0
trava = 0

global.cronometro = 0
alarm[2] = 60

global.placar = [0, 0]

global.carta_mostrada = [global.card[0], global.card[1]]
global.fliped = []

w = 5
h = 4

ja_foi = [-1]
cartas_instancias = []

for(var i = 0; i < w; i++){
	for(var j = 0; j < h; j++){
		
		var k = -1
	
		while(array_contains(ja_foi, k)){
			k = irandom(19)
		}
		
		array_push(ja_foi, k)
		
		var _instancia = instance_create_layer(128 + 128 * i, 240 + 200 * j, "cards", obj_card, {n: k})
		
		array_push(cartas_instancias, _instancia)
	}
}

memoria_cpu = [];
par_pendente_c2 = -1; 
c1_virada = -1;       

cpu_procura_par_completo = function() {
    var tamanho = array_length(memoria_cpu);
    
    for (var i = 0; i < tamanho; i++) {
        for (var j = i + 1; j < tamanho; j++) {
            var cartaA = memoria_cpu[i];
            var cartaB = memoria_cpu[j];
            
            if ((cartaA.n % 10) = (cartaB.n % 10) && cartaA.id != cartaB.id && cartaA.state = -1 && cartaB.state = -1) {
                var idx1 = -1;
                var idx2 = -1;
                
                for (var k = 0; k < array_length(cartas_instancias); k++) {
                    if (cartas_instancias[k].id = cartaA.id) idx1 = k;
                    if (cartas_instancias[k].id = cartaB.id) idx2 = k;
                }
                
                if (idx1 != -1 && idx2 != -1) {
                    return { c1: idx1, c2: idx2 };
                }
            }
        }
    }
    return undefined;
}


cpu_procura_par_de_carta = function(indice_carta) {
    var carta_alvo = cartas_instancias[indice_carta];
    
    for (var i = 0; i < array_length(memoria_cpu); i++) {
        var carta_mem = memoria_cpu[i];
        
        if ((carta_mem.n % 10) = (carta_alvo.n % 10) && carta_mem.id != carta_alvo.id && carta_mem.state = -1) {
            for (var k = 0; k < array_length(cartas_instancias); k++) {
                if (cartas_instancias[k].id = carta_mem.id) return k;
            }
        }
    }
    return -1;
}

cpu_escolhe_carta = function() {
    var c = -1;

    if (c1_virada != -1) {
        if (par_pendente_c2 != -1) {
            c = par_pendente_c2;
            par_pendente_c2 = -1;
        } 
        else {
            c = cpu_procura_par_de_carta(c1_virada);
            
            if (c = -1) {
                c = irandom(19);
                while (cartas_instancias[c].state != -1 || c = c1_virada) {
                    c = irandom(19);
                }
            }
        }
        c1_virada = -1; 
    } 

    else {
        var par = cpu_procura_par_completo();
        
        if (par != undefined) {
            c = par.c1;
            par_pendente_c2 = par.c2; 
        } 
        else {
            c = irandom(19);
            while (cartas_instancias[c].state != -1) {
                c = irandom(19);
            }
        }
        c1_virada = c; 
    }

    cartas_instancias[c].fliping = 1;

    var ja_na_memoria = false;
    for (var i = 0; i < array_length(memoria_cpu); i++) {
        if (memoria_cpu[i].id = cartas_instancias[c].id) {
            ja_na_memoria = true;
            break;
        }
    }

    if (!ja_na_memoria) {
        array_push(memoria_cpu, cartas_instancias[c]);
    }

    if (array_length(memoria_cpu) > 4) {
        array_shift(memoria_cpu);
    }

    array_push(global.fliped, {
        numero: cartas_instancias[c].n, 
        inst: cartas_instancias[c].id
    });

}