Algoritmo SumaResta
	Definir Num1, Num2, Resul Como Real
	
	Escribir "Digite Números a Operar"
	Leer Num1, Num2 
	
	Escribir "Elija la operación a realizar"
	Escribir "1 SUMA, 2 RESTA"
	
	Leer numero
	Segun numero hacer
		1: Resul=Num1+Num2
			Escribir Resul
		2: Resul=Num1-Num2
			Escribir Resul
		De Otro Modo:
			Escribir "Error"
	FinSegun
	
	
	
FinAlgoritmo
