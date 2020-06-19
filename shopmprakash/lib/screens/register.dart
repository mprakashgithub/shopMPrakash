import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:calidig/screens/home_page.dart';
// import 'package:calidig/home_page.dart';
import 'package:calidig/screens/login.dart';
import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);
  // final String title;

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextStyle style = TextStyle(fontFamily: 'Open Sans', fontSize: 15.0);
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  String email, password;
  List<String> tacticList = List();
  String tactic;

  bool isVisible;
  Icon visibleIcon;

  get _value => null;
  final format = DateFormat("yyyy-MM-dd");
  @override
  void initState() {
    email = "";
    password = "";
    tactic = 'Gender';
    tacticList = ['Gender','Male', 'Female'];

    isVisible = true;
    visibleIcon =
        isVisible == true ? Icon(Icons.visibility) : Icon(Icons.visibility_off);
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
                        "My account",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      // Text(
                      //   "Shop",
                      //   style: TextStyle(
                      //       color: Colors.yellow,
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 20.0),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          iconSize: 35,
                          icon:
                              Icon(Icons.shopping_basket, color: Colors.black),
                          onPressed: () {},
                        ),
                        // IconButton(
                        //   icon: Icon(Icons.shopping_cart, color: Colors.black),
                        //   onPressed: () {},
                        // ),
                        IconButton(
                          iconSize: 35,
                          icon: Icon(Icons.person_outline, color: Colors.black),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ),
        ),
        // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(45.0),
        //   child: AppBar(
        //     backgroundColor: Colors.white,
        //     title: Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Container(
        //           padding: EdgeInsets.only(right: 10),
        //           child: Text(
        //             "My Account",
        //             style: TextStyle(
        //                 color: Colors.black,
        //                 fontWeight: FontWeight.bold,
        //                 fontSize: 26),
        //           ),
        //         ),
        //         IconButton(
        //           icon: Icon(Icons.shopping_cart, color: Colors.black),
        //           onPressed: () {},
        //         ),
        //         IconButton(
        //           icon: Icon(Icons.account_circle, color: Colors.black),
        //           onPressed: () {
        //             Navigator.push(context,
        //                 MaterialPageRoute(builder: (context) => Register()));
        //           },
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

        // bottomNavigationBar: BottomNavBar(),

        // backgroundColor: Colors.transparent,
        // key: _scaffoldKey,
        body: Stack(
          children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),

              //new Text("Login", style: TextStyle(color: Colors.black),),

              // ),

              child: Center(
                child: new SingleChildScrollView(
                  child: new Container(
                    color: Colors.white,
                    //height: 490.0,
                    width: 380.0,
                    margin: const EdgeInsets.only(top: 20, bottom: 30),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  FlatButton(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(fontSize: 25.0),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Login()));
                                    },
                                  ),

                                  FlatButton(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Register",
                                      style: TextStyle(fontSize: 25.0),
                                    ),
                                    onPressed: () {},
                                  )

                                  // Text("Login", style: TextStyle(fontSize: 25.0),),
                                  // Text("Register", style: TextStyle(fontSize: 25.0),)
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 120,
                              child: Container(
                                height: 100.0,
                                width: 200.0,
                                margin:
                                    const EdgeInsets.fromLTRB(20, 30, 120, 10),
                                child: new Text(
                                  "Register An Account",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // margin: const EdgeInsets.all(20.0),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 15.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.person),
                                        labelText: 'Name',
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue)),
                                        border: OutlineInputBorder(),
                                      ),
                                      onChanged: (input) {
                                        setState(() {
                                          email = input;
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 15.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.location_city),
                                        labelText: 'Address',
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue)),
                                        border: OutlineInputBorder(),
                                      ),
                                      onChanged: (input) {
                                        setState(() {
                                          email = input;
                                        });
                                      },
                                    ),
                                  ),

                                  Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 4.0, horizontal: 15.0),
                                    margin: EdgeInsets.fromLTRB(
                                        15.0, 5.0, 15.0, 5.0),
                                    width: MediaQuery.of(context).size.width,
                                    // padding: EdgeInsets.only(left: 3, right: 10),
                                    decoration: BoxDecoration(
                                        // color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4.0)),
                                        border: Border.all(
                                            color: Colors.blue, width: 1)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: tactic,
                                        autofocus: true,
                                        // isExpanded: true,
                                        hint: Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              "Gender",
                                              style: TextStyle(
                                                  color: Colors.grey),
                                            )),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.black,
                                        ),
                                        iconSize: 24,
                                        onChanged: (String newValue) {
                                          setState(() {
                                            tactic = newValue;
                                          });
                                        },
                                        items: tacticList
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            onTap: (){},
                                            value: value,
                                            child: Container(
                                                padding:
                                                    EdgeInsets.only(left: 15),
                                                child: Text(
                                                  value,
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                )),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                  
                                  
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 15.0),
                                    child: DateTimeField(
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.date_range),
                                          labelText: 'Date of Birth',
                                          enabledBorder: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: Colors.blue)),
                                          border: OutlineInputBorder(),
                                      ),
                                      format: format,
                                      onShowPicker: (context, currentValue) {
                                        return showDatePicker(
                                            context: context,
                                            firstDate: DateTime(1900),
                                            initialDate:
                                                currentValue ?? DateTime.now(),
                                            lastDate: DateTime(2100));
                                      },
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 15.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.person),
                                        labelText: 'Username',
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue)),
                                        border: OutlineInputBorder(),
                                      ),
                                      onChanged: (input) {
                                        setState(() {
                                          email = input;
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 15.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.email),
                                        labelText: 'Email address',
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue)),
                                        border: OutlineInputBorder(),
                                      ),
                                      onChanged: (input) {
                                        setState(() {
                                          email = input;
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 15.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        prefixIcon:
                                            Icon(Icons.mobile_screen_share),
                                        labelText: 'Mobile no',
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue)),
                                        border: OutlineInputBorder(),
                                      ),
                                      onChanged: (input) {
                                        setState(() {
                                          email = input;
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 15.0),
                                    child: TextField(
                                      obscureText: isVisible,
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.lock),
                                          labelText: 'Password',
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue)),
                                          border: OutlineInputBorder(),
                                          suffixIcon: IconButton(
                                            icon: visibleIcon,
                                            onPressed: () {
                                              setState(() {
                                                isVisible = !isVisible;
                                                visibleIcon = isVisible == true
                                                    ? Icon(Icons.visibility)
                                                    : Icon(
                                                        Icons.visibility_off);
                                              });
                                            },
                                          )),
                                      onChanged: (input) {
                                        setState(() {
                                          password = input;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              transform:
                                  Matrix4.translationValues(0.0, -10.0, 0.0),
                              margin: const EdgeInsets.fromLTRB(15, 0, 15, 5),
                              color: Colors.transparent,
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: FlatButton(
                                // shape: new RoundedRectangleBorder(
                                //   borderRadius: new BorderRadius.circular(0.0),
                                // ),
                                onPressed: () async {
                                  if(tactic.isEmpty){
                                    showInDialog(context, "Error", "Please select formation");
                                  }
                                },
                                color: Colors.yellow[700],
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Open Sans',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
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
