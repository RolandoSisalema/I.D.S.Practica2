 Practica 2 de In. Desarrollo Software
 INTEGRANTES:
 1.
 2.
 3.
 
 CREACION DEL SH
 
 - Creamos las carpetas que van a contener nuestros archivos 
 - creamos los archivos que vamos a utilizar en el proyectto
 - exportamos imagenes y documentos a nuestras carpetas para poder utilizar en el proyecto
 - damos permisos  a los archivos exixtentes
 
 - Define la carpeta donde se encuentra tu archivo 'app.py'
 - Verifica si la carpeta de la aplicación existe
 - Establece la variable de entorno APP
 - Verifica si existe un entorno virtual llamado 'venv'.
 - Activamos entorno virtual venv
 - Instalamos flask
 - Activa el entorno virtual.
# python3 -m venv .venv
#source .venv/bin/activate
#pip3 install flask
# pip3 install flask_mail
# echo "Entorno virtual activado."
2 APP.PY

# Crear la instancia de Flask
# Configuración del diccionario del evento
# Configuración de Flask-Mail
# Crea una instancia de Flask-Mail
# Crea el mensaje de correo
# Envía el correo
    - mail.send(msg)
    - print("Correo enviado con éxito.")
# Redirige a una página de confirmación
    - return redirect(url_for("confirmacion"))
# except Exception as e:
- Maneja errores en el envío
  - print(f"Error al enviar el correo: {e}")
    - return "Hubo un error al enviar el mensaje. Por favor, inténtalo de nuevo."
    


 


 
