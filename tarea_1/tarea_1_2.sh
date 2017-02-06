#!/bin/bash

#segundo inciso de la tarea
for i in {01..31}; do echo "http://data.gdeltproject.org/events/201612"$i".export.CSV.zip" >> direcciones.txt; done

cat direcciones.txt | parallel -j0 'wget -q -O - {} | zcat | zgrep -i -w -E "MX|MEX"' > jobqueue.csv

wget http://gdeltproject.org/data/lookups/CSV.header.dailyupdates.txt

csvstack CSV.header.dailyupdates.txt jobqueue.csv | tee >( csvsql --db sqlite:///gdelt.db --tables mexico --insert) | cut -f 31,57 | ./goldstein_h.py | csvsql --db sqlite:///gdelt.db --tables mexico_ts --insert

rm jobqueue.csv direcciones.txt CSV.header.dailyupdates.txt
