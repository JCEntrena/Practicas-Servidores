Instrucciones para la ejecución del benchmark. 

El benchmark consiste en un script en bash que recibe 5 argumentos: la ruta del archivo que queremos copiar y los 4 destinos a los que queremos copiarlos. Antes de ejecutar el benchmark hemos de obtener las rutas de los destinos, que se recomienda que sean absolutas. Si vamos a trabajar sobre dispositivos externos, deberemos montarlos previamente. 

Una vez ejecutado el benchmark, obtenemos un archivo .csv con los tiempos de copia a cada emplazamiento. Si queremos volver a realizar el benchmark y no perder los datos obtenidos, deberemos copiarlos a otro emplazamiento, pues el archivo con los resultados será reescrito por la nueva ejecución del benchmark. 

Para su ejecución usaremos el comando de terminal ./benchmark.sh ARCHIVO DEST1 DEST2 DEST3 DEST4