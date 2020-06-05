import 'package:covid_appuvg/main_page.dart';
import 'package:flutter/material.dart';

class Agradecimiento extends StatelessWidget{
  int _currentIndex = 0;
  String name;
  Agradecimiento({this.name});
  final _biggerFont = const TextStyle(
      fontSize: 25.0,
      color: Colors.white,
      fontFamily: 'SeoulNamsamCondensed'
  );
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
      body: new Column(
        children: <Widget>[
          FractionallySizedBox(
          widthFactor: 1,
          child: Container(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            height: 30,
            child: Center(
              child: Text(
                'Gracias por su colaboracion!'.toUpperCase(),
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
        ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              name,
              style: TextStyle(
                fontFamily: 'SeoulNamsamCondensed',
                fontSize:36,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              'El cuestionario a concluido',
              style: TextStyle(
                fontFamily: 'SeoulNamsamCondensed',
                fontSize:30,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 50),
            child: Icon(Icons.outlined_flag, size: 300, color: Colors.black)
          ),
          Container(
            margin: EdgeInsets.only(top: 50, bottom:50),
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => MainPage()));
              },
              child: Container(
                padding: EdgeInsets.only(top: 5, left: 40, right: 40, bottom: 5),
                child: Text(
                  'Finalizar'.toUpperCase(),
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
          ]
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