import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jastippro/DasbordView.dart';
import 'package:jastippro/View/Dasboard.dart';
import 'package:jastippro/View/Register.dart';
import 'View/Login.dart';

void main(){
  runApp(Home());
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeFul();
  }

}

class HomeFul extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeView();
  }

}

class HomeView extends State<HomeFul>{
  TextEditingController editingController = TextEditingController();
  @override
  void initState(){
    super.initState();
    setState(() {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        statusBarColor: Colors.amber,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.amber,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          elevation: 0,
          title: Text("Sign-In"),
        ),
        body: Login()
      ),
    );
  }

}