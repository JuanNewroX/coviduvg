import 'dart:ffi';

import 'package:covid_appuvg/models/api_response.dart';
import 'package:flutter/material.dart';
import 'package:covid_appuvg/service/login_service.dart';

import 'main_page.dart';
import 'models/users.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _biggerFont = const TextStyle(
    fontSize: 28.0,
    color: Colors.white,
    fontFamily: 'SeoulNamsamCondensed'
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CovidApp UVG',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(7, 139, 69, 1),
        fontFamily: 'SeoulNamsamCondensed'
      ),
      home: Scaffold(
        primary: false,
        backgroundColor: Color.fromRGBO(59, 58, 59, 1),
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
                        'INICIAR SESIÓN',
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
            FractionallySizedBox(
              widthFactor: 1,
              child: Container(
                height: 20,
                color: Color.fromRGBO(7, 139, 69, 1),
              ),
            ),
            Login(),
            FractionallySizedBox(
              widthFactor: 1,
              child: Container(
                height: 40,
                color: Color.fromRGBO(59, 58, 59, 1),
              ),
        )
        ],
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final service = new LoginService();
  APIResponse<List<User>> _apiResposnse;
  bool _isloading = false;

  @override
  void initState(){
    _fetchUsers();
    super.initState();
  }
  _fetchUsers() async{
    setState(() {
      _isloading = true;
    });

    _apiResposnse = await service.getUserList();

    setState(() {
      _isloading = false;
    });
  }
  final _biggerFont = const TextStyle(
    fontSize: 30.0,
    color: Color.fromRGBO(59, 58, 59, 1),
    fontFamily: 'SeoulNamsamCondensed'
  );

  final _smallerFont = const TextStyle(
    fontSize: 15.0,
    color: Colors.white,
    fontFamily: 'SeoulNamsamCondensed'
  );
  final _textboxFont = const TextStyle(
    fontSize: 20.0,
    color: Colors.black,
    fontFamily: 'SeoulNamsamCondensed'
  );
  
  final mController = TextEditingController();
  final mController2 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    mController.dispose();
    mController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Container(
          color: Colors.white,
          child: Builder(
            builder: (_){
              if(_isloading){
                return CircularProgressIndicator();
              }
              if(_apiResposnse.error){
                print('ERROR');
                return Center(child: Text(_apiResposnse.errorMessage));
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  campo('Usuario', mController, false),
                  campo('Contraseña', mController2, true),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 20
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                      ),
                      child: Theme(
                        data: Theme.of(context).copyWith(splashColor: Colors.transparent),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,
                          ),
                          child: FractionallySizedBox(
                            widthFactor: 0.75,
                            child: FlatButton(
                              onPressed: (){
                                bool logged = false;
                                String name = mController.text;
                                String pass = mController2.text;
                                for (User user in _apiResposnse.data){
                                  if(user.pass == pass && user.name == name){
                                    logged  = true;
                                    Navigator.of(context).push(MaterialPageRoute(
                                      settings: RouteSettings(name: "/Main"),
                                      builder: (context) => MainPage(),
                                    ),);
                                  }
                                }
                                if(!logged){
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return AlertDialog(
                                          title: Text("Login Failed"),
                                          content: Text("Username or password are incorrect"),
                                          actions:[
                                            FlatButton(
                                              child: Text("Close"),
                                              onPressed: (){
                                                Navigator.of(context).pop();
                                              },
                                            )
                                          ],
                                        );
                                      }
                                  );
                                }
                              },
                              color: Colors.green,
                              child: Text(
                                'INICIAR SESIÓN',
                                style: _smallerFont,
                              ),
                            ),
                          ),
                          height: 40,
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          )
        ),
      ),
    );
  }

  Widget campo(String labelMessage, TextEditingController myController, bool isPass) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Center(
        child: Container(
          padding: EdgeInsets.only(
            top: 20,
            bottom: 20
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                labelMessage,
                style: _biggerFont,
              ),
              Theme(
                data: Theme.of(context).copyWith(splashColor: Colors.transparent), 
                child: FractionallySizedBox(
                  widthFactor: 0.75,
                  child: Container(
                    height: 30,
                    child: TextField(
                      obscureText: isPass ? true : false,
                      controller: myController,
                      autofocus: false,
                      style: _textboxFont,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(231, 231, 231, 1),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }

}