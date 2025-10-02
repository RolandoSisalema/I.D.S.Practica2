from flask import Flask, render_template, request, url_for, send_file, redirect
from flask_mail import Mail, Message

app = Flask(__name__)

info_evento = {
    "nombre": "Rally MTB 2025",
    "organizador": "Club Social y Deportivo Unidos por el Deporte",
    "descripcion": "Carrera de MTB rural tirne dos modalidades 30km y 80km ...¡CUAL TE GUSTA!",
    "fecha": "24 de Octubre de 2025",
    "hora": "8am",
    "lugar": "Tandil, Buenos Aires",
    "tipo_carrera": "MTB ciclismo rural",
    "modalidad_costo": {
        1: {"nombre": "Recorrido Corto", "valor_de_inscripcion": "100"},
        2: {"nombre": "Recorrido Largo", "valor_de_inscripcion": "200"},
    },
}

app.config["MAIL_SERVER"] = "smtp.gmail.com"
app.config["MAIL_PORT"] = 587
app.config["MAIL_USE_TLS"] = True

app.config["MAIL_USERNAME"] = "mtbciclismo866@gmail.com"
app.config["MAIL_PASSWORD"] = "bglc remi prjx wdnx"

mail = Mail(app)


@app.route("/")
def index():
    return render_template("index.html", info_evento=info_evento)


@app.route("/registration", methods=["GET", "POST"])
def registration():
    if request.method == "POST":
        nombre = request.form["nombre"]
        correo = request.form["correo"]
        modalidad_form = request.form["modalidad"]
        msg = Message(
            subject=f"nuevo mensaje de {nombre}",
            sender=app.config["MAIL_USERNAME"],
            recipients=[correo],
        )
        msg.body = f"Felicidades sr/a:{nombre}\n se registro con el correo {correo}\n en la modalidad {modalidad_form}"
        msg.body = (
            "Fijarse metas es el primer paso para transformar lo invisible en visible"
        )
        try:
            mail.send(msg)
            print("Tu registro fue con exito, ¡SUERTE EN LA COMPETENCIA!")
            return redirect(url_for("confirmacion"))
        except Exception as e:
            print(f"error al enviar el correo: {e}")
            return " hubo un error al enviar al mensaje, por favor intentalo de nuevo"
    return render_template("registration.html", info_evento=info_evento)


@app.route("/confirmacion")
def confirmacion():
    return "GRAACIAS POR PARTICIPAR TU MENSAJE FUE ENVIADA"


@app.route("/download")
def descargar_regla():
    descargar_reglamento = "/home/rolando-sisalema/Documentos/Introduccion desarrollo soft/EjercicioPractico2/Trabajo_practico2/static/documentos/Reglamento-de-Ciclismo.pdf"
    return send_file(descargar_reglamento, as_attachment=True)


@app.route("/downloads")
def descarga_deslinde():
    descargar_d = "/home/rolando-sisalema/Documentos/Introduccion desarrollo soft/EjercicioPractico2/Trabajo_practico2/static/documentos/deslinde-lca-4-2025.pdf"
    return send_file(descargar_d, as_attachment=True)


if __name__ == "main":
    app.run("localhost", port=8000, debug=True)
