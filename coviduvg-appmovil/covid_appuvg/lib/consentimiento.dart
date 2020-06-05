import 'package:covid_appuvg/CaseForm.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';
import 'main_page.dart';

void main() => runApp(Consentimiento());

final _biggerFont = const TextStyle(
    fontSize: 25.0,
    color: Colors.white,
    fontFamily: 'SeoulNamsamCondensed'
);
final _ConsentFont = const TextStyle(
    fontSize: 18.0,
    color: Colors.black,
    fontFamily: 'SeoulNamsamCondensed'
);
final _TitleFont = const TextStyle(
    fontSize: 24.0,
    color: Colors.black,
    fontFamily: 'SeoulNamsamCondensed',
    fontWeight: FontWeight.bold
);
class Consentimiento extends StatelessWidget{
  String name;
  Consentimiento({this.name});
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      //backgroundColor: Color.fromRGBO(59, 58, 59, 1),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Container(
          // margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(top: 40),
          child: AppBar(

            automaticallyImplyLeading: false, backgroundColor: Color.fromRGBO(59, 58, 59, 1),
            flexibleSpace: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Expanded(

                    child: Center(
                      child: Text(
                        'Consentimiento',
                        style: _biggerFont,
                      ),
                    )
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FractionallySizedBox(
              widthFactor: 1,
              child: Container(
                height: 20,
                color: Color.fromRGBO(7, 139, 69, 1),
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 40.0),

              child: Text('Explicación y consentimiento informado', style: _TitleFont),
            ),
            new Container(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Text("Buen día. En la comunidad UVG queremos contribuir a notificar casos de personas infectadas de "+
                    "coronavirus durante la pandemia de COVID-19. Para esto, hemos creado esta aplicación, en la que "+
                    "puedes notificar la información de un caso; ya sea de tu persona o de alguna(s) de la(s) persona(s)"+
                    "que habitan en tu hogar. Con la notificación de esta persona enferma con COVID-19, también "+
                    "queremos saber, si alguna de las personas con las que haya estado, presentan síntomas respiratorios e"+
                    "identificarlos tempranamente, información que se colectará en otro formulario (Listado de contactos). "+
                    "De esta manera podremos realizar una vigilancia de los miembros de la comunidad UVG y sus"+
                    "familiares o las personas con las que vive. Al ingresar en esta aplicación te pediremos datos de la "+
                    "clasificación del caso, datos demográficos (edad, sexo, lugar de residencia), datos clínicos (fecha de inicio de síntomas, síntomas presentados), factores de riesgo (por ejemplo personas con enfermedades cardiovasculares, de riñones, pulmones, diabetes,  embarazo), si tuvo ingreso al hospital y datos epidemiológicos (por ejemplo si 14 días antes de enfermarse tuvo contacto con algún caso de COVID-19, si había viajado a algún país en el que se reporten casos, o a lugares locales en donde se han reportado casos) y datos de laboratorio (por ejemplo pruebas realizadas y sus resultados) . Estos datos no permitirán conocer información importante del caso y poder identificar grupos de riesgo y dar seguimiento a esta pandemia en tiempo, lugar y persona.  "+
                    "El reporte del esta información incluye responder preguntas simples con un sí o un no, lo que te llevará 10 minutos. Este reporte de caso es un proceso confidencial y no solicitaremos el nombre. Solamente las personas del equipo de salud ocupacional  de la UVG, serán los únicos que conocerán esta identificación, guardando la confidencialidad debida. Esta identificación permitirá tomar acciones oportunas para apoyar en todo momento a las personas con síntomas, para su tratamiento oportuno. "+
                    "Si en caso tú o tus familiares presentan síntomas sugestivos de COVID-19 y autorizan que se les tome una muestra, el Centros de Estudios en Salud de la UVG coordinará la visita para tomar una muestra de hisopado nasofaríngeo y correrá las pruebas necesarias de manera gratuita.  Te informaremos el resultado. Si tienes alguna pregunta sobre esta vigilancia,  puedes comunicarte con XXX al correo XX@ uvg.edu.gt. Si tienes dudas sobre tus derechos como participante puedes comunicarte con la Dra. Ingrid Contreras, presidente del Comité de Ética del CES/UVG en horario de oficina al teléfono 2329-8456 o al email icontreras@ces.uvg.edu.gt.\n"+
                    "\nAUTORIZACION\n"+
                    "He leído la explicación de esta vigilancia y el uso de la aplicación descrito anteriormente. Entiendo el propósito de esta vigilancia por lo que voluntariamente doy mi consentimiento para participar."
                    ,textAlign: TextAlign.justify, style: _ConsentFont)
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Container(
                  height: 50,
                  width: 150,
                  margin: EdgeInsets.all(20),
                  child: RaisedButton(
                    color: Color.fromRGBO(59, 58, 59, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => MainPage()));
                    },
                    child: const Text('No Aceptar', style: TextStyle(fontSize: 16,color: Colors.white) ),
                  ),
                ),
                new Container(
                  height: 50,
                  width: 150,
                  margin: EdgeInsets.all(20),
                  child: RaisedButton(
                    color: Color.fromRGBO(7, 139, 69, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => CaseFrom(currentSection: 0, patient: name)));
                    },
                    child: const Text('Aceptar', style: TextStyle(fontSize: 16,color: Colors.white) ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          _currentIndex = index+1;
          if(_currentIndex==1){
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => MainPage()));
          }else if(_currentIndex==2){
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => MainPage()));
          }else if(_currentIndex==3){
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => MainPage()));
          }
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        iconSize: 36,
        backgroundColor: Color.fromRGBO(59, 58, 59, 1),

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(""),

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text("")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text("")
          ),
        ],
      ),
    );



  }
}

