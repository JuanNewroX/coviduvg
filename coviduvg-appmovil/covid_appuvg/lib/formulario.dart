import 'package:flutter/material.dart';

void main() => runApp(Formulario());

class Formulario extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Consentimiento '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(



          children: <Widget>[
            new Container(
        margin: EdgeInsets.only(top: 100.0),
              padding: EdgeInsets.all(30),
              child: Text(

                "El Código de Ética Médica contempla la importancia de advertir sobre los riesgos de to se ha hecho en diferentes forma"+
                    "(psicóloga, enfermera o trabajadora social) Luego aparecieron los formatos preimpresos; inicialmente estos formatos eran para consentimientos generales firmados por el paciente al ingreso a"+
                    "una institución, en los cuales no se consignaban los"+
                    "riesgos específicos de los procedimientos", textAlign: TextAlign.justify, style: TextStyle(fontSize: 20),
              ),



)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: Text('De acuerdo con los terminos'),
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
