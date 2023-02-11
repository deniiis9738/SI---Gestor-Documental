#!/bin/bash

sudo groupadd administrador_rwx
sudo groupadd Publico_rwx
sudo groupadd Publico_rx
sudo groupadd 1ESO_rx
sudo groupadd 2ESO_rx
sudo groupadd 3ESO_rx
sudo groupadd 4ESO_rx
sudo groupadd 1BACH_rx
sudo groupadd 2BACH_rx
sudo groupadd 1ESO_rwx
sudo groupadd 2ESO_rwx
sudo groupadd 3ESO_rwx
sudo groupadd 4ESO_rwx
sudo groupadd 1BACH_rwx
sudo groupadd 2BACH_rwx
sudo groupadd Alumnado_rwx
sudo groupadd Profesorado_rwx

sudo usermod -a -G Publico_rx,1ESO_rx,3ESO_rx,4ESO_rx,2ESO_rwx usu_2ESO
sudo usermod -a -G Publico_rx,1ESO_rx,2ESO_rx,4ESO_rx,3ESO_rwx usu_3ESO
sudo usermod -a -G Publico_rx,1ESO_rx,2ESO_rx,3ESO_rx,4ESO_rwx usu_4ESO
sudo usermod -a -G Publico_rx,2ESO_rx,3ESO_rx,4ESO_rx,1ESO_rwx usu_1ESO
sudo usermod -a -G Publico_rx,2BACH_rx,2BACH_rwx usu_2BACH
sudo usermod -a -G Publico_rx,1BACH_rx,1BACH_rwx usu_1BACH
sudo usermod -a -G Publico_rwx,sudo,adm,administrador_rwx usu_1DAM
sudo usermod -a -G Publico_rx,Alumnado_rwx usu_alumnado
sudo usermod -a -G Publico_rx,Profesorado_rwx usu_profesorado
sudo usermod -a -G sudo,adm,administrador_rwx,Publico_rwx usu_administrador
