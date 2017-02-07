#!/usr/bin/env python


if __name__ == "__main__":
  import re
  import sys
  from collections import namedtuple
  from operator import itemgetter

  mexico_ts = []
  n=0
  goldstein=0
  while True:
    linea = sys.stdin.readline()
    if not linea:
      break
    if n == 0:
      header=linea.split()
      n = 1
    elif n==1:
      gs, fecha = linea.split()
      mexico_ts.append([int(fecha),1,float(gs)])
      n=2
    else:
      gs, fecha = linea.split()
      if any(row[0]==int(fecha) for row in mexico_ts):
        for row in mexico_ts:
           if row[0]==int(fecha):
            row[1] = row[1] + 1
            row[2] = row[2] + float(gs)
      else:
        mexico_ts.append([int(fecha),1,float(gs)])
  
  mexico_ts.sort(key=lambda x: x[0])
  print("{0}\tnúmero de eventos\t{1}".format(header[1],header[0]))
  for i in mexico_ts:
    i[2]=i[2]/i[1]
    print("{}\t{}\t{}".format(i[0],i[1],i[2]))

