# En Primer lugar ubicamos la carpeta Saavedra2013
cd Saavedra2013

# Pregunta 1 del ejercicio

echo "Pregunta 1 del ejercicio 1.10.3";
echo "El ńumero de columnas es:" ;
head -n1 n1.txt | grep -o " " | wc -l ;
echo "El numero de filas es:" ;
wc -l n1.txt; 
echo "Fin de la ejecucion"

# Pregunta 2 del ejercicio
echo "Pregunta 2 del ejercicio 1.10.3";
for f in $(ls *.txt);
do
    echo "El numero de columas es:" ;
    head -n 1 $f | awk '{print NF}'
    echo "El numero de filas es:" ;
    cat $f | wc -l
done
echo "Fin de la ejecucion"

# Pregunta 3 del ejercicio

var=0
var1=0
for f in $(ls *.txt);
do
    echo "El numero de columna es:" ;
    PART1=$(head -n 1 $f | awk '{print NF}');
    echo $PART1;

    echo "El numero de filas es:" ;
    PART2=$(cat $f | wc -l);
    echo $PART2;

    #Columna mayor 
    if (( PART1 > var1 )); 
    then
    columna=$f;
    export var1=$PART1;
    fi

    #Fila mayor
    if (( PART2 > var )); 
    then
    fila=$f;
    export var=$PART2;
    fi
    
done

echo El documento con mayor numero de filas es:$fila ;
echo con un total de:$var;

echo El documento con mayor numero de columnas es:$columna ;
echo con un total de:$var1;
