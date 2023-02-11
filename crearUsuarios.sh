#!/bin/bash

while IFS="," read username password
do
#Saltarse la prmera línea
if [[ "$username" == "username" ]]; then
continue
fi

#Crear usuario
sudo useradd -m -s /bin/bash $username

#Establecer contraseña
echo "$username:$password" | sudo chpasswd
done < usuarios.csv
