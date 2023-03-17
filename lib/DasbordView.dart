import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jastippro/View/Dasboard.dart';

import 'View/Login.dart';
import 'View/Register.dart';

void main(){
  runApp(DasbordView());
}

class DasbordView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Dasboard_();
  }

}

class Dasboard_ extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DasboardView();
  }

}

class DasboardView extends State<Dasboard_>{


  List view = <Widget>[
    DasboardApi(),
    Register(),
    Login()
  ];
  int no =0;

  @override
  void initState(){
    super.initState();
    setState(() {

    });
  }

  void setSelect(int i){
    setState(() {
      no = i;

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profil',
              ),
            ],
            currentIndex: no,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.amber,
            onTap: setSelect
          ),
        body: view[no]
      ),
    );
  }

}