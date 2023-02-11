#!/bin/bash

fntFuncion1() {

if [ -f $fichUOS ]; then
	echo "Funcion 1"
	#Ejecutamos script para crear los usuarios
	./crearUsuarios.sh
	#Ejecutamos script para crear los grupos
	./crearGrupos.sh
	echo "Usuarios y grupos locales creados correctamente"
else
	echo "ERROR:"
	return
fi
}

fntFuncion2() {
if [ -f $fichUOS ]; then
	echo "Funcion 2"
        #Ejecutamos script para crear el gestor documental y dar los permisos
        ./ACL.sh
	echo "Gestor Documental creado correctamente"
else
        echo "ERROR:"
        return
fi

}

fntFuncion3() {
if [ -f $fichUOS ]; then
        echo "Funcion 3"
        #Ejecutamos script para borrar el gestor documental
        ./borrarDocumental.sh
	echo "Gestor Documental borrado correctamente"
else
        echo "ERROR:"
        return
fi

}

fntFuncion4() {
	echo "¿Necesitas ayuda?"
}

while [ opcion != "" ]
do
	clear
	echo "		Bienvenido, $USER"
	echo
	echo "$(date +'%A %d de %B del %Y. Hora: %H:%M')"
	echo
	echo "********************************************************"
	echo "	Usuarios locales - Gestor Documental"
	echo "********************************************************"
	echo

echo "1)" "Creación de usuarios-grupos locales"
echo "2)" "Creación Gestor Documental"
echo "3)" "Borrado Gestor Documental"
echo "4)" "Ayuda"
echo "5)" "SALIR"

	read -p "Introduce una opcion: " opcion
case $opcion in
	1)
		fntFuncion1
		read -p "Press [ENTER] key to continue.."
	;;
	2)
		fntFuncion2
		read -p "Press [ENTER] key to continue..."
	;;
	3)
                fntFuncion3
                read -p "Press [ENTER] key to continue..."
	;;
        4)
                fntFuncion4
                read -p "Press [ENTER] key to continue..."
        ;;
	5)
		echo "Saliendo..."
		exit 1
	;;
	*)
		echo "Error: Please try again (select 1..5)!"
		read -p "Press [ENTER] key to continue..."
	;;
esac
done
