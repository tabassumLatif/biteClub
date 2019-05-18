import 'package:bite_club/view/forgotPassword/ForgotPasswordPage.dart';
import 'package:bite_club/view/home/HomePage.dart';
import 'package:bite_club/view/signup/SignupPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'view.login-page';

  @override
  _LoginPageState createState() => new _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
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
      "Login to continue",
      style: new TextStyle(
        fontSize: 16.0,
        color: Colors.black54,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );

    final email = Container(
        color: const Color(0xFFF3F3F3),
        // or any color that matches your background
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          initialValue: '',
          decoration: InputDecoration(
              hintText: 'Email Address or Phone Number',
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

    final forgotPassword = GestureDetector(
      onTap: () {
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new ForgotPasswordPage()));
      },
      child: Text(
        "Forgot Password",
        style: new TextStyle(
          fontSize: 12.0,
          color: Colors.black54,
          fontWeight: FontWeight.w400,
        ),
        textAlign: TextAlign.right,
      ),
    );

    final login = Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new HomePage()));
        },
        padding: EdgeInsets.all(0),
        color: Color(0xFFF52E2E),
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );

    final signup = Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2.0, color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(2),
        ),
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new SignupPage()));
        },
        padding: EdgeInsets.all(0),
        color: Colors.white,
        child: Text(
          'Signup',
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );

    final loginRow = new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[login, signup]);

    final loginOptionRow = new Row(
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
          new Container(
              padding: new EdgeInsets.all(8.0),
              child: new Image.asset('assets/images/insta.png',
                  scale: 3.0, width: 48.0, height: 48.0)),
        ]);

    final signupwithText = Text(
      'Sign up with',
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
    );

    final body = Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/background.png',
          fit:BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Center(
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
              email,
              SizedBox(height: 8.0),
              password,
              SizedBox(
                height: 12.0,
              ),
              forgotPassword,
              SizedBox(height: 24.0),
              loginRow,
              SizedBox(height: 24.0),
              signupwithText,
              SizedBox(height: 24.0),
              loginOptionRow,
            ],
          ),
        )
      ],
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: body,
    );
  }
}
