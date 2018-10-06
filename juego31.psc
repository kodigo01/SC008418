SubProceso RepartirCarta
	Dimension espada[12];
	espada[0]<-"2";
	espada[1]<-"3";
	espada[2]<-"4";
	espada[3]<-"5";
	espada[4]<-"6";
	espada[5]<-"7";
	espada[6] <-"8";
	espada[7] <-"9";
	espada[8] <-"J";
	espada[9] <-"Q";
	espada[10] <-"K";
	espada[11] <-"As";	
	Dimension corazon[12];
	corazon[0]<-"2";
	corazon[1]<-"3";
	corazon[2]<-"4";
	corazon[3]<-"5";
	corazon[4]<-"6";
	corazon[5]<-"7";
	corazon[6]<-"8";
	corazon[7]<-"9";
	corazon[8]<-"J";
	corazon[9]<-"Q";
	corazon[10]<-"K";
	corazon[11]<-"As";	
	Dimension trebol[12];
	trebol[0]<-"2";
	trebol[1]<-"3";
	trebol[2]<-"4";
	trebol[3]<-"5";
	trebol[4]<-"6";
	trebol[5]<-"7";
	trebol[6]<-"8";
	trebol[7]<-"9";
	trebol[8]<-"J";
	trebol[9]<-"K";
	trebol[10]<-"Q";
	trebol[11]<-"As";	
	Dimension diamante[12];
	diamante[0]<-"2";
	diamante[1]<-"3";
	diamante[2]<-"4";
	diamante[3]<-"5";
	diamante[4]<-"6";
	diamante[5]<-"7";
	diamante[6]<-"8";
	diamante[7]<-"9";
	diamante[8]<-"J";
	diamante[9]<-"Q";
	diamante[10]<-"K";
	diamante[11]<-"As";
	
	Dimension manjares[4];
	manjares[0]<-"espada";
	manjares[1]<-"diamante";
	manjares[2]<-"trebol";
	manjares[3]<-"corazon";
	
	Nmanjar = azar(4);
	manjar = manjares[carta];

	Ncarta = azar(12);
	Definir val como entero;
	
	Segun Nmanjar Hacer
		1:
			carta = espada[Ncarta];
			//if carta es As preguntar q valor 1 o 11
			Si carta == "As" Entonces
				Escribir 'Que valor desea ponerle a la carta As 1 u 11?';
				Leer val;
			SiNo
				
			FinSi
			Escribir 'La carta es ', carta,' de Espada';
		2:
			carta = diamante[Ncarta];
			Escribir 'La carta es ', carta,' de Diamante';
		3:
			carta = trebol[Ncarta];
			Escribir 'La carta es ', carta,' de Trebol';
		4:
			carta = corazon[Ncarta];
			Escribir 'La carta es ', carta,' de Corazon';
		De Otro Modo:
			Escribir 'Error';
	FinSegun
FinSubProceso

////principal
Proceso GAME_31
	
	Definir puntos,pt como Entero;
	puntos = 0;
	pt = 0;
	
	Escribir 'Bienvenido al juego 31';
	
	Escribir 'Ingrese el numero de jugadores';
	Leer n;
	////inicilalizacionde cuantos jugadores 
	Dimension player[n];
	
	Si n > 16 Entonces
		Escribir 'no se puede mas jugadores';
	SiNo
		Definir i,j,x,k Como Entero;
		Definir s_o_n como entero;
		
		Para i<-1 Hasta 3 Con Paso 1 Hacer////carta x jugadores
			Para j<-1 Hasta n Con Paso 1 Hacer//// jugador
				RepartirCarta;
			FinPara
		FinPara
		//sumar = sumar puntos de cada jugador y guardar en variable
		Para x<-1 Hasta n Con Paso 1 Hacer
			puntos = puntos + x;
			Escribir 'los puntos de los jugadores son: ',x;
		FinPara
		//preguntar si quiere carta 
		Escribir 'Desea pedir otra carta? marque 1)si o 0)no?';
		Leer s_o_n;
		s_o_n <- 0;
		
		Si s_o_n == 1 Entonces
			Para k<-1 Hasta n Con Paso 1 Hacer ////carta adicionales
				pt = pt + puntos;
				Escribir 'Los puntos con la carta adicional son: ',pt , n;
				RepartirCarta;
			FinPara
		SiNo
			Si pt>31 Entonces
				Escribir 'Ha perdido!!!!';
			SiNo
				Escribir 'Ha ganado!!!!';
			FinSi
		FinSi
	FinSi
FinProceso
