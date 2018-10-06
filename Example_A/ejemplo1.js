var num1 = document.getElementById("numero1");
var num2 = document.getElementById("numero2");


var result = document.getElementById("resultado");

var btn = document.getElementById("btnresult");

var cont = 0;

btn.addEventListener("click",calcular);

function calcular(){
	var n1 = parseInt(num1.value);
    var n2 = parseInt(num2.value);

	if(n1 < 0 || n2 < 0){
		alert("no se aceptan numero negativos");
	}
	else{
		if(n1 < n2){
			while(n1 <= n2){
				if (n1 % 3 == 0) {
					cont = cont + 1;
				}
				n1 = n1 + 1;
				result.innerHTML = "Los multiplos de 3 son : " + cont;
			}
		}else{
			while(n2 <= n1){
				if (n2 % 3 == 0) {
					cont = cont + 1;
				}
				n2 = n2 + 1;
				result.innerHTML = "Los multiplos de 3 son : " + cont;
			}
		}
	}
}

/*
if(num1.value < num2.value) {
			while(num1.value <= num2.value){
				if (num1.value % 3 == 0 ) {
					cont = cont + 1;
				}
				num1 = num1 + 1;
				result.innerHTML = "Los multiplos de 3 son : " + cont;
			}
		}
		else if(num2.value < num1.value){
			while(num2.value <= num1.value){
				if (num2.value % 3 == 0 ) {
					cont = cont + 1;
				}
				num2 = num2 + 1;
				result.innerHTML = "Los multiplos de 3 son : " + cont;
			}
		}*/
