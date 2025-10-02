 Practica 2 de In. Desarrollo Software

INTEGRANTES:

- Gaston Aguirre - Padron: 113026 - style.css- index.html
- Leonardo Mavare - Padrom: 114477 - registratiom.html- base.html
- Marco Sisalema - Padron: 114345  - app.py - proyecto2-sh 
 
 
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
python3 -m venv .venv
source .venv/bin/activate
pip3 install flask
 pip3 install flask_mail


2 APP.PY

Crear la instancia de Flask
Configuración del diccionario del evento
Configuración de Flask-Mail
Crea una instancia de Flask-Mail
Crea el mensaje de correo
Envía el correo
    - mail.send(msg)
    - print("Correo enviado con éxito.")
Redirige a una página de confirmación
    - return redirect(url_for("confirmacion"))
except Exception as e:
- Maneja errores en el envío
  - print(f"Error al enviar el correo: {e}")
    - return "Hubo un error al enviar el mensaje. Por favor, inténtalo de nuevo."

  3 index.html
  creamos un codigo html donde se importaria los datos que se encuentra en un diccionario en app.py
  luego los datos son recopilados y guardados en una base de datos
  utilizamos jinja para poder utilizar url for y poder transportar la imagen

  4- regristation.html
  creamos un codigo de formulario donde el usuario debera rellenar con datos
  luego los datos son recopilados y almacenados en una base
  despues se devuelve un mensaje en el correo del usuario
  donde los datos son:
  - nombre
  - correo
  - modalidad
    y al final creamos un boton de envio a la base de datos.
  5- base.html
    - es donde importa el codigo fuente del index
    -la estructura de la pagina web
    -contiene y vincula todos los codigos ya creados
    -tambien contiene las propiedades de los botones de inicio e inscripciones
  6-Style.css
   - creamos un codigo de hojas de estilos para editar la pagina web
   - le agregamos color y algunas imagenes
   - utilizamos:
   - backgruonds-color: para el color de los textos
   - padding: los elementos de dentro del entorno 
   - text-align: para centrar las letras de nuestra pagina web 
   - display- disk: para decirle a los elementos de html el tamaño y control de las imagenes
   - ajustamos los tamaños con width y height 
   - ajustamos con border: los bordes de la pagina  
     


 


 
