import 'package:covid_appuvg/Consentimiento.dart';
import 'package:flutter/cupertino.dart';
import 'custom_expansion_tile.dart' as custom;
import 'package:flutter/material.dart';

void main() => runApp(Seguimiento());

class Seguimiento extends StatelessWidget {
  String name;
  String number;
  Seguimiento({this.name, this.number});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(7, 139, 69, 1),

      ),
      home: MyHomePage(title: 'Detalles del caso', name: name, number: number,),
    );
  }
}
final _tileFont = const TextStyle(
    fontSize: 20.0,
    color: Colors.black,
    fontFamily: 'SeoulNamsamCondensed'
);

class MyHomePage extends StatefulWidget {
  String name;
  String number;
  MyHomePage({Key key, this.title, this.name, this.number}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState(name: name, number: number);
}


class _MyHomePageState extends State<MyHomePage> {
  String name;
  String number;
  _MyHomePageState({this.name, this.number});

  //static const color_gris = const Color(#E7E7E7),

  @override
  Widget build(BuildContext context) {
    List<String> Personal = [
      "Ubicacion: Las Lumbres, Oficina 502",
      "Carrera: Ingenieria Bioinformatica"
    ];
    List<String> Sintomas = [
      "Diarrea",
      "Tos",
      "Dificultad para respirar"
    ];
    List<String> Comorbilidades = [
      "Asma",
      "VIH"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/uvglogo.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,top: 50),
                  //color: Colors.blue,
                  height: 125,
                  width: 235,
                  child: Text(name+"\n"+number+"\n"
                      +
                      "Identificador:"+ "12456",textAlign: TextAlign.center, style: _tileFont),
                ),
              ],),

            new Column(
              children: <Widget>[


                custom.ExpansionTile(
                    headerBackgroundColor: Color.fromRGBO(7, 139, 69, 1),
                    iconColor: Colors.white,
                    title:Container(child: Text("Informacion Personal",
                        style: new TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),
                    children: <Widget>[
                      ItemContainer(Personal)
                    ]
                ),

                custom.ExpansionTile(
                    headerBackgroundColor: Color.fromRGBO(7, 139, 69, 1),
                    iconColor: Colors.white,
                    title:Container(child: Text("Sintomas",
                        style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                    children: <Widget>[
                      ItemContainer(Sintomas)
                    ]
                ),
                custom.ExpansionTile(
                    headerBackgroundColor: Color.fromRGBO(7, 139, 69, 1),
                    iconColor: Colors.white,
                    title:Container(child: Text("Comorbilidades",
                        style: new TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),
                    children: <Widget>[
                      ItemContainer(Comorbilidades)
                    ]
                ),
              ],
            ),
            new Container(
              margin: EdgeInsets.only(top: 60),
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => Consentimiento()));
                },
                child: const Text('Dar seguimiento', style: TextStyle(fontSize: 20)),
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                onPressed: () {},
                child: const Text('No es un caso', style: TextStyle(fontSize: 20)),
              ),

            )


          ],


        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  Widget ItemContainer(List items){
    return Container(
        height: 175,
        color: Colors.black12,
        child: ListView.separated(
          separatorBuilder: (_, __) => Divider(height: 1, color: Colors.green),
          itemBuilder: (_, index){
            return ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Text(items[index], style: _tileFont),
                    )
                  ],
                )
            );
          },
          itemCount: items.length,
        )
    );
  }
}
