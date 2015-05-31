#!/bin/bash

#######################################################
# Este benchmark calcula el tiempo que se tarda en copiar un archivo a cualquier directorio. 
# Lo utilizaremos para medir tiempos de copia de un archivo de un tamaño considerable a distintos 
# dispositivos externos, que previamente habremos conectado y montado. Proporcionaremos al script 
# la ruta del archivo que queremos copiar y las rutas a los diferentes dispositivos, asumiendo que 
# son todas correctas. Los resultados irán a un archivo .csv para poder operar con ellos. Este archivo 
# será sobreescrito siempre que ejecutemos el script, por lo que si no queremos que esto suceda deberemos
# modificarlo para conseguir lo deseado. 
#######################################################

if [ $# -le 4 ]
  then
    echo "Número de argumentos incorrecto. Uso: RUTA-ARCHIVO, DISP1, DISP2, DISP3, DISP4"
    exit 1
fi

ARCHIVO=$1
DISP_1=$2
DISP_2=$3
DISP_3=$4
DISP_4=$5

if [ -e "resultados.csv" ]
then
  rm resultados.csv
fi

touch resultados.csv 

# Iniciamos la copia del archivo dado. 

#######################################################
# Copia al primer dispositivo. 
#######################################################
echo "Copia al primer dispositivo"

START=$(date +%s.%N)

cp $ARCHIVO $DISP_1 

END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)

# Mandamos el resultado al archivo de tiempos. 
echo $DIFF >> resultados.csv


########################################################
# Copiamos al segundo dispositivo. 
########################################################
echo "Copia al segundo dispositivo"

START=$(date +%s.%N)

cp $ARCHIVO $DISP_2

END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)

# Mandamos el resultado al archivo de tiempos. 
echo $DIFF >> resultados.csv

#########################################################
# Copiamos al tercer dispositivo. 
#########################################################
echo "Copia al tercer dispositivo"

START=$(date +%s.%N)

cp $ARCHIVO $DISP_3

END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)

# Mandamos el resultado al archivo de tiempos. 
echo $DIFF >> resultados.csv

#######################################################
# Copia al cuarto dispositivo. 
#######################################################
echo "Copia al cuarto dispositivo"

START=$(date +%s.%N)

cp $ARCHIVO $DISP_4 

END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)

# Mandamos el resultado al archivo de tiempos. 
echo $DIFF >> resultados.csv

