import 'package:covid_appuvg/formulario.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Listado de Sintomas'),
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
  int _counter = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          children: <Widget>[
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(

                    'Sintoma',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Gravedad',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Fecha',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Dolor de garganta')),
                    DataCell(Text('1')),
                    DataCell(Text('01-02-2020')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Secrecion nasal')),
                    DataCell(Text('1')),
                    DataCell(Text('01-02-2020')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Fiebre')),
                    DataCell(Text('3')),
                    DataCell(Text('03-02-2020')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Fatiga')),
                    DataCell(Text('1')),
                    DataCell(Text('03-02-2020')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Tos seca')),
                    DataCell(Text('3')),
                    DataCell(Text('04-02-2020')),
                  ],
                ),DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Secresion nasal')),
                    DataCell(Text('1')),
                    DataCell(Text('04-02-2020')),
                  ],
                ),


                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Espasmos')),
                    DataCell(Text('2')),
                    DataCell(Text('03-02-2020')),
                  ],
                ),

                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Complicaciones para repirar')),
                    DataCell(Text('3')),
                    DataCell(Text('04-02-2020')
                    ),
                  ],

                )

              ],

            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Formulario()),
          );
          tooltip: 'Increment';
        Icon(Icons.add);

        }
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
