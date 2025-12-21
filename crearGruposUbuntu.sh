#!/bin/bash
tail -n +2 gruposUbuntu.csv | while IFS=, read -r nombre descripcion
do
  sudo groupadd "$nombre"
  echo "Grupo '$nombre' creado para $descripcion"
done

