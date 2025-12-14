#Establecer política de contraseñas con comandos NET
#Credenciales de acceso y contraseña para los usuarios de Caléndula: Tiempo de cambio de contraseña en un máximo de 45 días, longitud mínima de 10 caracteres, bloqueo de cuenta de 60 minutos con 5 intentos de inicio de sesión erróneos.

#Establecer los dias máximos para cambiar el password, 45 días.
net accounts /maxpwage:45

#Establecer la longitud mínima del password, 10 caracteres.
net accounts /minpwlen:10

#Se configura para que se bloquee si se falla al intento 5.
net accounts /lockoutthreshold:5

#Duración del bloqueo 60 minutos
net accounts /lockoutduration:60

#Ventana de bloqueo (tiempo en minutos antes de que se restablezca el contador de intentos fallidos de contraseña )
net accounts /lockoutwindow:60

#Para consultar la configuración de los parámetros establecidos
net accounts