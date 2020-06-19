//import 'dart:io';

// import 'dart:convert';
// import 'package:calidig/common/bottom_navigation_bar.dart';
// import 'package:calidig/home_page.dart';
// import 'package:calidig/screens/register.dart';
// import 'package:calidig/home_page.dart';
import 'package:calidig/screens/home_page.dart';
import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class SearchAppBar extends StatefulWidget {
  SearchAppBar({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SearchAppBarState createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  TextStyle style = TextStyle(fontFamily: 'Open Sans', fontSize: 15.0);
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  void initState() {
    
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
             appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: new AppBar(
          backgroundColor: Colors.white,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 20.0,
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Calidig",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    Text(
                      "Shop",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ],
                ),
              ),
//             SizedBox(height: 20.0,),
              // Container(
              //   child: SizedBox(
              //     width: MediaQuery.of(context).size.width / 2,
              //     child: TextFormField(
              //       decoration: const InputDecoration(
              //         enabledBorder: const OutlineInputBorder(
              //           borderSide:
              //               const BorderSide(color: Colors.grey, width: 0.0),
              //         ),
              //         hintText: "I'm shopping for...",
              //         suffixIcon: Icon(
              //           Icons.search,
              //           color: Colors.yellowAccent,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
          actions: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.shopping_basket, color: Colors.black),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.shopping_cart, color: Colors.black),
                        onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SearchAppBar()));
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.person, color: Colors.black),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Login()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
           centerTitle: true,
          leading: new IconButton(
              // color:Color(0xff324492),
              color: Colors.black,
              iconSize: 50,
              icon: new Icon(Icons.keyboard_arrow_left),
              onPressed: (){
                Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
              }),
        ),
      ),
      

         // appBar: //PreferredSize(
         //preferredSize: Size.fromHeight(70.0),
        // child: new
        //  appBar: AppBar(
        //    actions: <Widget>[
        //      Container(
        //        child: Row(
        //          children: <Widget>[
        //            new Column(
        //              children: <Widget>[
        //                new TextFormField(
        //                  decoration: const InputDecoration(helperText: "I'm shopping for..."),
        //   style: Theme.of(context).textTheme.body1,
        //                )
                       
        //              ],

        //            ),
        //            new Column(
        //              children: <Widget>[
        //                        new IconButton(
        //       // color:Color(0xff324492),
        //       color: Colors.black,
        //       iconSize: 20,
        //       icon: new Icon(Icons.search),
        //       onPressed: (){

        //       }),

        //              ],
             

        //            ),
        //          ],
        //        ),

        //      ),
        //    ],
        //  ),
     // ),
       

       // bottomNavigationBar: BottomNavBar(),

        // backgroundColor: Colors.transparent,
        // key: _scaffoldKey,
        body: Stack(
        //   children: <Widget>[
        //     new Container(
        //       decoration: BoxDecoration(
        //         color: Colors.grey,
        //       ),

        //       //new Text("SearchAppBar", style: TextStyle(color: Colors.black),),

        //       // ),

        //       child: Center(
        //         child: new SingleChildScrollView(
        //           // child: new Container(
        //           //   color: Colors.white,
        //           //   //height: 490.0,
        //           //   width: 380.0,
        //           //   margin: const EdgeInsets.only(top: 20, bottom: 30),
        //           //   child: Padding(
        //           //     padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
                      
        //           //   ),
        //           // ),
        //         ),
        //       ),
        //     ),
        //   ],
        ),
      ),
    );
  }

  void showInDialog(BuildContext context, String title, String value) async {
    showDialog(
      context: context,
      child: new AlertDialog(
        title: Text(title),
        content: Text(value),
        actions: [
          new FlatButton(
            child: const Text("Ok"),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
