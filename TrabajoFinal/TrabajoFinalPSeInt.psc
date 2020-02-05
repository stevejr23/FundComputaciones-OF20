Algoritmo ProyectoFundamentos
	Definir x,respuesta1,cedulas,suma,opt Como Entero
	Definir bandera Como Logico
	Definir notaDeberes,notaTalleres,notaExamenes,notaTrabajoFinal Como Entero
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
			Escribir ('6 - Salir')
			Escribir ('--')
			Escribir ('Ingrese la opcion a seleccionar')
			Leer respuesta1
		Hasta Que (respuesta1>=1 O respuesta1<=6)
		Si (respuesta1==1) Entonces
			Para i<-0 Hasta res-1 Hacer
				Escribir ('Ingrese la cedula del alumno a registrar en el sistema')
				Leer cedula[i]
			FinPara
		FinSi
		Si (respuesta1==2) Entonces
			Escribir ('Ingrese la cedula del alumno que desea ingresar')
			Definir cedula_aux Como Entero
			cedula_aux <- 0
			Leer cedula_aux
			Definir cedula_encontrada Como Logico
			Definir pos Como Entero
			pos <- 0
			Para i<-0 Hasta res-1 Hacer
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
						Leer notaDeberes
						Si ((notaDeberes>=0) Y (notaDeberes<=40)) Entonces
							nota[pos,l]<-notaDeberes
						SiNo
							Escribir ('La nota no esta dentro del rango')
						FinSi
					FinSi
					Si (l==1) Entonces
						Escribir ('Ingrese talleres del alumno')
						Leer notaTalleres
						Si ((notaTalleres>=0) Y (notaTalleres<=40)) Entonces
							nota[pos,l]<-notaTalleres
						SiNo
							Escribir ('La nota no esta dentro del rango')
						FinSi
					FinSi
					Si (l==2) Entonces
						Escribir ('Ingrese examenes del alumno')
						Leer notaExamenes
						Si ((notaExamenes>=0) Y (notaExamenes<=40)) Entonces
							nota[pos,l]<-notaExamenes
						SiNo
							Escribir ('La nota no esta dentro del rango')
						FinSi
					FinSi
					Si (l==3) Entonces
						Escribir 'Ingrese trabajo final del alumno'
						Leer notaTrabajoFinal
						Si ((notaTrabajoFinal>=0) Y (notaTrabajoFinal<=40)) Entonces
							nota[pos,l]<-notaTrabajoFinal
						SiNo
							Escribir 'La nota no esta dentro del rango'
						FinSi
					FinSi
				FinPara
				Definir aux Como Entero
				aux <- 0
				Para l<-0 Hasta 3 Hacer
					aux <- aux+nota[pos,l]
				FinPara
				promedio[pos] <- aux/4
				Escribir 'Su promedio es de:',promedio[pos]
			FinSi
		FinSi
		Si (respuesta1==3) Entonces
			Repetir
				Escribir ('Ingrese la cedula del alumno que desea consultar')
				cedula_auxil <- 0
				Para i<-0 Hasta res-1 Hacer
					Leer cedula_auxil
					Si (cedula_auxil==cedula[i]) Entonces
						Escribir ('Nombre del estudiante')
						Escribir nombre[i]
						Para j<-0 Hasta res Con Paso 1 Hacer
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
							Si (j==3) Entonces
								Escribir ('Promedio del trabajo final: ')
								Escribir nota[i,j]
							FinSi
						FinPara
						Escribir ('Su Promedio es: ')
						Escribir promedio[i]
					FinSi
				FinPara
				Repetir
					Escribir ('¿Desea consultar a otro alumno?')
					Escribir ('1 - No')
					Escribir ('2 - Si')
					Leer respuesta1
				Hasta Que (respuesta1==1) O (respuesta1=2)
			Hasta Que (respuesta1==1)
		FinSi
		Si (respuesta1==4) Entonces
			Escribir ('Ingrese el numero de cedula')
			Leer cedulas
			Para l<-0 Hasta res-1 Hacer
				Si (cedulas==cedula[i]) Entonces
					Escribir ('-----------------------------------')
					Escribir ('0: Usted quiere modificar la nota de los deberes?')
					Escribir ('1: Usted quiere modificar la nota de los talleres?')
					Escribir ('2: Usted quiere modificar la nota de los examenes?')
					Escribir ('3: Usted quiere modificar la nota del trabajo final?')
					Escribir ('Que desea mejorar?')
					Leer datos
					Si (datos==0) Entonces
						Escribir ('Ingrese la nota de deberes')
						Definir nuevo1 Como Entero
						Leer nuevo1
						Si nuevo1>0 Y nuevo1<=40 Entonces
							nota[i,datos]<-nuevo1
							Escribir ('Su nota actual de deberes es: ')
							Escribir nuevo1
						SiNo
							Escribir 'Su nota no esta dentro del rango'
						FinSi
					FinSi
					Si (datos==1) Entonces
						Escribir ('Ingrese la nota de talleres')
						Definir nuevo2 Como Entero
						Leer nuevo2
						Si nuevo2>0 Y nuevo<=40 Entonces
							nota[i,datos]<-nuevo2
							Escribir ('Su nota actual de talleres es: ')
							Escribir nuevo2
						SiNo
							Escribir 'Su nota no esta dentro del rango'
						FinSi
					FinSi
					Si (datos==2) Entonces
						Escribir ('Ingrese la nota de examenes')
						Definir nuevo3 Como Entero
						Leer nuevo3
						Si nuevo3>0 Y nuevo<=40 Entonces
							nota[i,datos]<-nuevo3
							Escribir ('Su nota actual de examenes es: ')
							Escribir nuevo3
						SiNo
							Escribir 'Su nota no esta dentro del rango'
						FinSi
					FinSi
					Si (datos==3) Entonces
						Escribir ('Ingrese la nota del trabajo final')
						Definir nuevo4 Como Entero
						Leer nueva4
						Si nueva4>0 Y nueva4<=40 Entonces
							nota[i,datos]<-nuevo4
							Escribir ('Su nota actual del trabajo final es: ')
							Escribir nuevo4
						SiNo
							Escribir 'Su nota no esta dentro del rango'
						FinSi
					FinSi
					promedio[i] <- 0
					Para j<-0 Hasta 3 Hacer
						promedio[i] <- promedio[i]+nota[i,j]
					FinPara
					promedio[i] <- promedio[i]/4
				FinSi
			FinPara
		FinSi
		Si (respuesta1==5) Entonces
			Para i<-0 Hasta res-1 Hacer
				promedios_ordenados[i] <- promedio[i]
			FinPara
			Para i<-0 Hasta res-1 Hacer
				Para j<-0 Hasta res-1 Hacer
					Si (promedios_ordenados[i]<promedios_ordenados[j]) Entonces
						Definir aux Como Entero
						aux <- promedios_ordenados[i]
						promedios_ordenados[i] <- promedios_ordenados[j]
						promedios_ordenados[j] <- aux
					FinSi
				FinPara
			FinPara
			Escribir ('Promedios ordenados de mayor a menor')
			Para i<-0 Hasta res-1 Hacer
				Escribir promedios_ordenados[i]
			FinPara
		FinSi
	Hasta Que (respuesta1==6)
FinAlgoritmo
