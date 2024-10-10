#!/bin/bash

# Obtener la ubicación geográfica del dispositivo
latitude=$(curl -s https://ipinfo.io/json | jq -r '.loc' | cut -d',' -f1)
longitude=$(curl -s https://ipinfo.io/json | jq -r '.loc' | cut -d',' -f2)

# Enviar la ubicación al servidor local
curl -X POST -H "Content-Type: application/json" -d "{\"latitude\":$latitude,\"longitude\":$longitude}" http://localhost:3000/
