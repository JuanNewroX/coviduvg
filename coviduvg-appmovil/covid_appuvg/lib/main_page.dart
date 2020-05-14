import 'package:covid_appuvg/consentimiento.dart';
import 'package:flutter/material.dart';
import 'formulario.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Casos con Minimo 3 Sintomas')),
      body: getListView(context),
    );
  }

  Widget getListView(BuildContext context){
    var listView = ListView(
      itemExtent: 85,
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/profile1.png'),
          ),
          title: Text('Diego'),
          subtitle: Text('Sintomas: 3 \nEstado: Seguimiento'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => MyApp()));
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/profile2.jpg'),
          ),
          title: Text('Sara'),
          subtitle: Text('Sintomas: 4 \nEstado: Pendiente'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => MyApp()));
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/profile3.jpg'),
          ),
          title: Text('Ricardo'),
          subtitle: Text('Sintomas: 5 \nEstado: Seguimiento'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => MyApp()));
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/profileDefault.png'),
          ),
          title: Text('Andre'),
          subtitle: Text('Sintomas: 3 \nEstado: Tratado'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => MyApp()));
          },
        ),

        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/profile1.png'),
          ),
          title: Text('Diego'),
          subtitle: Text('Sintomas: 3 \nEstado: Seguimiento'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => MyApp()));
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/profile2.jpg'),
          ),
          title: Text('Sara'),
          subtitle: Text('Sintomas: 4 \nEstado: Pendiente'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => MyApp()));
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/profile3.jpg'),
          ),
          title: Text('Ricardo'),
          subtitle: Text('Sintomas: 5 \nEstado: Seguimiento'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => MyApp()));
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/profileDefault.png'),
          ),
          title: Text('Andre'),
          subtitle: Text('Sintomas: 3 \nEstado: Tratado'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => MyApp()));
          },
        )

      ]
    );
    return listView;
  }
}
