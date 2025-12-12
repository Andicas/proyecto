Algoritmo EmpleadoVacaciones
	Definir Cargo, Tiempo Como Cadena
	
	Escribir "Cargo (Directivo u Operario)"
	Leer Cargo
	
	Si Cargo="Directivo" Entonces
		Escribir "¿Lleva mas de un año en la Empresa? (Si o No)"
		Leer Tiempo
		Si Tiempo="Si" Entonces
			Escribir "Tiene derecho a 30 días de vaciones"
		SiNo
			Escribir "No tiene derecho a vacaciones"
		FinSi
	SiNo
		Si Cargo="Operario" Entonces
			Escribir "¿Lleva mas de un año en el Cargo? (Si o No)"
			Leer Tiempo
			Si Tiempo="Si" Entonces
				Escribir "Tiene derecho a 15 días de vaciones"
			SiNo
				Escribir "No tiene derecho a vacaciones"
			FinSi
		SiNo
			
			Escribir "Cargo No Valido"
		FinSi
		
	FinSi
	
FinAlgoritmo
