switch (jogada_cpu) {

    case 1:
        cpu_escolhe_carta();
        jogada_cpu = 2;
        alarm[1] = 30;
        break;

    case 2: 
        cpu_escolhe_carta();
        jogada_cpu = 3;
        alarm[1] = 30;
        break;

    case 3:
        jogada_cpu = 0;
        break;
}