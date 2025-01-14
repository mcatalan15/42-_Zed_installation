#!/bin/bash

# Variables
ZED_URL="https://zed.dev/api/releases/stable/latest/zed-linux-x86_64.tar.gz"
USER_HOME="$HOME"
SGOINFRE_PATH="$USER_HOME/sgoinfre"
ZED_FOLDER="$SGOINFRE_PATH"
ZED_DESKTOP="$USER_HOME/.local/share/applications/zed.desktop"
ZED_EXEC="$ZED_FOLDER/zed.app/libexec/zed-editor"
ZED_ICON="$ZED_FOLDER/zed.app/share/icons/hicolor/1024x1024/apps/zed.png"

# Crear carpeta sgoinfre si no existe
if [ ! -d "$SGOINFRE_PATH" ]; then
    echo "Creando carpeta sgoinfre en $SGOINFRE_PATH..."
    mkdir -p "$SGOINFRE_PATH"
fi

# Descargar y extraer Zed
echo "Descargando Zed desde $ZED_URL..."
wget -q "$ZED_URL" -O /tmp/zed.tar.gz

echo "Extrayendo Zed en $ZED_FOLDER..."
mkdir -p "$ZED_FOLDER"
tar -xzf /tmp/zed.tar.gz -C "$ZED_FOLDER"

# Crear archivo .desktop
echo "Creando archivo .desktop en $ZED_DESKTOP..."
mkdir -p "$(dirname "$ZED_DESKTOP")"

cat > "$ZED_DESKTOP" <<EOL
[Desktop Entry]
Name=Zed
Comment=Editor
Exec=$ZED_EXEC
Icon=$ZED_ICON
Terminal=false
Type=Application
Categories=Utility;Application;
EOL

# Asegurar permisos adecuados
chmod +x "$ZED_EXEC"
chmod +x "$ZED_DESKTOP"

# Limpiar archivos temporales
echo "Limpiando archivos temporales..."
rm /tmp/zed.tar.gz

echo "Zed se ha instalado correctamente. Busca 'Zed' en tu menú de aplicaciones para ejecutarlo."

