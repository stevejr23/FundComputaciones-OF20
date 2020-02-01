Algoritmo ProyectoFundamentos
	Definir x Como Entero
	Definir respuesta1 Como Entero
	Definir cedulas Como Entero
	Definir bandera Como Logico
	Definir suma Como Entero
	Definir opt Como Entero
	Escribir ('Ingrese la cantidad de estudiantes')
	Leer res
	Dimension nombre[res]
	Dimension nota[res,4]
	Dimension cedula[res]
	Dimension promedio[res]
	Dimension promedios_ordenados[res]
	Repetir
		Repetir
			Escribir ('---Registro de alumnos---')
			Escribir ('Seleccione una opcion')
			Escribir ('1 - Registrar estudiantes')
			Escribir ('2 - Ingresar los datos del estudiante')
			Escribir ('3 - Presentacion de los datos del estudiante')
			Escribir ('4 - Modificar las notas del estudiante')
			Escribir ('5 - Ordenar los datos finales del estudiante')
			Escribir ('--')
			Escribir ('Ingrese la opcion a seleccionar')
			Leer respuesta1
		Hasta Que (respuesta1<1 O respuesta1>5)
		Si (respuesta1==1) Entonces
			Mientras (bandera==Verdadero) Hacer
				Para i<-1 Hasta res Hacer
					Escribir ('Ingrese la cedula del alumno a registrar en el sistema')
					Leer cedula[i]
					Escribir ('¿Desea registrar otro numero de cedula?')
					Escribir ('1 - Si')
					Escribir ('2 - No')
					Leer opt
					Si (opt==2) Entonces
						bandera <- falso
					FinSi
				FinPara
			FinMientras
		FinSi
		Si (respuesta1==2) Entonces
			Repetir
				Escribir ('Ingrese la cedula del alumno que desea ingresar')
				Definir cedula_aux Como Entero
				Leer cedula_aux
				Definir cedula_encontrada Como Logico
				Definir pos Como Entero
				Para i<-0 Hasta res Hacer
					Si (cedula_aux==cedula[i]) Entonces
						cedula_encontrada <- Verdadero
						pos <- i
					FinSi
				FinPara
				Si (cedula_encontrada) Entonces
					Escribir ('Ingrese el nombre del alumno')
					Leer nombre[pos]
					Para l<-0 Hasta 4 Hacer
						Si (l==0) Entonces
							Escribir ('Ingrese deberes del alumno')
							Leer nota[pos,l]
						FinSi
						Si (l==1) Entonces
							Escribir ('Ingrese talleres del alumno')
							Leer nota[pos,l]
						FinSi
						Si (l==2) Entonces
							Escribir ('Ingrese examenes del alumno')
							Leer nota[pos,l]
						FinSi
						Si (l==3) Entonces
							Escribir ('Ingrese trabajo final del alumno')
							Leer nota[pos,l]
						FinSi
					FinPara
					Definir aux Como Entero
					Para l<-0 Hasta 4 Hacer
						aux <- aux+nota[pos,l]
					FinPara
					promedio[pos] <- aux/4
				FinSi
				Repetir
					Escribir ('¿Desea agregar informacion a otro alumno?')
					Escribir ('1 - Si')
					Escribir ('2 - No')
					Leer respuesta1
				Hasta Que (respuesta1<1) O (respuesta1>2)
			Hasta Que (respuesta1==1)
		FinSi
		Si (respuesta1==3) Entonces
			Repetir
				Escribir ('Ingrese la cedula del alumno que desea consultar')
				Definir cedula_aux Como Entero
				Leer cedula_aux
				Para l<-0 Hasta res Hacer
					Si (cedula_aux==cedula[i]) Entonces
						Escribir ('nombre')
						Escribir nombre[i]
						Para l<-0 Hasta res Hacer
							Si (j==0) Entonces
								Escribir ('Promedio de los deberes: ')
								Escribir nota[i,j]
							FinSi
							Si (j==1) Entonces
								Escribir ('Promedio de los talleres: ')
								Escribir nota[i,j]
							FinSi
							Si (j==2) Entonces
								Escribir ('Promedio de los examenes: ')
								Escribir nota[i,j]
							FinSi
						FinPara
						Escribir ('Promedio: ')
						Escribir promedio[i]
					FinSi
				FinPara
				Repetir
					Escribir ('¿Desea consultar a otro alumno?')
					Escribir ('1 - Si')
					Escribir ('2 - No')
					Leer respuesta1
				Hasta Que (respuesta1<1) O (respuesta1>2)
			Hasta Que (respuesta1==1)
		FinSi
		Si (respuesta1==4) Entonces
			Repetir
				Escribir ('Ingrese el numero de cedula')
				Leer cedula[i]
				Para l<-0 Hasta res Hacer
					Si (cedulas==cedula[i]) Entonces
						Escribir ('-----------------------------------')
						Escribir ('1: Usted quiere modificar la nota de los deberes?')
						Escribir ('2: Usted quiere modificar la nota de los talleres?')
						Escribir ('3: Usted quiere modificar la nota de los examenes?')
						Escribir ('4: Usted quiere modificar la nota del trabajo final?')
						Escribir ('Que desea mejorar?')
						Leer datos
						Si (datos==1) Entonces
							Escribir ('Ingrese la nota de deberes')
							Definir nuevo1 Como Entero
							nota[i,datos]<-nuevo1
							Escribir ('Su nota actual de deberes es: ')
							Escribir nuevo1
						FinSi
						Si (datos==2) Entonces
							Escribir ('Ingrese la nota de talleres')
							Definir nuevo2 Como Entero
							nota[i,datos]<-nuevo2
							Escribir ('Su nota actual de talleres es: ')
							Escribir nuevo2
						FinSi
						Si (datos==3) Entonces
							Escribir ('Ingrese la nota de examenes')
							Definir nuevo3 Como Entero
							nota[i,datos]<-nuevo3
							Escribir ('Su nota actual de examenes es: ')
							Escribir nuevo3
						FinSi
						Si (datos==4) Entonces
							Escribir ('Ingrese la nota del trabajo final')
							Definir nuevo4 Como Entero
							nota[i,datos]<-nuevo4
							Escribir ('Su nota actual del trabajo final es: ')
							Escribir nuevo4
						FinSi
						promedio[i] <- 0
						Para j<-0 Hasta 4 Hacer
							promedio[i] <- promedio[i]+nota[i,j]
						FinPara
						promedio[i] <- promedio[i]/4
					FinSi
				FinPara
				Repetir
					Escribir ('¿Desea realizar alguna otra modificacion?')
					Escribir ('1 - Si')
					Escribir ('2 - No')
					Leer respuesta1
				Hasta Que (respuesta1<1) O (respuesta1>2)
			Hasta Que (respuesta1==1)
		FinSi
		Si (respuesta1==5) Entonces
			Para i<-0 Hasta res Hacer
				promedios_ordenados[i] <- promedio[i]
			FinPara
			Para i<-0 Hasta res Hacer
				Para j<-0 Hasta res Hacer
					Si (promedios_ordenados[i]<promedios_ordenados[j]) Entonces
						Definir aux Como Entero
						aux <- promedios_ordenados[i]
						promedios_ordenados[i] <- promedios_ordenados[j]
						promedios_ordenados[j] <- aux
					FinSi
				FinPara
			FinPara
			Escribir ('Promedios ordenados de mayor a menor')
			Para i<-0 Hasta res Hacer
				Escribir promedios_ordenados[i]
			FinPara
		FinSi
		Repetir
			Escribir ('¿Desea realizar alguna otra operacion?')
			Escribir ('1 - Si')
			Escribir ('2 - No')
			Leer respuesta1
		Hasta Que (respuesta1<1) O (respuesta1>2)
	Hasta Que (respuesta==1)
FinAlgoritmo

