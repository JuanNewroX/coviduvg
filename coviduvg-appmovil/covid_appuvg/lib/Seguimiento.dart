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
        //primaryColor: Colors.red
      ),
      home: MyHomePage(name: name, number: number,),

    );
  }
}
final _tileFont = const TextStyle(
    fontSize: 24.0,
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
      "Dificultad para respirar",

    ];
    List<String> Comorbilidades = [
      "Asma",
      "VIH"
    ];
    final _biggerFont = const TextStyle(
        fontSize: 25.0,
        color: Colors.white,
        fontFamily: 'SeoulNamsamCondensed'
    );
   // var controller;
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
                      'DETALLES DEL CASO',
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
                    headerBackgroundColor: Color.fromRGBO(196, 196, 196, 1),
                    iconColor: Colors.black,
                    title:Container(child: Text("Informacion Personal",
                        style: new TextStyle(color: Colors.black,fontWeight: FontWeight.bold))),
                    children: <Widget>[

                      ItemContainer(Personal)
                    ]
                ),

                custom.ExpansionTile(
                    headerBackgroundColor: Color.fromRGBO(231, 231, 231, 1),
                    iconColor: Colors.black,
                    title:Container(child: Text("Sintomas",
                        style: new TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
                    children: <Widget>[
                      ItemContainer(Sintomas)
                    ]
                ),
                custom.ExpansionTile(
                    headerBackgroundColor: Color.fromRGBO(196, 196, 196,  1),
                    iconColor: Colors.black,
                    title:Container(child: Text("Comorbilidades",
                        style: new TextStyle(color: Colors.black,fontWeight: FontWeight.bold))),
                    children: <Widget>[
                      ItemContainer(Comorbilidades)
                    ]
                ),
              ],
            ),
            new Container(
              height: 50,
              width: 235,
              margin: EdgeInsets.only(top: 60),
              child: RaisedButton(
                color: Color.fromRGBO(7, 139, 69, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => Consentimiento()));
                },
                child: const Text('Dar seguimiento', style: TextStyle(fontSize: 16,color: Colors.white) ),
              ),
            ),
            new Container(

              height: 50,
              width: 200,
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                color: Color.fromRGBO(59, 58, 59, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                onPressed: () {},
                child: const Text('No es un caso', style: TextStyle(fontSize: 16,color: Colors.white)),
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
