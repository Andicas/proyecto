Algoritmo AprobarDesaprobar
	Definir Edad Como Entero
	Definir Nacionalidad Como Caracter
	Definir Hijos Como Entero
	
	Escribir "Edad"
	Leer Edad
	Escribir "Nacionalidad"
	Leer Nacionalidad
	Escribir "Cantidad Hijos"
	Leer Hijos
	
	Si Edad>18 Entonces
		Si Nacionalidad="Colombiano" Entonces
			Si Hijos>0 Entonces
				Escribir "Aprobado"
			SiNo
				Escribir "No Aprobado"
				
				
				
			FinSi
		SiNo
			Escribir "No Aprobado"
		FinSi
	SiNo
		Escribir "No Aprobado"
	FinSi
FinAlgoritmo
