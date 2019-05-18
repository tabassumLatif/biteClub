import 'dart:async';

import 'package:bite_club/view/home/HomePage.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  void handleTimeout() {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
        builder: (BuildContext context) => new HomePage()));
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
    final welcomeText = Text(
      "Thanks for signing up",
      style: new TextStyle(
        fontSize: 22.0,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );

    final subText = Text(
      "Your request for sign up has been \nrecieved, we will get\n to you shortly",
      style: new TextStyle(
        fontSize: 16.0,
          color: Colors.black54,
          fontWeight: FontWeight.w500
      ),
      textAlign: TextAlign.center,
    );

    final body = Stack(children: <Widget>[
      Image.asset(
        'assets/images/background.png',
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
      Center(
          child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
            new Image.asset(
              'assets/images/welcome.png',
              width: 200,
              height: 159,
              fit: BoxFit.none,
            ),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  width: 20,
                  height: 2,
                  color: Colors.black,
                ),
                new Padding(
                  padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                ),
                new Container(
                  width: 120,
                  height: 2,
                  color: Colors.black,
                ),
              ],
            ),
            new Padding(padding: EdgeInsets.fromLTRB(0, 16, 0, 0)),
            welcomeText,
                new Padding(padding: EdgeInsets.fromLTRB(0, 8, 0, 0)),
                subText
          ]))
    ]);

    return Scaffold(
      body: body,
    );
  }
}
