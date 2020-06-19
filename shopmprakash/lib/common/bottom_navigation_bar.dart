import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedItemColor: Colors.red,
      type: BottomNavigationBarType.fixed,
      iconSize: 30.0,
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.home,
                  
                  // color: Colors.red,
                ),
                backgroundColor: Colors.blue,
                title: new Text(
                  "Home",
                  style: new TextStyle(
                    // color:Colors.black,
                  ),
                )),
            new BottomNavigationBarItem(
              backgroundColor: Colors.blue,
                icon: new Icon(
                  Icons.menu,
                  // color:Colors.grey,
                ),
                title: new Text(
                  "Category",
                  style: new TextStyle(
                  //  color:Colors.black,
                  ),
                )),
            new BottomNavigationBarItem(
              backgroundColor: Colors.blue,
                icon: new Icon(
                  Icons.search,
                  // color:Colors.grey,
                ),
                title: new Text(
                  "search",
                  style: new TextStyle(
                    // color:Colors.black,
                  ),
                )),
                new BottomNavigationBarItem(
                  backgroundColor: Colors.blue,
                icon: new Icon(
                  Icons.shopping_cart,
                  // color:Colors.grey,
                ),
                title: new Text(
                  "Cart",
                  style: new TextStyle(
                  //  color:Colors.black,
                  ),
                )
                ),
                
          ],
          onTap: (index){
            setState(() {
              _currentIndex= index;
            });
          },
         
        );
  }
}