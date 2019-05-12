import 'package:bite_club/welcome/WelcomePage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  static String tag = 'signup-page';

  SignupPage({Key key}) : super(key: key);

  @override
  _SignupPageState createState() => new _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final logoText = Text(
      "Welcome to BITE CLUB",
      style: new TextStyle(
        fontSize: 22.0,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );

    final sublogoText = Text(
      "Join the Family",
      style: new TextStyle(
        fontSize: 16.0,
        color: Colors.black54,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );

    final firstName = new Flexible(
        child: Container(
            color: const Color(0xFFF3F3F3),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              initialValue: '',
              decoration: InputDecoration(
                  hintText: 'First Name',
                  hintStyle: TextStyle(
                    color: Color(0xFFA2A2A2),
                    fontSize: 11.0,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: new BorderSide(color: Color(0xFFA2A2A2)))),
            )));

    final lastName = new Flexible(
        child: Container(
      color: const Color(0xFFF3F3F3),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        initialValue: '',
        decoration: InputDecoration(
            hintText: 'Last Name',
            hintStyle: TextStyle(
              color: Color(0xFFA2A2A2),
              fontSize: 11.0,
            ),
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(0.0)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
                borderSide: new BorderSide(color: Color(0xFFA2A2A2)))),
      ),
    ));

    final nameRow = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[firstName, SizedBox(width: 8.0), lastName],
    );
    final email = Container(
        color: const Color(0xFFF3F3F3),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          initialValue: '',
          decoration: InputDecoration(
              hintText: 'Email Address',
              hintStyle: TextStyle(
                color: Color(0xFFA2A2A2),
                fontSize: 11.0,
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(0.0)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: new BorderSide(color: Color(0xFFA2A2A2)))),
        ));
    final phoneNumber = Container(
        color: const Color(0xFFF3F3F3),
        // or any color that matches your background
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          initialValue: '',
          decoration: InputDecoration(
              hintText: 'Phone Number',
              hintStyle: TextStyle(
                color: Color(0xFFA2A2A2),
                fontSize: 11.0,
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(0.0)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: new BorderSide(color: Color(0xFFA2A2A2)))),
        ));
    final password = Container(
        color: const Color(0xFFF3F3F3),
        // or any color that matches your background
        child: TextFormField(
          autofocus: false,
          initialValue: '',
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Color(0xFFA2A2A2),
                fontSize: 11.0,
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: new BorderSide(color: Color(0xFFF3F3F3))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: new BorderSide(color: Color(0xFFA2A2A2)))),
        ));
    String dropdownValue = 'One';
    final vlaues = Container(
        height: 40.0,
        decoration:
            new BoxDecoration(border: new Border.all(color: Color(0xFFA2A2A2))),
        child: DropdownButton<String>(
          isExpanded: true,
          value: dropdownValue,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ));

    final signup = Row(
        mainAxisAlignment: MainAxisAlignment.start,
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
              'Sign UP',
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ]);

    final login = RichText(
      textAlign: TextAlign.center,
      text: new TextSpan(
          text: 'Already have an account? ',
          style: TextStyle(color: Colors.black54),
          children: [
            new TextSpan(
              text: 'Sign IN',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
              recognizer: new TapGestureRecognizer()
                ..onTap = () => Navigator.pop(context),
            )
          ]),
    );

    final signupWithText = Text(
      "Sign up With",
      style: new TextStyle(
        fontSize: 16.0,
        color: Colors.black54,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );

    final signupOptionRow = new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
              padding: new EdgeInsets.all(8.0),
              child: new Image.asset(
                'assets/images/google.png',
                scale: 3.0,
                width: 48.0,
                height: 48.0,
              )),
          new Container(
              padding: new EdgeInsets.all(8.0),
              child: new Image.asset('assets/images/fb.png',
                  scale: 3.0, width: 48.0, height: 48.0)),

        ]);

    return new Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 48.0),
            logoText,
            SizedBox(
              height: 4.0,
            ),
            sublogoText,
            SizedBox(height: 48.0),
            nameRow,
            SizedBox(height: 8.0),
            email,
            SizedBox(height: 8.0),
            phoneNumber,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 8.0),
            vlaues,
            SizedBox(height: 12.0),
            signup,
            SizedBox(height: 16.0),
            login,
            SizedBox(height: 24.0),
            signupWithText,
            SizedBox(height: 18.0),
            signupOptionRow,
          ],
        ),
      ),
    );
  }
}
