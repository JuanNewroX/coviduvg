import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class CaseFrom extends StatelessWidget{
  final String sectionTitle;
  final String patient;
  final String description;

  CaseFrom({Key key, this.sectionTitle, this.patient, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    int _currentIndex = 0;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(88),
        child: Center(
          child: Container(
            padding: EdgeInsets.only(top: statusBarHeight ),
            child: AppBar(
              title: Text(
                'Datos',
                style: TextStyle(
                  fontFamily: 'SeoulNamsamCondensed',
                  fontSize: 24,
                ),
              ),
              backgroundColor: Color.fromRGBO(58, 59, 58, 1),
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
                sectionTitle.toUpperCase(),
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
              description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: 'SeoulNamsamCondensed',
                fontSize:18,
              ),
            ),
          ),
          Container(
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
              borderRadius: BorderRadius.circular(14),
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
                      "Fecha de nacimiento",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'SeoulNamsamCondensed',
                        fontSize: 24,
                      ),
                    )
                ),
                MyDatePicker()
              ],
            ),
          ),
          Container(
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
              borderRadius: BorderRadius.circular(14),
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
                      "Tos",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'SeoulNamsamCondensed',
                        fontSize: 24,
                      ),
                    )
                ),
                MySwitch()
              ],
            ),
          ),
          Container(
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
              borderRadius: BorderRadius.circular(14),
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
                      "Sexo",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'SeoulNamsamCondensed',
                        fontSize: 24,
                      ),
                    )
                ),
                MyDropDown()
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, bottom:5),
            child: FlatButton(
              onPressed: null,
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
              borderRadius: BorderRadius.all(Radius.circular(14)),
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
        onTap: null,
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
  @override
  State<StatefulWidget> createState() => _MyDatePicker();
}

class _MyDatePicker extends State<MyDatePicker> {
  DateTime _dateTime;
  DateFormat _formatter = DateFormat('dd/MM/yyyy');
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          _formatter.format(_dateTime == null? DateTime.now(): _dateTime),
          style: TextStyle(
            fontFamily: 'SeoulNamsamCondensed',
            fontSize: 18,
          ),
        ),
        IconButton(
            icon: Icon(Icons.keyboard_arrow_down),
            iconSize: 36,
            onPressed: () {
              showDatePicker(
                  context: context,
                  initialDate: _dateTime == null ? DateTime.now(): _dateTime,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100)
              ).then((date) {
                setState(() {
                  _dateTime = date;
                });
              });
            }
        )
      ],
    );
  }

}


class MySwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MySwitch();
}

class _MySwitch extends State<MySwitch> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
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
    );
  }

}


class MyDropDown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDropDown();
}

class _MyDropDown extends State<MyDropDown> {
  String _myValue = 'Elija';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _myValue,
      icon: Icon(Icons.keyboard_arrow_down),
      iconSize: 24,
      onChanged: (String newValue) {
        setState(() {
          print(newValue);
          _myValue = newValue;
          print(_myValue);
        });
      },
      items: <String>['Elija', 'Femenino', 'Masculino'].map((String value) {
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
    );
  }

}

class MyTextBox extends StatefulWidget {
  final bool isTextArea;

  MyTextBox({Key key, this.isTextArea}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyTextBox(isTextArea: this.isTextArea);
}

class _MyTextBox extends State<MyTextBox> {
  TextEditingController value;
  final bool isTextArea;
  _MyTextBox({this.isTextArea});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:  value,
      maxLines: isTextArea? 100: 1,
      decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromRGBO(231, 231, 231, 1),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );
  }

}






