$file_users = Import-Csv -Path ".\usuariosCalendula.csv
New-LocalGroup -Name "Usuarios" -Description "Grupo de usuarios de Caléndula."


$file_users | Select-Object -ExpandProperty Department | SortObject -Unique | ForEach-Object {
  if (-not(Get-LocalGroup -Name $_ -ErrorAction SilentlyContinue)) {
    New-LocalGroup -Name $_ -Description "Departamento $_"
  }
}

foreach ($user in $file_users) {
  $clave=ConvertTo-SecureString $user.Password -AsPlainText -Force
  $nombreCompleto = "$($user.Name) $($user.Surname)"
  $descripcion = "Departamento: $($user.Department)"

  New-LocalUser $user.User -Password $clave -Description $user.Department
  
  Add-LocalGroupMember -Group "Usuarios" -Member $user.User
  Add-LocalGroupMember -Group $user.Department -Member $user.User
}