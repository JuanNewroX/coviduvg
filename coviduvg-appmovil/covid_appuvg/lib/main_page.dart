import 'package:covid_appuvg/Seguimiento.dart';
import 'package:covid_appuvg/models/cases_for_listing.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {

  @override
  casefilter createState() => casefilter();
}
class casefilter extends State<MainPage>{
  bool isSearching;
  bool isBlue;
  bool isGreen;
  bool isYellow;
  bool isRed;
  List<CasesForListing> cases = [
    new CasesForListing(
        name: 'Ricardo Valenzuela',
        number: '56952549',
        status: 'Nuevo'
    ),
    new CasesForListing(
        name: 'Sara Zavala',
        number: '43423412',
        status: 'Confirmado'
    ),
    new CasesForListing(
        name: 'Andre Rodriguez',
        number: '49380482',
        status: 'NoCons'
    ),
    new CasesForListing(
        name: 'Diego Solorzano',
        number: '38049273',
        status: 'Segundo'
    ),
    new CasesForListing(
        name: 'Amado Garcia',
        number: '42568334',
        status: 'NoCons'
    ),
    new CasesForListing(
        name: 'Majo Castro',
        number: '12940324',
        status: 'Confirmado'
    ),
    new CasesForListing(
        name: 'Juan Romero',
        number: '38049273',
        status: 'Segundo'
    ),
    new CasesForListing(
        name: 'Martin young',
        number: '12568345',
        status: 'Nuevo'
    ),
  ];
  List<CasesForListing> Fcases = List();
  String filter;

  @override
  void initState(){
    super.initState();
    setState(() {
      Fcases = cases;
      isSearching = false;
      isGreen = false;
      isYellow = false;
      isRed = false;
      isBlue = false;
    });
  }

  final _textboxFont = const TextStyle(
      fontSize: 20.0,
      color: Colors.black,
      fontFamily: 'SeoulNamsamCondensed'
  );

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
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '  No consintio ',
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
                    '     Segundo ',
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if(!isBlue){
                          Fcases = cases
                              .where((element) => (element.status
                              .contains("NoCons"))).toList();
                        }else{
                          Fcases = cases;
                        }
                      });
                      isBlue=!isBlue ? true : false;
                      isRed=false;
                      isYellow=false;
                      isGreen=false;
                    },
                    child: CircleAvatar(
                      radius: 21,
                      backgroundColor: isBlue ? Colors.black : Colors.lightBlue,
                      child: CircleAvatar(
                        backgroundColor: Colors.lightBlue,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if(!isGreen){
                          Fcases = cases
                              .where((element) => (element.status
                              .contains("Nuevo"))).toList();
                        }else{
                          Fcases = cases;
                        }
                      });
                      isGreen=!isGreen ? true : false;
                      isRed=false;
                      isYellow=false;
                      isBlue=false;
                    },
                    child: CircleAvatar(
                      radius: 21,
                      backgroundColor: isGreen ? Colors.black : Colors.green,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if(!isYellow){
                          Fcases = cases
                              .where((element) => (element.status
                              .contains("Segundo"))).toList();
                        }else{
                          Fcases = cases;
                        }
                      });
                      isYellow=!isYellow ? true : false;
                      isRed=false;
                      isBlue=false;
                      isGreen=false;
                    },
                    child: CircleAvatar(
                      radius: 21,
                      backgroundColor: isYellow ? Colors.black : Colors.yellow,
                      child: CircleAvatar(
                        backgroundColor: Colors.yellow,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if(!isRed){
                          Fcases = cases
                              .where((element) => (element.status
                              .contains("Confirmado"))).toList();
                        }else{
                          Fcases = cases;
                        }
                      });
                      isRed=!isRed ? true : false;
                      isBlue=false;
                      isYellow=false;
                      isGreen=false;
                    },
                    child: CircleAvatar(
                      radius: 21,
                      backgroundColor: isRed ? Colors.black : Colors.red,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSearching=!isSearching ? true : false;
                      });
                      print(isSearching);
                    },
                    child: Image.asset(
                      'assets/filter.webp',
                      fit: BoxFit.contain,
                      height: 40,
                    ),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      value: null,
                      icon: Icon(Icons.format_list_bulleted, size: 40, color: Colors.black),
                      onChanged: (String){
                        if(String == 'AZ'){
                          setState(() {
                            Fcases.sort((a, b) => a.name.compareTo(b.name));
                          });
                        }else{
                          setState(() {
                            Fcases.sort((a, b) => b.name.compareTo(a.name));
                          });
                        }
                      },
                      items: <String>['AZ', 'ZA']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value,
                            child: Center(
                              child: Text(value),
                            )
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text(
                'Presione un caso para ver sus detalles',
                style: TextStyle(
                    fontSize: 21.0,
                    color: Colors.black,
                    fontFamily: 'SeoulNamsamCondensed'
                ),
              ),
              SizedBox(height: 10,),
              isSearching ? Container(
                height: 40,
                width: 400,
                child: TextField(
                  style: _textboxFont,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(),
                    hintText: 'Search Case',
                  ),
                  onChanged: (string){
                    setState(() {
                      Fcases = cases
                          .where((element) => (element.name
                          .toLowerCase()
                          .contains(string.toLowerCase()))).toList();
                    });
                  },
                ),
              ) : SizedBox(height: 0),
              SizedBox(height: 5),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                  height: 90,
                  color: Color.fromRGBO(231, 231, 231, 1),
                  child: new ListView.separated(
                    separatorBuilder: (_, __) => Divider(height: 1, color: Colors.green),
                    itemBuilder: (_, index){
                      return ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Flexible(
                              flex: 2,
                              child: Text(Fcases[index].name, style: _tileFont,),
                            ),
                            Flexible(
                              child: Text(Fcases[index].number, style: _tileFont,),
                            )
                          ],
                        ),
                        trailing: CircleAvatar(radius: 18, backgroundColor: (Fcases[index].status == 'NoCons') ? Colors.lightBlue : (Fcases[index].status=='Nuevo') ? Colors.green : (Fcases[index].status=='Segundo') ? Colors.yellow : (Fcases[index].status=='Confirmado') ? Colors.red : Colors.black),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => Seguimiento(name: Fcases[index].name, number: Fcases[index].number)));
                        },
                      );
                    },
                    itemCount: Fcases.length,
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
