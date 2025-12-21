#!/bin/bash
while IFS=, read nombre descripcion  
do
  echo "nombre      -> [${nombre}]"
  echo "descripcion      -> [${descripcion}]"
 
done < <(tail -n +2 gruposUbuntu.csv)