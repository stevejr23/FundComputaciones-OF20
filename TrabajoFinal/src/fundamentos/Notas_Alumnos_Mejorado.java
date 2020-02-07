package fundamentos;

/**
 *
 * @author STEVE
 */
import java.util.*;
//1
public class Notas_Alumnos {

    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);
        int x = 0, respuesta1;
        int cedulas;
        System.out.println("ingrese la cantidad de estudiantes:");
        int res = entrada.nextInt();
        String[] nombre = new String[res];
        int[][] nota = new int[res][4];
        int[] cedula = new int[res];
        int[] promedio = new int[res];
        int[] promedios_ordenados = new int[res];
        // Aqui es para que se repita el menu
        do {
            do {// el menu de datos
                System.out.println("---Registro de Estudiantes---");
                System.out.println("------------UTPL-------------");
                System.out.println("Seleccione una opción:");
                System.out.println("1 - Registrar estudiantes");
                System.out.println("2 - Ingresar los datos del estudiante");
                System.out.println("3 - Presentacion de los datos del estudiante");
                System.out.println("4 - Modificar las notas del estudiante");
                System.out.println("5 - Ordenar los datos finales de los estudiantes");
                System.out.println("------------------------------------------------");
                System.out.println("Ingrese la opcion a seleccionar");
                respuesta1 = entrada.nextInt();
                System.out.println("--------------------------------------------");
            } while (respuesta1 < 1 || respuesta1 > 5);
            // Esto es para poder empezar a crear el registro con el codigo unico
            if (respuesta1 == 1) {
                for (int i = 0; i < res; i++) {
                    System.out.println("Ingrese la cedula del alumno a registrar en el sistema");
                    cedula[i] = entrada.nextInt();
                }
            }
            // Agregar informacion al estudiante a su cedula correspondiente
            if (respuesta1 == 2) {
                do {
                    // Se pide la cedula del estudiante
                    System.out.println("--------------------------------------");
                    System.out.println("Ingrese la cedula del alumno que desea ingresar:");
                    int cedula_aux = entrada.nextInt();
                    boolean cedula_encontrada = false;
                    int pos = 0;
                    for (int i = 0; i < nombre.length; i++) {
                        if (cedula_aux == cedula[i]) {
                            cedula_encontrada = true;
                            pos = i;
                        } else {
                            System.out.println("El alumno si existe en el sistema:");
                        }
                    }
                    System.out.println("--------------------------------------");
                    if (cedula_encontrada) {
                        entrada.nextLine();
                        System.out.println("Ingrese el nombre del alumno " + cedula[pos] + ": ");
                        nombre[pos] = entrada.nextLine();
                        for (int l = 0; l < 4; l++) {
                            if (l == 0) {
                                System.out.println("Ingrese el promedio de deberes del alumno " + cedula[pos] + ":");
                                nota[pos][l] = entrada.nextInt();
                            } else if (l == 1) {
                                System.out.println("Ingrese el promedio de talleres del alumno " + cedula[pos] + ":");
                                nota[pos][l] = entrada.nextInt();
                            } else if (l == 2) {
                                System.out.println("Ingrese el promedio del examene del alumno " + cedula[pos] + ":");
                                nota[pos][l] = entrada.nextInt();
                            } else if (l == 3) {
                                System.out.println("Ingrese el promedio del trabajo final " + cedula[pos] + ":");
                                nota[pos][l] = entrada.nextInt();
                            }
                        }
                        entrada.nextLine();
                        int aux = 0;
                        for (int l = 0; l < 4; l++) {
                            aux = aux + nota[pos][l];
                        }
                        promedio[pos] = aux / 4;
                        System.out.println("Su promedio es: "+promedio[pos]);
                    }
                    do {
                        System.out.println("¿Desea agregar informacion a otro alumno?");
                        System.out.println("1 - si");
                        System.out.println("2 - no");
                        System.out.println("Ingrese la respuesta que desea realizar:");
                        respuesta1 = entrada.nextInt();
                    } while (respuesta1 < 1 || respuesta1 > 2);
                } while (respuesta1 == 1);
            }
            // Aqui sabesmos las  notas del estudiante
            if (respuesta1 == 3) {
                do {//1
                    System.out.println("Ingrese la cedula del alumno que desea consultar ");
                    int cedula_aux = entrada.nextInt();
                    for (int i = 0; i < nombre.length; i++) {
                        if (cedula_aux == cedula[i]) {
                            System.out.println("nombre " + nombre[i]);
                            for (int j = 0; j < nota[i].length; j++) {
                                if (j == 0) {
                                    System.out.println("Promedio de los deberes: " + nota[i][j] + ":");
                                } else if (j == 1) {
                                    System.out.println("Promedio de los talleres: " + nota[i][j] + ":");
                                } else if (j == 2) {
                                    System.out.println("Promedio de los examentes" + nota[i][j] + ":");

                                } else if (j == 3) {
                                    System.out.println("Promedio del trabajo final:" + nota[i][j] + ":");
                                }
                            }
                            System.out.println("Su promedio final es de:" + promedio[i]);
                        }
                    }
                    do {
                        System.out.println("¿Desea consultar otro alumno?");
                        System.out.println("1 - si");
                        System.out.println("2 - no");
                        System.out.println("Ingrese la respuesta que desea realizar:");
                        respuesta1 = entrada.nextInt();
                    } while (respuesta1 < 1 || respuesta1 > 2);
                } while (respuesta1 == 1);
            }
            // Aqui preguntamos que nota quiere modificar
            if (respuesta1 == 4) {
                do {
                    System.out.println("Ingrese el numero de cedula");
                    cedulas = entrada.nextInt();
                    for (int i = 0; i < res; i++) {
                        if (cedulas == cedula[i]) {
                            System.out.println("------------------------------------------------");
                            System.out.println("1: Usted quiere modificar la nota de los deberes");
                            System.out.println("2: Usted quiere modificar la nota de los talleres");
                            System.out.println("3: Usted quiere modificar la nota de los examenes");
                            System.out.println("4: Usted quiere modificar la nota del trabajo final");
                            System.out.println("Que nota desea modificar;");
                            int datos = entrada.nextInt();
                            if (datos == 1) {
                                System.out.println("Ingrese la nota de deberes:");
                                int nuevo1 = entrada.nextInt();
                                nota[i][datos] = nuevo1;
                                System.out.printf("Su nota actual de deberes es:%d\n", nuevo1);
                            }
                            if (datos == 2) {
                                System.out.println("Ingrese la nota de talleres:");
                                int nuevo2 = entrada.nextInt();
                                nota[i][datos] = nuevo2;
                                System.out.printf("Su nota actual de talleres es:%d\n", nuevo2);
                            }
                            if (datos == 3) {
                                System.out.println("Ingrese la nota de examenes.");
                                int nuevo3 = entrada.nextInt();
                                nota[i][datos] = nuevo3;
                                System.out.printf("Su nota actual de examenes es:%d\n", nuevo3);
                            }
                            if (datos == 4) {
                                System.out.println("Ingrese la nota del trabajo final:");
                                int nuevo4 = entrada.nextInt();
                                nota[i][datos] = nuevo4;
                                System.out.printf("Su nota actual del trabajo final es:%d\n", nuevo4);
                            }
                            promedio[i] = 0;
                            for (int j = 0; j < 4; j++) {
                                promedio[i] = promedio[i] + nota[i][j];
                            }
                            promedio[i] = promedio[i] / 4;
                        }
                    }
                    do {
                        System.out.println("¿Desea realizar alguna otra modificación?");
                        System.out.println("1 - si");
                        System.out.println("2 - no");
                        System.out.println("Ingrese la respuesta que desea realizar:");
                        respuesta1 = entrada.nextInt();
                    } while (respuesta1 < 1 || respuesta1 > 2);
                } while (respuesta1 == 1);
            }//
            // Ordenar los datos de mayor a menor
            if (respuesta1 == 5) {
                for (int i = 0; i < promedio.length; i++) {
                    promedios_ordenados[i] = promedio[i];
                }
                for (int i = 0; i < promedio.length; i++) {
                    for (int j = i + 1; j < promedio.length; j++) {
                        if (promedios_ordenados[i] < promedios_ordenados[j]) {
                            int aux;
                            aux = promedios_ordenados[i];
                            promedios_ordenados[i] = promedios_ordenados[j];
                            promedios_ordenados[j] = aux;
                        }
                    }
                }
                System.out.println("Los promedios ordenados mayor a menor son los siguientes:");
                for (int i = 0; i < promedio.length; i++) {
                    System.out.println("" + promedios_ordenados[i]);
                }
            }
            do {
                System.out.println("¿Desea realizar alguna otra operación?");
                System.out.println("1 - si");
                System.out.println("2 - no");
                System.out.println("Ingrese la respuesta que desea realizar:");
                respuesta1 = entrada.nextInt();
            } while (respuesta1 < 1 || respuesta1 > 2);
        } while (respuesta1 == 1);
    }///

}
