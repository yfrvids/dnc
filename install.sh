#!/bin/bash

# Crear directorio de configuración
CONFIG_DIR="$HOME/.config/dnc"
mkdir -p "$CONFIG_DIR"

# Copiar archivos necesarios
cp init.lua "$CONFIG_DIR"
cp -r lua "$CONFIG_DIR"
cp -r bin "$CONFIG_DIR"

# Hacer ejecutable el script
chmod +x "$CONFIG_DIR/bin/dnc"

# Agregar al PATH
if [[ ":$PATH:" != *":$CONFIG_DIR/bin:"* ]]; then
  echo 'export PATH="$PATH:'"$CONFIG_DIR/bin"'"' >> ~/.bashrc
  echo 'export PATH="$PATH:'"$CONFIG_DIR/bin"'"' >> ~/.zshrc
  echo "dnc (DeltanvimC) has been added to your PATH. Please restart your terminal."
fi
