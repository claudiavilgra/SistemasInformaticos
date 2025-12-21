#!/bin/bash

tail -n +2 usuariosUbuntu.csv | while IFS=, read -r cuenta password descripcion nombre_apellidos grupo_departamento
do
  sudo useradd -m -g "$grupo_departamento" -c "$nombre_apellidos - $descripcion" "$cuenta"
  echo "$cuenta:$password" | sudo chpasswd
  echo "Usuario '$cuenta' creado y asignado al grupo '$grupo_departamento'"
done
