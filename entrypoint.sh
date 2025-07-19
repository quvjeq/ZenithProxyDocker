#!/bin/bash

# Crea un pipe nombrado
mkfifo input.pipe

# Inicia ZenithProxy con entrada desde el pipe
./launch --unattended < input.pipe &

# Espera 5 segundos para que el programa arranque
sleep 5

# Envía el comando "connect" al programa
echo "connect" > input.pipe

# Evita que el contenedor se cierre
wait
