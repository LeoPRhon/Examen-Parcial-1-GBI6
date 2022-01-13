# En Primer lugar ubicamos la carpeta Saavedra2013
cd Saavedra2013

# Pregunta 1 del ejercicio
echo "El ńumero de columnas es:" ;
head -n1 n1.txt | grep -o " " | wc -l ;
echo "El numero de filas es:" ;
wc -l n1.txt; 
echo "Fin de la ejecucion"

# Pregunta 2 del ejercicio
