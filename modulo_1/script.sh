#!/bin/sh

#miramos la variable y decidimos que hacemos para el texto del fichero (se puede optimizar, pero queda mas claro)
if [ -z "$1" ]
then
        TEXT="Que me gusta la bash!!!!"
else
        TEXT=$1
fi

#empezamos con las tareas
#creamos directorios
mkdir -p foo
mkdir -p foo/dummy
mkdir -p foo/empty
#creamos fichero file1 con texto
touch foo/dummy/file1.txt
echo $TEXT > foo/dummy/file1.txt
#creamos fichero file2 vacio
touch foo/dummy/file2.txt
#copiamos contenido entre ficheros
cat foo/dummy/file1.txt > foo/dummy/file2.txt
#movemos file2 a directorio empty
mv foo/dummy/file2.txt foo/empty/file2.txt
