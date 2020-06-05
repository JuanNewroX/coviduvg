import 'package:covid_appuvg/agradecimiento.dart';
import 'package:covid_appuvg/models/questions.dart';
import 'package:covid_appuvg/models/section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'main_page.dart';
class CaseFrom extends StatefulWidget{
  final int currentSection;
  final String patient;
  CaseFrom({this.currentSection, this.patient});
  @override
  all createState() => all(currentSection: currentSection, patient: patient);
}
class all extends State<CaseFrom>{
  List<Section> Sections = [new Section(SectionId: 1, SectionName: 'Datos Generales', Desc: 'Con estas preguntas se podrá conocer mejor su contexto personal y el ambiente donde se desenvuelve'),
    new Section(SectionId:2,SectionName:'Afecciones Medicas', Desc: 'Durante su vida cuales de las siguientes condiciones ha tenido.'),
    new Section(SectionId:3,SectionName:'Reporte Diario', Desc: 'En las ultimas 24 horas, ¿has tenido alguno de estos sintomas? Marca todos los que apliquen.'),
    new Section(SectionId:4,SectionName:'Convivencia en casa', Desc: 'Estas preguntas serviran para comprender el ambiente donde vive, y los posibles riesgos que esto presenta.')];
  List<Questions> SectionQuestions = [
    new Questions(SectionId: 0, QuestionType: 'DatePicker', QuestionName: 'Fecha de nacimiento'),
    new Questions(SectionId: 0, QuestionType: 'Select', QuestionName: 'Sexo', answers: ['Masculino', 'Femenino']),
    new Questions(SectionId: 0, QuestionType: 'Select', QuestionName: 'Ocupacion', answers: ['Ingeniero', 'Abogado', 'Profesor', 'Doctor', 'Estudiante']),
    new Questions(SectionId: 1, QuestionType: 'Radio', QuestionName: 'Diabetes'),
    new Questions(SectionId: 1, QuestionType: 'Radio', QuestionName: 'Hipertensión Arterial'),
    new Questions(SectionId: 1, QuestionType: 'Radio', QuestionName: 'Asma'),
    new Questions(SectionId: 1, QuestionType: 'Radio', QuestionName: 'Cardiopatía Congestiva'),
    new Questions(SectionId: 1, QuestionType: 'Radio', QuestionName: 'Arritmia Cardiaca'),
    new Questions(SectionId: 2, QuestionType: 'Radio', QuestionName: 'Tos'),
    new Questions(SectionId: 2, QuestionType: 'Radio', QuestionName: 'Dolor de Cuerpo'),
    new Questions(SectionId: 2, QuestionType: 'Radio', QuestionName: 'Diarrea'),
    new Questions(SectionId: 2, QuestionType: 'Radio', QuestionName: 'Rinorrea (Secreciones nasales)'),
    new Questions(SectionId: 2, QuestionType: 'Radio', QuestionName: 'Dolor de Garganta'),
    new Questions(SectionId: 2, QuestionType: 'Radio', QuestionName: 'Fiebre (Mayor a 28° C)'),
    new Questions(SectionId: 2, QuestionType: 'Radio', QuestionName: 'Escalofrios'),
    new Questions(SectionId: 2, QuestionType: 'Radio', QuestionName: 'Malestar General'),
    new Questions(SectionId: 2, QuestionType: 'Radio', QuestionName: 'Ninguno de los anteriores'),
    new Questions(SectionId: 3, QuestionType: 'Select', QuestionName: 'Con cuantas personas vive en casa:',answers: ['Solo', '1', '2', '3', '4', '5', '+5']),
    new Questions(SectionId: 3, QuestionType: 'Radio', QuestionName: '¿Alguien que convive con usted a presentado sintomas?'),
    new Questions(SectionId: 3, QuestionType: 'Radio', QuestionName: '¿Hay personas mayores conviviendo con usted?'),
    new Questions(SectionId: 3, QuestionType: 'Select', QuestionName: 'Cuantas veces a la semana sale sale de casa', answers: ['No salgo', '1', '2', '3', '4', '5', '+5']),
    new Questions(SectionId: 3, QuestionType: 'Radio', QuestionName: '¿Ha recibido visitas?'),
    new Questions(SectionId: 3, QuestionType: 'Radio', QuestionName: '¿Dentro de su localidad alguien ha dado positivo en COVID-19?'),
  ];
  List<Widget> myQuestions;
  int _currentIndex = 0;
  int currentSection;
  String patient;
  all({this.currentSection,this.patient});
  final _biggerFont = const TextStyle(
      fontSize: 25.0,
      color: Colors.white,
      fontFamily: 'SeoulNamsamCondensed'
  );
  getQuetions(){
    List<Widget> pendiente = [];
    SectionQuestions.forEach((element) {
      if(element.SectionId==currentSection){
        if(element.QuestionType=='DatePicker'){
          pendiente.add(MyDatePicker(name:element.QuestionName,));
        }else if(element.QuestionType=='Radio'){
          pendiente.add(MySwitch(name: element.QuestionName,));
        }else if(element.QuestionType=='Select'){
          pendiente.add(MyDropDown(name: element.QuestionName,answers: element.answers,));
        }else if(element.QuestionType=='Text'){
        pendiente.add(MyTextBox(isTextArea: false, name: element.QuestionName,));
      }
      }
    });
    return pendiente;
  }
  @override
  void initState() {
    super.initState();
    setState(() {
      currentSection = this.currentSection;
      patient = this.patient;
      myQuestions = getQuetions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Container(
            padding: EdgeInsets.only(top: 40 ),
            child: AppBar(
              automaticallyImplyLeading: false, backgroundColor: Color.fromRGBO(59, 58, 59, 1),
              flexibleSpace: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Center(
                        child: Text(
                          'Datos',
                          style: _biggerFont,
                        ),
                      )
                  )
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Center(
                child: Text(
                  Sections[currentSection].SectionName.toUpperCase(),
                  style: TextStyle(
                      fontFamily: 'SeoulNamsamCondensed',
                      fontSize:18,
                      color: Colors.white
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(7, 139, 69, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/form.png',
                    fit: BoxFit.contain,
                    height: 32,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      patient,
                      style: TextStyle(
                        fontFamily: 'SeoulNamsamCondensed',
                        fontSize:24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Text(
                Sections[currentSection].Desc,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'SeoulNamsamCondensed',
                  fontSize:18,
                ),
              ),
            ),
            Container(
              height: 450,
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: SingleChildScrollView(
                child: Column(
                    children: myQuestions,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, bottom:5),
              child: FlatButton(
                onPressed: () {
                  if(currentSection<Sections.length-1){
                    print(Sections.length);
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => CaseFrom(currentSection: currentSection+1, patient: patient)));
                  }else{
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => Agradecimiento(name: patient)));
                  }
                },
                child: Container(
                  padding: EdgeInsets.only(top: 5, left: 40, right: 40, bottom: 5),
                  child: Text(
                    'Siguiente'.toUpperCase(),
                    style: TextStyle(
                        fontFamily: 'SeoulNamsamCondensed',
                        fontSize: 24,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(7, 139, 69, 1),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),

          ],
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
                title: Text("")
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

class MyDatePicker extends StatefulWidget {
  String name;
  MyDatePicker({this.name});
  @override
  State<StatefulWidget> createState() => _MyDatePicker(name: name);
}

class _MyDatePicker extends State<MyDatePicker> {
  String name;
  _MyDatePicker({this.name});
  DateTime _dateTime;
  DateFormat _formatter = DateFormat('dd/MM/yyyy');
  @override
  void initState() {
    super.initState();
    setState(() {
      name = this.name;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 10,
        top: 10,
        bottom: 10,
      ),
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(196, 196, 196, 1),
        borderRadius: BorderRadius.circular(59),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Text(
                name,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'SeoulNamsamCondensed',
                  fontSize: 20,
                ),
              )
          ),
          Row(
            children: <Widget>[
              Text(_formatter.format(_dateTime == null? DateTime.now(): _dateTime), style: TextStyle(fontFamily: 'SeoulNamsamCondensed', fontSize: 18,),),
            IconButton(
              icon: Icon(Icons.keyboard_arrow_down),
              iconSize: 30,
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: _dateTime == null ? DateTime.now(): _dateTime,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100)).then((date) {
                      setState(() {
                        _dateTime = date;
                      });
                    });
              }
              )
            ],
          )
        ],
      ),
    );
  }

}


class MySwitch extends StatefulWidget {
  String name;
  MySwitch({this.name});
  @override
  State<StatefulWidget> createState() => _MySwitch(name: name);
}

class _MySwitch extends State<MySwitch> {
  String name;
  _MySwitch({this.name});
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 10,
        top: 10,
        bottom: 10,
      ),
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(196, 196, 196, 1),
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Text(
                name,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'SeoulNamsamCondensed',
                  fontSize: 20,
                ),
              )
          ),
          Switch(
          value: isSwitched,
          onChanged: (value) {
          setState(() {
          isSwitched = value;
          });
          },
          activeColor: Color.fromRGBO(7, 139, 69, 1),
          activeTrackColor: Color.fromRGBO(106, 191, 74, 1),
          inactiveThumbColor: Color.fromRGBO(97, 95, 97, 1),
          inactiveTrackColor: Color.fromRGBO(59, 58, 59, 1),
          )
        ],
      ),
    );
  }

}


class MyDropDown extends StatefulWidget {
  String name;
  List<String> answers;
  MyDropDown({this.name, this.answers});

  @override
  State<StatefulWidget> createState() => _MyDropDown(name: name, answers: answers);
}

class _MyDropDown extends State<MyDropDown> {
  String name;
  List<String> answers;
  _MyDropDown({this.name, this.answers});
  String _myValue = null;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 10,
        top: 10,
        bottom: 10,
      ),
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(196, 196, 196, 1),
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Text(
                name,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'SeoulNamsamCondensed',
                  fontSize: 20,
                ),
              )
          ),
          DropdownButton<String>(
          value: _myValue,
          icon: Icon(Icons.keyboard_arrow_down),
          iconSize: 30,
          onChanged: (String newValue) {
          setState(() {
          print(newValue);
          _myValue = newValue;
          print(_myValue);
          });
          },
          items: answers.map((String value) {
          return DropdownMenuItem<String>(
          value: value,
          child: Text(
          value,
          textAlign: TextAlign.center,
          style: TextStyle(
          fontFamily: 'SeoulNamsamCondensed',
          fontSize: 18,
          ),
          ),
          );
          }).toList(),
          )
        ],
      ),
    );
  }

}

class MyTextBox extends StatefulWidget {
  final bool isTextArea;
  String name;

  MyTextBox({this.isTextArea, this.name});

  @override
  State<StatefulWidget> createState() => _MyTextBox(isTextArea: isTextArea, name: name);
}

class _MyTextBox extends State<MyTextBox> {
  String name;
  TextEditingController value;
  final bool isTextArea;
  _MyTextBox({this.isTextArea, this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 10,
        top: 10,
        bottom: 10,
      ),
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(196, 196, 196, 1),
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Text(
                name,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'SeoulNamsamCondensed',
                  fontSize: 20,
                ),
              )
          ),
          Container(
            width: 150,
            child: TextField(
              controller:  value,
              maxLines: isTextArea? 100: 1,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(196, 196, 196, 1),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50)
                  )
              ),
            ),
          )
        ],
      ),
    );
  }

}






