var btnpotencia = document.getElementById("btnbuscar");
btnpotencia.addEventListener("click",potenciaDos);

var resul = document.getElementById("resultado");

function potenciaDos(){
	var n = 1;
	var pot = 0;
	var campo = document.getElementById("numero");

	while(pot <= campo.value){
		pot = 2^n;
		n++;
	}
	pot = pot/2-1;
	resul.innerHTML = "La potencia menor del numero es: " + pot; 
}