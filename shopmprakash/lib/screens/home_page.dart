// import 'package:calidig/common/preferredSize.dart';
import 'package:calidig/common/Horizontal_list.dart';
import 'package:calidig/common/bottom_navigation_bar.dart';
import 'package:calidig/common/card_page.dart';
import 'package:calidig/common/carousel_image.dart';
import 'package:calidig/common/custom_drawer.dart';
import 'package:calidig/common/sliver_Custom.dart';
import 'package:calidig/screens/login.dart';
// import 'package:calidig/screens/myAccount.dart';
import 'package:flutter/material.dart';

// import 'package:calidig/common/sliver_Custom.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, 
      appBar: PreferredSize(
        
        preferredSize: Size(double.infinity, 130),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            border: Border.all(
              color: Colors.white,
              width: 0.0
            )
          ),
          width: MediaQuery.of(context).size.width,
          height: 250,
          child: Container(
            color: Colors.white,
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          'Calidig',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                        Text(
                          'Shop',
                          style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ],
                    ),
                    SizedBox(width:MediaQuery.of(context).size.width/2.9),
                    // Spacer(),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.shopping_basket,
                              color: Colors.black),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon:
                              Icon(Icons.shopping_cart, color: Colors.black),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.person, color: Colors.black),
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
                AppBar(
                  elevation: 0.0,
                  
                  backgroundColor: Colors.white,
                  bottomOpacity: 0.0,
                  title: Row(
                    children: [
                    
                      Container(
                        height: MediaQuery.of(context).size.height/16,
                          width: MediaQuery.of(context).size.width / 1.3,
                          child: TextFormField(
                            autocorrect: true,
                           
                              decoration:  InputDecoration(
                                contentPadding: EdgeInsets.all(12.0),
                              
                            enabledBorder: const OutlineInputBorder(
                              
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 0.5),
                            ),
                            hintText: "I'm shopping for...",
                            suffixIcon: Container(
                              decoration: BoxDecoration(
                                color: Colors.yellow[700],
                                borderRadius: BorderRadius.horizontal(left: Radius.circular(0.0),right: Radius.circular(4.0))
                              ),
                              // color: Colors.yellow[700],
                              child: Icon(
                                Icons.search,

                                color: Colors.black,
                              ),
                            ),
                          )))
                    ],
                  ),
                  leading: new IconButton(
                      // color:Color(0xff324492),
                      color: Colors.black,
                      iconSize: 35,
                      icon: new Icon(Icons.menu),
                      onPressed: () =>
                          _scaffoldKey.currentState.openDrawer()),
                ),
                //  CustomDrawer(),
              ],
            ),
          ),
        ),
      ),
      drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white.withOpacity(
                1), 
          ),
          child: CustomDrawer(),),
      bottomNavigationBar: BottomNavBar(),
      body: ListView(
        children: <Widget>[
          // Container(
          //   height: 100.0,
          //   child: SliverCustom()
          //   ),

          Container(
              height: MediaQuery.of(context).size.height - 360,
              width: MediaQuery.of(context).size.width,
              child: CarouselPage()),
          Container(
            decoration: BoxDecoration(),
            child: CardPageView(),
          ),
          Container(
            child: HorizontalListView(),
          )
        ],
      ),
    );
  }
}
