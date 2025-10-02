#!/bin/bash


# Nombre del directorio del proyecto principal
PROYECTO2="Trabajo_practico2"
# Nombre del entorno virtual
VENV_NAME=".venv"





# 3. Activación del entorno virtual e instalación de Flask (comentar para no activarlo automáticamente)


# Este script inicia una aplicación de Flask ubicada en una carpeta específica.

# --- Configuración ---
# Define la carpeta donde se encuentra tu archivo 'app.py'.
# Puedes cambiar "my_flask_app" por el nombre real de tu carpeta.

# --- Lógica del script ---

# Verifica si la carpeta de la aplicación existe.
if [ -d "$PROYECTO2" ]; then
    # Entra en la carpeta de la aplicación.
    cd "$PROYECTO2"
    echo "Entrando al directorio: $(pwd)"

    # Establece la variable de entorno FLASK_APP.
    export FLASK_APP=app.py

    # Verifica si existe un entorno virtual llamado 'venv'.
    if [ -d ".venv" ]; then
        echo "Activando el entorno virtual..."
        # Activa el entorno virtual.
        python3 -m venv .venv
        source .venv/bin/activate
        pip3 install flask
        pip3 install flask_mail
        echo "Entorno virtual activado."
    else
        echo "Advertencia: No se encontró un entorno virtual 'venv' en el directorio."
        echo "Asegúrate de haberlo creado e instalado las dependencias (ej: 'python3 -m venv venv' y 'pip install -r requirements.txt')."
    fi

    # Inicia la aplir9cación de Flask.
    echo "Iniciando la aplicación de Flask..."
    #flask run

else
    echo "Error: El directorio '$PROYECTO2' no se encontró."
    echo "Por favor, crea la carpeta o actualiza el nombre en este script."
    exit 1
fi

# 4. Creación del archivo app.py
echo "Creando el archivo app.py"
touch app.py

# 5. Creación de la estructura de carpetas
echo "Creando la estructura de carpetas: static, static/css, static/images, templates"
mkdir -p static/css static/images static/documentos templates

# 6. Creación de los archivos HTML
echo "Creando los archivos HTML: index.html y registration.html"
touch templates/index.html
touch templates/registration.html
touch templates/base.html

touch static/css/styles.css
#7 copio pdf ala carpeta documentos
echo " documentos e imagenes copiados correctamente"
cp  ~/Documentos/deslinde-lca-4-2025.pdf  static/documentos/
cp  ~/Documentos/Reglamento-de-Ciclismo.pdf  static/documentos/
cp  ~/Documentos/Auspiciante1.jpeg  static/images/
cp  ~/Documentos/Auspiciante2.png  static/images/
cp  ~/Documentos/Auspiciante3.png  static/images/
cp  ~/Documentos/Auspiciante4.png  static/images/
cp  ~/Documentos/Auspiciante5.jpeg  static/images/
cp ~/Documentos/evento1.jpeg  static/images/
cp ~/Documentos/evento2.jpeg  static/images/
cp ~/Documentos/evento3.jpeg  static/images/
cp ~/Documentos/evento4.jpeg  static/images/
cp ~/Documentos/evento5.jpeg  static/images/
cp ~/Documentos/evento6.jpg  static/images/
cp ~/Documentos/evento7.jpeg  static/images/

echo "¡El proyecto ha sido creado exitosamente!"

