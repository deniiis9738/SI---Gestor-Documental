#!/bin/bash

setfacl -m g:Publico_rwx:rwx /mnt/Publico
setfacl -m g:Publico_rx:rx /mnt/Publico
setfacl -m d:g:Publico_rwx:rwx /mnt/Publico
setfacl -m d:other:0 /mnt/Publico
setfacl -m other:0 /mnt/Publico
setfacl -m mask:rwx /mnt/Publico
setfacl -m d:mask:rwx /mnt/Publico

mkdir -p /mnt/Publico/{1ESO,2ESO,3ESO,4ESO,1BACH,2BACH,1DAM,Profesorado,Alumnado}

setfacl -m g:1ESO_rwx:rwx /mnt/Publico/1ESO
setfacl -m d:g:1ESO_rwx:rwx /mnt/Publico/1ESO
setfacl -m g:2ESO_rx:rx /mnt/Publico/1ESO
setfacl -m g:3ESO_rx:rx /mnt/Publico/1ESO
setfacl -m g:4ESO_rx:rx /mnt/Publico/1ESO
setfacl -d -m g:2ESO_rx:rx /mnt/Publico/1ESO
setfacl -d -m g:3ESO_rx:rx /mnt/Publico/1ESO
setfacl -d -m g:4ESO_rx:rx /mnt/Publico/1ESO
setfacl -m g:2ESO_rwx:rwx /mnt/Publico/2ESO
setfacl -m d:g:2ESO_rwx:rwx /mnt/Publico/2ESO
setfacl -m g:1ESO_rx:rx /mnt/Publico/2ESO
setfacl -m g:3ESO_rx:rx /mnt/Publico/2ESO
setfacl -m g:4ESO_rx:rx /mnt/Publico/2ESO
setfacl -d -m g:1ESO_rx:rx /mnt/Publico/2ESO
setfacl -d -m g:3ESO_rx:rx /mnt/Publico/2ESO
setfacl -d -m g:4ESO_rx:rx /mnt/Publico/2ESO
setfacl -m g:3ESO_rwx:rwx /mnt/Publico/3ESO
setfacl -m d:g:3ESO_rwx:rwx /mnt/Publico/3ESO
setfacl -m g:1ESO_rx:rx /mnt/Publico/3ESO
setfacl -m g:2ESO_rx:rx /mnt/Publico/3ESO
setfacl -m g:4ESO_rx:rx /mnt/Publico/3ESO
setfacl -d -m g:1ESO_rx:rx /mnt/Publico/3ESO
setfacl -d -m g:2ESO_rx:rx /mnt/Publico/3ESO
setfacl -d -m g:4ESO_rx:rx /mnt/Publico/3ESO
setfacl -m g:4ESO_rwx:rwx /mnt/Publico/4ESO
setfacl -m d:g:4ESO_rwx:rwx /mnt/Publico/4ESO
setfacl -m g:1ESO_rx:rx /mnt/Publico/4ESO
setfacl -m g:2ESO_rx:rx /mnt/Publico/4ESO
setfacl -m g:3ESO_rx:rx /mnt/Publico/4ESO
setfacl -d -m g:1ESO_rx:rx /mnt/Publico/4ESO
setfacl -d -m g:2ESO_rx:rx /mnt/Publico/4ESO
setfacl -d -m g:3ESO_rx:rx /mnt/Publico/4ESO
setfacl -m g:1BACH_rwx:rwx /mnt/Publico/1BACH
setfacl -m d:g:1BACH_rwx:rwx /mnt/Publico/1BACH
setfacl -m g:2BACH_rx:rx /mnt/Publico/1BACH
setfacl -d -m g:2BACH_rx:rx /mnt/Publico/1BACH
setfacl -m g:2BACH_rwx:rwx /mnt/Publico/2BACH
setfacl -m d:g:2BACH_rwx:rwx /mnt/Publico/2BACH
setfacl -m g:1BACH_rx:rx /mnt/Publico/2BACH
setfacl -d -m g:1BACH_rx:rx /mnt/Publico/2BACH
setfacl -m g:Alumnado_rwx:rwx /mnt/Publico/Alumnado
setfacl -m d:g:Alumnado_rwx:rwx /mnt/Publico/Alumnado
setfacl -m g:Profesorado_rwx:rwx /mnt/Publico/Profesorado
setfacl -m d:g:Profesorado_rwx:rwx /mnt/Publico/Profesorado
