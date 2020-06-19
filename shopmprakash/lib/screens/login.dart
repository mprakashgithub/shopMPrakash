import 'dart:convert';

import 'package:calidig/screens/home_page.dart';
// import 'package:calidig/home_page.dart';
import 'package:calidig/screens/register.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  // Login({Key key, this.title}) : super(key: key);
  // final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextStyle style = TextStyle(fontFamily: 'Open Sans', fontSize: 15.0);
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  String  password, username;

  bool isVisible;
  Icon visibleIcon;
  bool rememberMe;


  getDataFromSharedPrefs() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      bool remember_me = sharedPreferences.getBool("rememberMe") ?? false;
      if (remember_me) {
        password = sharedPreferences.getString("password");
        
        username = sharedPreferences.getString("username");
        rememberMe = true;
      } else {
        
        password = "";
        username = "";
        rememberMe = false;
      }
    });
  }
  
  @override
  void initState() {
    
    password = "";
    username = "";
    isVisible = true;
    visibleIcon =
        isVisible == true ? Icon(Icons.visibility) : Icon(Icons.visibility_off);
  }

  static var uri = "https://shop.calidig.com/wp-json/custom-plugin/login";

  static BaseOptions options = BaseOptions(
      baseUrl: uri,
      responseType: ResponseType.plain,
      connectTimeout: 30000,
      receiveTimeout: 30000,
      validateStatus: (code) {
        if (code >= 200) {
          return true;
        } else {
          return false;
        }
      });

  static Dio dio = Dio(options);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        key:_scaffoldKey,
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
                }),
          ),
        ),

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
                                    // disabledColor: Colors.grey,
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(fontSize: 25.0),
                                    ),
                                    onPressed: () {},
                                  ),

                                  FlatButton(
                                    // disabledColor: Colors.grey,
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Register",
                                      style: TextStyle(fontSize: 25.0),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Register()));
                                    },
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
                                    const EdgeInsets.fromLTRB(20, 70, 120, 10),
                                child: new Text(
                                  "Log In Your Account",
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
                                        labelText: 'Username or email address',
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue)),
                                        border: OutlineInputBorder(),
                                      ),
                                      onChanged: (input) {
                                        setState(() {
                                         
                                          username = input;

                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 15.0),
                                    child: TextFormField(
                                      // initialValue:
                                      //   rememberMe == true ? password : "",
                                      obscureText: isVisible,
                                      decoration: InputDecoration(
                                         filled: true,
                                        fillColor: Colors.white,
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
                              height: 15.0,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  //centerTitle: true,
                                  // leading: new
                                  IconButton(
                                      // color:Color(0xff324492),
                                      color: Colors.black,
                                      iconSize: 25,
                                      icon: new Icon(
                                          Icons.check_box_outline_blank),
                                      onPressed: () {}),

                                  FlatButton(
                                    padding: EdgeInsets.fromLTRB(0, 10, 80, 10),
                                    child: Text(
                                      "Remember me",
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                    onPressed: () {},
                                  ),

                                  FlatButton(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Forgot?",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Register()));
                                    },
                                  )

                                  // Text("Login", style: TextStyle(fontSize: 25.0),),
                                  // Text("Register", style: TextStyle(fontSize: 25.0),)
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
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
                                onPressed: () async {},
                                color: Colors.yellow[700],
                                child: Text(
                                  "Log in",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Open Sans',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                                // transform:
                                //     Matrix4.translationValues(0.0, -10.0, 0.0),
                                // margin: const EdgeInsets.fromLTRB(15, 0, 15, 5),
                                // color: Colors.transparent,
                                // width: MediaQuery.of(context).size.width,
                                // height: 50,
                                // child: FlatButton(
                                //   // shape: new RoundedRectangleBorder(
                                //   //   borderRadius: new BorderRadius.circular(0.0),
                                //   // ),
                                //   onPressed: () async {},
                                //   color: Colors.yellow[700],
                                //   child: Text(
                                //     "Log in",
                                //     style: TextStyle(
                                //       fontWeight: FontWeight.bold,
                                //       color: Colors.black,
                                //       fontSize: 16,
                                //       fontFamily: 'Open Sans',
                                //     ),
                                //   ),
                                // ),
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

    // Future<dynamic> _loginUser(String username, String password) async {
    // try {
    //   Options options = Options(
    //     contentType: ContentType.parse('application/json'),
    //   );

    //   var response = await dio.post('oauth/token',
    //       data: {
    //         "username": username,
    //         "password": password,
    //         "grant_type": "password",
    //         "client_id": "2",
    //         "client_secret": "LBOzUfen0hmQjDSSHrxzaT7KeyniHkxIcpP7Gc8M"
    //       },
    //       options: options);

      // if (response.statusCode == 200 || response.statusCode == 201) {
      //   var responseJson = json.decode(response.data);
      //   return responseJson;
      // } else
      //   setState(() {
      //     isLoading = false;
      //   }
       // );
    //   showInDialog(context, "Error", "Incorrect Email/Password");
    // } on DioError catch (exception) {
    //   if (exception == null ||
    //       exception.toString().contains('SocketException')) {
    //     setState(() {
    //       isLoading = false;
    //     });
    //     showInDialog(context, "Error", "Network Error");
    //   } else if (exception.type == DioErrorType.RECEIVE_TIMEOUT ||
    //       exception.type == DioErrorType.CONNECT_TIMEOUT) {
    //     setState(() {
    //       isLoading = false;
    //     });
    //     showInDialog(context, "Error",
    //         "Could'nt connect, please ensure you have a stable network.");
    //   } else {
    //     return null;
    //   }
    // }
 // }

  // Future<dynamic> getUserDetails(String access_token) async {
  //   try {
  //     Options options = Options(
  //       contentType: ContentType.parse('application/json'),
  //       headers: {HttpHeaders.authorizationHeader: "Bearer " + access_token},
  //     );

  //     var response = await dio.get('api/v1/user', options: options);

  //     if (response.statusCode == 200 || response.statusCode == 201) {
  //       var responseJson = json.decode(response.data);
  //       return responseJson;
  //     } else
  //       print("Error: " + response.statusCode.toString());
  //   } on DioError catch (exception) {
  //     if (exception == null ||
  //         exception.toString().contains('SocketException')) {
  //       print("Error: " + "Network Error");
  //     } else if (exception.type == DioErrorType.RECEIVE_TIMEOUT ||
  //         exception.type == DioErrorType.CONNECT_TIMEOUT) {
  //       print("Error: " +
  //           "Could'nt connect, please ensure you have a stable network.");
  //     } else {
  //       return null;
  //     }
  //   }
  // }
 //}


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
