// import 'package:calidig/screens/myAccount.dart';
import 'package:calidig/screens/login.dart';
import 'package:flutter/material.dart';
import "package:calidig/common/bottom_navigation_bar.dart";
import 'package:calidig/common/custom_drawer.dart';

class SliverCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
          body: SafeArea(
        child: Material(
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                delegate: MySliverAppBar(expandedHeight: 200),
                pinned: true,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, index) => ListTile(
                      //title: Text("Index: $index"),
                      ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
      
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight});
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Scaffold(
      key: _scaffoldKey,
          body: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          AppBar( 
            leading: new IconButton(
                  color: Color(0xff324492),
                  iconSize: 30,
                  icon: new Icon(Icons.menu),
                  onPressed: () => _scaffoldKey.currentState.openDrawer()
                  ),
            backgroundColor: Colors.white,
            title: 
            Row(
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
  
            // new Text("Shop", style: TextStyle(color: Colors.yellow)),
            actions: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.shopping_cart, color: Colors.black),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.shopping_cart, color: Colors.black),
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
              ),
            ],
          ),
          Positioned(
            top: expandedHeight/2 - shrinkOffset - 40.0,
            left: MediaQuery.of(context).size.width / 4,
            child: Opacity(
              opacity: (1 - shrinkOffset / expandedHeight),
              child: Card(
                elevation: 1,
                child: SizedBox(
                  
                  width: MediaQuery.of(context).size.width / 2,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "I'm shopping for...",
                      suffixIcon: Icon(Icons.search,
                      color: Colors.yellowAccent,),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: CustomDrawer(),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
