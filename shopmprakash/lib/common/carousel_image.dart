import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CarouselPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200.0,
          width: MediaQuery.of(context).size.width,
          child: Carousel(
            autoplayDuration:Duration(milliseconds: 10000),
            boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.topRight,
            dotVerticalPadding: 10.0,
            showIndicator: true,overlayShadowColors: Colors.amber,
            indicatorBgPadding: 7.0,
            images: [
              // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
             AssetImage('assets/images/s1.jpg'),
             AssetImage('assets/images/s2.jpg'),
             AssetImage('assets/images/s3.jpg'),
             AssetImage('assets/images/s4.png'),
             AssetImage('assets/images/s5.png'),
             AssetImage('assets/images/s6.jpg'),
             AssetImage('assets/images/s7.jpg'),
              // ExactAssetImage("assets/images/LaunchImage.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}