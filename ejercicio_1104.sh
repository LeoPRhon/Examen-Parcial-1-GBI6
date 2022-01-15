# Pregunta 1 del ejercicio 1.10.4
# 1) Escribe un script que, para un archivo csv y número de columna, imprima:
#	Nombre de la columna#
	#Número de valores distintos#
	#Valor mínimo
	#Valor máximo #

# Nombre de la columna

cut -d ',' -f 7 ../data/Buzzard2015_data.csv | head -n 1

#Número de valores distintos 

cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l

# Valor mínimo

cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | head -n 1

# Valor máximo

cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1