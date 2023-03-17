import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jastippro/DasbordView.dart';
import 'package:jastippro/RegisterView.dart';
import 'package:jastippro/View/Register.dart';

class Login extends StatelessWidget{
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
  bool isHiden = true;
  int iseye = 1;

  List redEye = [
    Icon(Icons.remove_red_eye),
    Icon(Icons.remove_red_eye_outlined)
  ];

  void setPassword(){
    setState(() {
      if(isHiden){
        isHiden = false;
        iseye = 0;
      }else{
        isHiden = true;
        iseye = 1;
      }
    });

  }

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("SIGN-IN", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 28.0,),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Email',
                          fillColor: Colors.white,
                          filled: true
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
                      obscureText: isHiden,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        suffix: IconButton(
                          icon: redEye[iseye],
                          onPressed: (){
                            setPassword();
                          },
                        ),
                        filled: true,
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(height: 28.0,),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Forget Password ?"),
                        SizedBox(width: 10,),
                        Text("Click here to Reset", style: TextStyle(
                            color: Colors.amber
                        ),)
                      ],
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> DasbordView()));
                        },
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: Container(
                            child: Align(
                              child: Text("SignIn", style: TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have account?"),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterView()));
                          },
                          child: Text("Sign-Up Now", style: TextStyle(
                              color: Colors.amber
                          ),),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 150,
                    height: 1,
                    color: Colors.black12,
                  ),

                ],
              ),
            ),
          ),
        )
    );
  }

}