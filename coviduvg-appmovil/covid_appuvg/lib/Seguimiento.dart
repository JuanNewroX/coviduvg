import 'package:covid_appuvg/Consentimiento.dart';
import 'package:flutter/cupertino.dart';
import 'custom_expansion_tile.dart' as custom;
import 'package:flutter/material.dart';

void main() => runApp(Seguimiento());

class Seguimiento extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(7, 139, 69, 1),

      ),
      home: MyHomePage(title: 'Detalles del caso'),
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
  //static const color_gris = const Color(#E7E7E7),

  @override
  Widget build(BuildContext context) {

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
                  child: Text('Sara Nohemi Zavala Gutierrez\n'+
                      "+502 49183624\n"+
                      "Identificador:"+ "12456",textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
                ),
              ],),

            new Column(
              children: <Widget>[


                custom.ExpansionTile(
                    headerBackgroundColor: Color.fromRGBO(231, 231, 231, 1),
                    iconColor: Colors.black,
                    title:Container(child: Text("Informacion Personal",
                        style: new TextStyle(color: Colors.black,fontWeight: FontWeight.bold))),
                    children: <Widget>[
                      Container(
                        height: 400,
                        //color: Colors.black12,
                      )
                    ]
                ),

                custom.ExpansionTile(
                    headerBackgroundColor: Color.fromRGBO(7, 139, 69, 1),
                    iconColor: Colors.black,
                    title:Container(child: Text("Sintomas",
                        style: new TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
                    children: <Widget>[
                      Container(
                        height: 400,
                        color: Colors.black12,
                      )
                    ]
                ),
                custom.ExpansionTile(
                    headerBackgroundColor: Color.fromRGBO(7, 139, 69, 1),
                    iconColor: Colors.black,
                    title:Container(child: Text("Comorbilidades",
                        style: new TextStyle(color: Colors.black,fontWeight: FontWeight.bold))),
                    children: <Widget>[
                      Container(
                        height: 400,
                        color: Colors.black12,
                      )
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
}
