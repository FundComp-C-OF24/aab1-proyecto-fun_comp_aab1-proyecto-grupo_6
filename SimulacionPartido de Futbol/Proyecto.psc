Algoritmo Proyecto
	dia <- 'Casa'
	equipo <- 'A'
	numJugador <- 1
	numEqui <- 0
	golequipoA <- 0
	golequipoB <- 0
	Escribir 'LISTA DE JUGADORES POR EQUIPO: '
	Escribir '-------------------------------'
	Mientras numEqui<2 Hacer
		Escribir 'Equipo ', equipo
		Escribir '|     NOMBRE     |', '     POSICION     ', '|   EDAD   |', '   GOLES   |'
		Mientras (numJugador<=5) Hacer
			edad <- Aleatorio(19,40)
			goles <- Aleatorio(0,9)
			posicion <- Aleatorio(1,2)
			Escribir '|   Jugador ', equipo, numJugador, '   |    Posicion ', posicion, '    |    ', edad, '    |     ', goles, '     |'
			numJugador <- numJugador+1
			Si (equipo=='A') Entonces
				golequipoA <- golequipoA+goles
			SiNo
				golequipoB <- golequipoB+goles
			FinSi
		FinMientras
		numJugador <- 1
		numEqui <- numEqui+1
		equipo <- 'B'
	FinMientras
	numEqui <- 0
	Escribir 'ESTADISTICAS DEL PARTIDO:'
	Escribir '-------------------------'
	Escribir 'Goles Equipo A: ', golequipoA
	Escribir 'Goles Equipo A: ', golequipoB
	Si golequipoB<golequipoA Entonces
		Escribir 'Equipo ganador: Equipo A'
	SiNo
		Si golequipoB>golequipoA Entonces
			Escribir 'Equipo ganador: Equipo B'
		SiNo
			Escribir 'Ha terminado como un empate, se recurrira a una ronda de penales'
			Escribir 'Penales: '
			equipo <- 'A'
			Mientras (numEqui<2) Hacer
				Escribir 'Equipo ', equipo
				Mientras numJugador<=5 Hacer
					goles <- Aleatorio(0,1)
					Escribir '|   Jugador ', equipo, numJugador, '  |     ', goles, '     |'
					numJugador <- numJugador+1
					Si equipo=='A' Entonces
						golequipoA <- golequipoA+goles
					SiNo
						golequipoB <- golequipoB+goles
					FinSi
				FinMientras
				numJugador <- 1
				numEqui <- numEqui+1
				equipo <- 'B'
			FinMientras
			Escribir 'ESTADISTICAS DEL PARTIDO:'
			Escribir '-------------------------'
			Escribir 'Goles Equipo A: ', golequipoA
			Escribir 'Goles Equipo A: ', golequipoB
			Si golequipoB<golequipoA Entonces
				Escribir 'Equipo ganador: Equipo A'
			SiNo
				Si golequipoB>golequipoA Entonces
					Escribir 'Equipo ganador: Equipo B'
				SiNo
					Escribir 'Se ha entrado a ronda muerte subita'
					goles <- 0
					equipo <- 'A'
					Mientras goles==0 Hacer
						num <- 0
						goles <- Aleatorio(0,1)
						Si goles<=0 Entonces
							Escribir 'Jugador ', equipo, numJugador, ' fallo'
							Si equipo='A' Entonces
								equipo <- 'B'
								Si numJugador>5 Entonces
									numJugador <- 0
									numJugador <- numJugador-num
								FinSi
							SiNo
								equipo <- 'A'
								Si numJugador==5 Entonces
									numJugador <- 0
								FinSi
								numJugador <- numJugador+1
							FinSi
						SiNo
							Escribir 'Jugador ', equipo, numJugador, ' Anoto'
							Escribir 'El ganador es el equipo A'
						FinSi
					FinMientras
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
