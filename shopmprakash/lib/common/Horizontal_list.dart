import 'package:flutter/material.dart';

class HorizontalListView extends StatefulWidget {
  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                Container(
                  height: 150,
                  child: new Image(image:AssetImage('assets/images/s1.jpg'))),
                Row(
                  children: <Widget>[
                    Text('₤ 125.68'),
                    Text('₤ 125.68',
                    style: new TextStyle(
          color: Colors.grey,
          decoration: TextDecoration.lineThrough,
        ),)
                  ],
                )
              ],
            ),
          ),
           Card(
            child: Column(
              children: <Widget>[
                Container(
                  height: 150.0,
                  child: new Image(image:AssetImage('assets/images/s2.jpg'))),
                Row(
                  children: <Widget>[
                    Text('₤ 125.68'),
                    Text('₤ 125.68',
                    style: new TextStyle(
          color: Colors.grey,
          decoration: TextDecoration.lineThrough,
        ),)
                  ],
                )
              ],
            ),
          ),
           Card(
            child: Column(
              children: <Widget>[
                Container(
                  height: 150.0,
                  child: new Image(image:AssetImage('assets/images/s3.jpg'))),
                Row(
                  children: <Widget>[
                    Text('₤ 125.68'),
                    Text('₤ 125.68',
                    style: new TextStyle(
          color: Colors.grey,
          decoration: TextDecoration.lineThrough,
        ),)
                  ],
                )
              ],
            ),
          ),
           Card(
            child: Column(
              children: <Widget>[
                Container(
                  height: 150.0,
                  child: new Image(image:AssetImage('assets/images/s4.png'))),
                Row(
                  children: <Widget>[
                    Text('₤ 125.68'),
                    Text('₤ 125.68',
                    style: new TextStyle(
          color: Colors.grey,
          decoration: TextDecoration.lineThrough,
        ),)
                  ],
                )
              ],
            ),
          ),
           Card(
            child: Column(
              children: <Widget>[
                Container(
                  height: 150.0,
                  child: new Image(image:AssetImage('assets/images/s5.png'))),
                Row(
                  children: <Widget>[
                    Text('₤ 125.68'),
                    Text('₤ 125.68',
                    style: new TextStyle(
          color: Colors.grey,
          decoration: TextDecoration.lineThrough,
        ),)
                  ],
                )
              ],
            ),
          ),
       
       
       
       
        ],
      ),
    );
  }
}