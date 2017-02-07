#!/bin/bash

#primer inciso de la tarea
parallel wget :::  http://data.gdeltproject.org/events/201612{01..31}.export.CSV.zip
echo -e Peso de archivos comprimidos:; du -h -c *.zip | awk '{print $1 "\t" $2;}'
echo Número de archivos: $(ls *.zip | wc -l) 

