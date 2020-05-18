import 'package:covid_appuvg/Seguimiento.dart';
import 'package:flutter/material.dart';


class MainPage extends StatelessWidget {
  final _biggerFont = const TextStyle(
      fontSize: 28.0,
      color: Colors.white,
      fontFamily: 'SeoulNamsamCondensed'
  );
  final _tileFont = const TextStyle(
      fontSize: 23.0,
      color: Colors.black,
      fontFamily: 'SeoulNamsamCondensed'
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CovidApp UVG',
        theme: ThemeData(
          primaryColor: Color.fromRGBO(7, 139, 69, 1),
        ),
        home: new Scaffold(
          primary: false,
          //backgroundColor: Color.fromRGBO(59, 58, 59, 1),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Color.fromRGBO(59, 58, 59, 1),
                flexibleSpace: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/uvglogo.png',
                      fit: BoxFit.contain,
                      height: 90,
                    ),
                    Expanded(
                        child: Center(
                          child: Text(
                            'SEGUIMIENTO DE CASOS',
                            style: _biggerFont,
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),

          ),

          body: new Column(
            children: <Widget>[
              FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  height: 20,
                  color: Color.fromRGBO(7, 139, 69, 1),
                ),
              ),
              SizedBox(height: 20,),

              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '    No consintio ',
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.black,
                          fontFamily: 'SeoulNamsamCondensed'
                      ),
                    ),
                    Text(
                      '  Nuevo ',
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.black,
                          fontFamily: 'SeoulNamsamCondensed'
                      ),
                    ),
                    Text(
                      '      Segundo ',
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.black,
                          fontFamily: 'SeoulNamsamCondensed'
                      ),
                    ),
                    Text(
                      '  Confirmado',
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.black,
                          fontFamily: 'SeoulNamsamCondensed'
                      ),
                    )

                    ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.yellow,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                    Image.asset(
                      'assets/filter.webp',
                      fit: BoxFit.contain,
                      height: 40,
                    ),
                    Icon(
                        Icons.format_list_bulleted,
                      size: 40,
                    ),
                  ],
                ),
              SizedBox(height: 20,),
              Text(
                    'Presione un caso para ver sus detalles',
                    style: TextStyle(
                        fontSize: 21.0,
                        color: Colors.black,
                        fontFamily: 'SeoulNamsamCondensed'
                    ),
                  ),
              SizedBox(height: 20,),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                  height: 90,
                  color: Color.fromRGBO(231, 231, 231, 1),
                  child: new ListView(
                    itemExtent: 85,
                    children: <Widget>[
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Juan Diego Solorzano', style: _tileFont,),
                            Text('18151', style: _tileFont,)
                          ],
                        ),

                        trailing: CircleAvatar(radius: 18, backgroundColor: Colors.yellow,),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => Seguimiento()));
                        },
                      ),
                      ListTile(

                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Sara Zavala', style: _tileFont,),
                            Text('19383', style: _tileFont,)
                          ],
                        ),

                        trailing: CircleAvatar(radius: 18, backgroundColor: Colors.red,),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => Seguimiento()));
                        },
                      ),

                      ListTile(

                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Ricardo Valenzuela', style: _tileFont,),
                            Text('18374', style: _tileFont,)
                          ],
                        ),

                        trailing: CircleAvatar(radius: 18, backgroundColor: Colors.green,),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => Seguimiento()));
                        },
                      ),ListTile(

                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Andre Rodriguez', style: _tileFont,),
                            Text('18364', style: _tileFont,)
                          ],
                        ),

                        trailing: CircleAvatar(radius: 18, backgroundColor: Colors.lightBlue,),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => Seguimiento()));
                        },
                      ),ListTile(

                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Usain Tornillo', style: _tileFont,),
                            Text('12001', style: _tileFont,)
                          ],
                        ),

                        trailing: CircleAvatar(radius: 18, backgroundColor: Colors.yellow,),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => Seguimiento()));
                        },
                      ),ListTile(

                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Juanes Bond', style: _tileFont,),
                            Text('17007', style: _tileFont,)
                          ],
                        ),

                        trailing: CircleAvatar(radius: 18, backgroundColor: Colors.red,),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => Seguimiento()));
                        },
                      ),ListTile(

                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Juan Cena', style: _tileFont,),
                            Text('14000', style: _tileFont,)
                          ],
                        ),

                        trailing: CircleAvatar(radius: 18, backgroundColor: Colors.lightBlue,),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => Seguimiento()));
                        },
                      ),
                    ],
                  ),

                ),
              ),


              FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  height: 20,
                  color: Color.fromRGBO(7, 139, 69, 1),
                ),
              ),
            ]
            ),
        ),

    );
  }


}
