Algoritmo CajeroAutomatico
	
	Definir OpcionMoneda, i, CantidadBilletes Como Entero
	Definir MontoRetiro, Resto Como Entero
	Definir Billetes Como Entero
	Definir hayError Como Logico
	
	Dimension BilletesCordobas[7]
	BilletesCordobas[1] <- 1000
	BilletesCordobas[2] <- 500
	BilletesCordobas[3] <- 200
	BilletesCordobas[4] <- 100
	BilletesCordobas[5] <- 50
	BilletesCordobas[6] <- 20
	BilletesCordobas[7] <- 10
	
	Dimension BilletesDolares[5]
	BilletesDolares[1] <- 100
	BilletesDolares[2] <- 50
	BilletesDolares[3] <- 20
	BilletesDolares[4] <- 10
	BilletesDolares[5] <- 1
	
	Repetir
		Limpiar Pantalla
		Escribir "========================================"
		Escribir "     CAJERO AUTOMATICO - BIENVENIDO     "
		Escribir "========================================"
		Escribir "Seleccione la moneda para el retiro:"
		Escribir "1. Cordobas (C$)"
		Escribir "2. Dolares ($)"
		Escribir "3. Salir"
		Escribir "========================================"
		Leer OpcionMoneda
		
		Si OpcionMoneda = 1 o OpcionMoneda = 2 Entonces
			Escribir "Ingrese la Cantidad a Retirar (Solo números entero):"
			Leer MontoRetiro
			
			hayError <- Falso
			Si MontoRetiro <= 0 Entonces
				Escribir "Error: La cantidad debe ser mayor a 0."
				hayError <- Verdadero
			FinSi
			
			Si OpcionMoneda = 1 Y (MontoRetiro MOD 10 <> 0) Entonces
				Escribir "Error: En cordobas solo dispensamos billetes de 10 en adelante."
				Escribir "Por favor ingrese un monto multiplo de 10 (ej.: 150, 320)."
				hayError <- Verdadero				
			FinSi
			
			Si no hayError Entonces
				Escribir "--------------------------------"
				Escribir "Desglose de Billetes a Entregar:"
				Escribir "--------------------------------"
				
				resto <- MontoRetiro
				
				Si OpcionMoneda = 1 Entonces
					
					Para i <- 1 Hasta 7 Hacer
						
						CantidadBilletes <- trunc(resto / BilletesCordobas[i])
						
						Si CantidadBilletes > 0 Entonces
							Escribir CantidadBilletes, "Billete(s) de C$", BilletesCordobas[i]							
							resto <- resto MOD BilletesCordobas[i]
						FinSi						
					FinPara
					
				SiNo
					Para i <- 1 Hasta 5	Hacer
						CantidadBilletes <- trunc(resto / BilletesDolares[i])
						
						Si CantidadBilletes > 0 Entonces
							Escribir CantidadBilletes, "Billete(s) de $" BilletesDolares[i]
							resto <- resto MOD BilletesDolares [i]								
						FinSi						
						
					FinPara
					
					
					
				FinSi
				
				Escribir "------------------------------"
				Escribir "Retiro exitoso. Tome su dinero"
				
			FinSi
			
			Escribir ""
			Escribir "Presione una tecla para continuar"
			Esperar Tecla
			
		FinSi
		
	Hasta Que OpcionMoneda = 3
	
	Escribir "Gracias por usar nuestro cajero"
FinAlgoritmo
