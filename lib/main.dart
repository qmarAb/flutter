
import 'package:app_meal/pages/home/home.dart';
import 'package:app_meal/tips/getStart.dart';
import 'package:app_meal/tips/tips.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:app_meal/pages/config.dart';

void main() {
  runApp(MaterialApp(
    title: "best foood ",
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new GetSrart(),
      title: new Text(
        'Welcome to our restaurant',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.white),
      ),

      backgroundColor: primeryColor,
      loaderColor: Colors.blue,
      styleTextUnderTheLoader: new TextStyle(),
      onClick: ()=>print("restourant"),

    );
  }
}
