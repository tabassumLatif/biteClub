import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'WelcomePage.dart';

class UploadProfilePicturePage extends StatefulWidget {
  @override
  _UploadProfilePicturePageState createState() => new _UploadProfilePicturePageState();
}

class _UploadProfilePicturePageState extends State<UploadProfilePicturePage> {
  @override
  Widget build(BuildContext context) {
    final usernameText = Text(
      "Hey Rizwan",
      style: new TextStyle(
        fontSize: 22.0,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );

    final onboardText = Text(
      "Welcome on board",
      style: new TextStyle(
        fontSize: 16.0,
        color: Colors.black54,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );

    final profile = new Container(
        width: 120.0,
        height: 120.0,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                image:
                    new AssetImage('assets/images/profile_paceholder.png'))));

    final uploadProfileImage = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            onPressed: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new WelcomePage()));
            },
            padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
            color: Color(0xFFF52E2E),
            child: Text(
              'Upload profile picture',
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ]);

    final skip = RichText(
      textAlign: TextAlign.center,
      text: new TextSpan(style: TextStyle(color: Colors.black54), children: [
        new TextSpan(
          text: 'Skip',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
          recognizer: new TapGestureRecognizer()
            ..onTap = () => Navigator.pop(context),
        )
      ]),
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              SizedBox(height: 48.0),
              usernameText,
              SizedBox(height: 4.0),
              onboardText,
              SizedBox(height: 24.0),
              profile,
              SizedBox(height: 24.0),
              uploadProfileImage,
              SizedBox(height: 12.0),
              skip
            ],
          ),
        ));
  }
}
