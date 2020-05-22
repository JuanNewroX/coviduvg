import 'package:covid_appuvg/CaseForm.dart';
import 'package:flutter/material.dart';

void main() => runApp(Consentimiento());


class Consentimiento extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CONSENTIMIENTO'),
          backgroundColor: Colors.green,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 40.0),

              child: Text('Explicación y consentimiento informado', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            new Container(
                padding: EdgeInsets.all(30),
                child: Text("Buen día. En la comunidad UVG queremos contribuir a notificar casos de personas infectadas de "+
                    "coronavirus durante la pandemia de COVID-19. Para esto, hemos creado esta aplicación, en la que "+
                    "puedes notificar la información de un caso; ya sea de tu persona o de alguna(s) de la(s) persona(s)"+
                    "que habitan en tu hogar. Con la notificación de esta persona enferma con COVID-19, también "+
                    "queremos saber, si alguna de las personas con las que haya estado, presentan síntomas respiratorios e"+
                    "identificarlos tempranamente, información que se colectará en otro formulario (Listado de contactos)."+
                    "De esta manera podremos realizar una vigilancia de los miembros de la comunidad UVG y sus"+
                    "familiares o las personas con las que vive. Al ingresar en esta aplicación te pediremos datos de la "+
                    "clasificación del caso, datos demográficos (edad, sexo, lugar de residencia), datos clínicos (fecha de inicio de síntomas, síntomas presentados), factores de riesgo (por ejemplo personas con enfermedades cardiovasculares, de riñones, pulmones, diabetes,  embarazo), si tuvo ingreso al hospital y datos epidemiológicos (por ejemplo si 14 días antes de enfermarse tuvo contacto con algún caso de COVID-19, si había viajado a algún país en el que se reporten casos, o a lugares locales en donde se han reportado casos) y datos de laboratorio (por ejemplo pruebas realizadas y sus resultados) . Estos datos no permitirán conocer información importante del caso y poder identificar grupos de riesgo y dar seguimiento a esta pandemia en tiempo, lugar y persona.  "+
                    "El reporte del esta información incluye responder preguntas simples con un sí o un no, lo que te llevará 10 minutos. Este reporte de caso es un proceso confidencial y no solicitaremos el nombre. Solamente las personas del equipo de salud ocupacional  de la UVG, serán los únicos que conocerán esta identificación, guardando la confidencialidad debida. Esta identificación permitirá tomar acciones oportunas para apoyar en todo momento a las personas con síntomas, para su tratamiento oportuno. "+
                    "Si en caso tú o tus familiares presentan síntomas sugestivos de COVID-19 y autorizan que se les tome una muestra, el Centros de Estudios en Salud de la UVG coordinará la visita para tomar una muestra de hisopado nasofaríngeo y correrá las pruebas necesarias de manera gratuita.  Te informaremos el resultado. Si tienes alguna pregunta sobre esta vigilancia,  puedes comunicarte con XXX al correo XX@ uvg.edu.gt. Si tienes dudas sobre tus derechos como participante puedes comunicarte con la Dra. Ingrid Contreras, presidente del Comité de Ética del CES/UVG en horario de oficina al teléfono 2329-8456 o al email icontreras@ces.uvg.edu.gt.\n"+
                    "\nAUTORIZACION\n"+
                    "He leído la explicación de esta vigilancia y el uso de la aplicación descrito anteriormente. Entiendo el propósito de esta vigilancia por lo que voluntariamente doy mi consentimiento para participar."
                    +"\n\n\n\n",textAlign: TextAlign.justify, style: TextStyle(fontSize: 12),)
            ),
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => CaseFrom()));// Add your onPressed code here!
        },
        label: Text('De acuerdo con los terminos'),
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );



  }
}

