#!/bin/bash
tail -n +2 gruposUbuntu.csv | while IFS=, read -r nombre descripcion  
do
  echo "nombre      -> [${nombre}]"
  echo "descripcion      -> [${descripcion}]"
done
