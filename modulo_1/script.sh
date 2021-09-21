#!/bin/sh

#miramos la variable y decidimos que hacemos para el texto del fichero (se puede optimizar, pero queda mas claro)
if [ -z "$1" ]
then
        TEXT="Que me gusta la bash!!!!"
else
        TEXT=$1
fi

#empezamos con las tareas
#creamos directorio
mkdir -p foo
#creamos fichero file1 con texto
touch foo/file1.txt
echo $TEXT > foo/file1.txt
#creamos fichero file2 vacio
touch foo/file2.txt
#copiamos contenido entre ficheros
cat foo/file1.txt > foo/file2.txt
#creamos nuevo directorio
mkdir -p dummy
#movemos file2 a directorio dummy
mv foo/file2.txt dummy/file2.txt
