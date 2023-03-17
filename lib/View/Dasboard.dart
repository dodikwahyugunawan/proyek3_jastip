import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DasboardApi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DasbordApi_();
  }

}

class DasbordApi_ extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DasboardView();
  }

}

class DasboardView extends State<DasbordApi_>{

  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          actions: [
            IconButton(
              splashColor: Colors.white12,
              onPressed: (){

            },
              icon: Icon(Icons.shopping_bag),
            ),
            IconButton(
              splashColor: Colors.white12,
              onPressed: (){

              },
              icon: Icon(Icons.settings),
            )
          ],
          toolbarHeight: 100,
          backgroundColor: Colors.amber,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              children: <Widget>[
                AnimSearchBar(
                    textController: editingController,
                    onSuffixTap: (){

                    }, onSubmitted: (String a) {
                  print(a);
                }, width:230

                ),
              ],
            )
          )
        ),
        body: Stack(
          children: [
            Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.amber,
                ),
                Expanded(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                    ),
                    margin: EdgeInsets.zero,
                    child: Container(
                      width: double.infinity,
                      height: 500,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                margin: EdgeInsets.zero,
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 10,),
                      Expanded(
                        child: SizedBox.fromSize(
                          size: Size(56, 68), // button width and height
                          child: ClipOval(
                            child: Material(
                              color: Colors.white, // button color
                              child: InkWell(
                                splashColor: Colors.amber[10], // splash color
                                onTap: () {}, // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.qr_code_scanner, color: Colors.black26,), // icon
                                    Text("Qris"), // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 10,),

                      Container(
                        width: 1,
                        height: 50,
                        color: Colors.black26,
                      ),

                      SizedBox(width: 10,)

                      ,Expanded(
                        child: SizedBox.fromSize(
                          size: Size(56, 68), // button width and height
                          child: ClipOval(
                            child: Material(
                              color: Colors.white, // button color
                              child: InkWell(
                                splashColor: Colors.amber[10], // splash color
                                onTap: () {}, // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.account_balance_wallet, color: Colors.amber,), // icon
                                    Text("Dompet"), // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 10,),

                      Container(
                        width: 1,
                        height: 50,
                        color: Colors.black26,
                      ),

                      SizedBox(width: 10,)

                      ,
                      Expanded(
                        child: SizedBox.fromSize(
                          size:Size(56, 68), // button width and height
                          child: ClipOval(
                            child: Material(
                              color: Colors.white, // button color
                              child: InkWell(
                                splashColor: Colors.amber[10], // splash color
                                onTap: () {}, // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.account_balance, color: Colors.amber,), // icon
                                    Text("Bank"), // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 10,),

                      Container(
                        width: 1,
                        height: 50,
                        color: Colors.black26,
                      ),

                      SizedBox(width: 10,)

                      ,Expanded(
                        child: SizedBox.fromSize(
                          size: Size(56, 68), // button width and height
                          child: ClipOval(
                            child: Material(
                              color: Colors.white, // button color
                              child: InkWell(
                                splashColor: Colors.amber[10], // splash color
                                onTap: () {}, // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.wallet, color: Colors.amber,), // icon
                                    Text("Transfer"), // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                ),
              )
            )
          ],
        )
      ),
    );
  }

}