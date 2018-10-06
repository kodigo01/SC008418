var numero = document.getElementById("numero");
////var num = parseInt(numero.value);

var btn = document.getElementById("btnbuscar");
btn.addEventListener("click",buscar);

var result =  document.getElementById("resultado");

function buscar(){
	encontrar(numero.value);
}

function encontrar(n1){
	var arreglo = [1,2,3,4,5];
	var entra = false;

	for (var i = 0; i <= 4; i++) {
		if (n1 == arreglo[i]) {
			entra = true;
			}
		}
		if (entra) {
			result.innerHTML = "el numero esta en el arreglo";
		}else{
			result.innerHTML = "el numero no esta en el arreglo";
		}
}