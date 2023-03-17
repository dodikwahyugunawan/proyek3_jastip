import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jastippro/View/Login.dart';
import 'package:jastippro/main.dart';

class Register extends StatelessWidget{
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
    return Align(
        alignment: Alignment.bottomCenter,
        child: Card(
          margin: EdgeInsets.zero,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
          ),
          child: Container(
            color: Colors.white,
            height: 570,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50,),
                    Text("SIGN-UP", style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),),
                    SizedBox(
                      height: 28.0,
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          filled: true,
                          labelText: 'Ussername',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 28.0,
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          filled: true,
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 28.0,
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          filled: true,
                          labelText: 'Date',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 28.0,
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          filled: true,
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Material(
                        color: Colors.amber,
                        child: InkWell(
                          splashColor: Colors.white12,
                          onTap: (){

                          },
                          child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: Container(
                              child: Align(
                                child: Text("SignUp", style: TextStyle(color: Colors.white,fontSize: 20),),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40,)

                  ],
                ),
              )
            ),
          ),
        )
    );
  }

}