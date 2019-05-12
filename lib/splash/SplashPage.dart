import 'dart:async';

import 'package:bite_club/login/LoginPage.dart';
import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);
  @override
  _SplashPageState createState() => new _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {

  void handleTimeout() {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
        builder: (BuildContext context) => new LoginPage()));
  }

  startTimeout() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, handleTimeout);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      body:
      body: new Image.asset(
        'assets/images/splash.jpg',
        fit:BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}