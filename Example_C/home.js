var caja = document.getElementById("numero");

var btncaja =  document.getElementById("btnbuscar");
btncaja.addEventListener("click",buscar);

var result = document.getElementById("resultado");

function buscar(){
	encontrar(caja.value);
}

function encontrar(n1){
	var arreglo = [1,2,3,4,5];
	var entra = -1;

	for (var i = 0; i <= 4; i++) {
		if (n1 == arreglo[i]) {
				entra = i;
			}
		}
		if (entra != -1) {
			result.innerHTML = "El numero esta en la posicion " + (entra + 1);
		}else{
			result.innerHTML = "El numero no se encuentra en el arreglo";
		}
	}