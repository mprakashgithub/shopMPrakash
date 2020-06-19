import 'package:flutter/material.dart';

class CardPageView extends StatefulWidget {
  @override
  _CardPageViewState createState() => _CardPageViewState();
}

class _CardPageViewState extends State<CardPageView> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Giordano'),
          Text('PACK 5 T-SHIRTS FOR SUMMER'),
          Text('Starting at #99.99'),
          new Image(image:AssetImage('assets/images/s3.jpg'))
        ],
      ),
    );
  }
}