# Arquitectura de Producto de Datos

## Equipo 4

Diana Fabiola Cerón Flores
Ixchel G. Meza Chávez
Paulina Salgado

- El archivo tarea_1_1.sh descarga los 31 archivos de Diciembre de 2016 que contienen los eventos de [[http://gdeltproject.org/][=GDELT=]], y muestra los archivos y su tamaño, el tamaño total y el número de archivos.

El resultado es el siguiente:

16M	20161201.export.CSV.zip
15M	20161202.export.CSV.zip
9,0M	20161203.export.CSV.zip
7,8M	20161204.export.CSV.zip
14M	20161205.export.CSV.zip
16M	20161206.export.CSV.zip
16M	20161207.export.CSV.zip
15M	20161208.export.CSV.zip
14M	20161209.export.CSV.zip
8,8M	20161210.export.CSV.zip
7,3M	20161211.export.CSV.zip
13M	20161212.export.CSV.zip
15M	20161213.export.CSV.zip
15M	20161214.export.CSV.zip
15M	20161215.export.CSV.zip
14M	20161216.export.CSV.zip
8,4M	20161217.export.CSV.zip
7,2M	20161218.export.CSV.zip
14M	20161219.export.CSV.zip
15M	20161220.export.CSV.zip
15M	20161221.export.CSV.zip
14M	20161222.export.CSV.zip
12M	20161223.export.CSV.zip
7,3M	20161224.export.CSV.zip
5,5M	20161225.export.CSV.zip
7,0M	20161226.export.CSV.zip
9,4M	20161227.export.CSV.zip
11M	20161228.export.CSV.zip
12M	20161229.export.CSV.zip
11M	20161230.export.CSV.zip
7,1M	20161231.export.CSV.zip
356M	total
Número de archivos: 31

- Con los archivos tarea_1_2.sh y goldstein_h.py usando =parallel= y sin descomprimir los archivos ni guardarlos, se guardan los registros de México en el archivo jobqueue.csv y a partir de este archivo y el archivo de la documentación de =GDELT= que contienen los headers de los registros, se hace una tabla =mexico= en la base de datos =sqlite= llamada =gddelt.db= 

-Al comando anterior se le agregó =tee= y se guardó otra tabla llamada =mexico_ts= con la fecha DATEADDED de los registros, el número de eventos por día y la escala de Goldstein de cada día. Para calcular estos últimos datos se llama desde la terminal el archivo goldstein_h.py. Dado que calcula dichos valores con el total de los eventos por día, esta parte no se hizo utilizando =parallel=
