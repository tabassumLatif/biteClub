import 'package:bite_club/view/signup/SignupPage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  static String tag = 'view.signup-page';

  ForgotPasswordPage({Key key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => new _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    final logoText = Text(
      "Forgot Password",
      style: new TextStyle(
        fontSize: 22.0,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );

    final sublogoText = Text(
      "Let's reset it",
      style: new TextStyle(
        fontSize: 16.0,
        color: Colors.black54,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );

    final descriptionText = Text(
      "An Email will be sent to your email to reset password",
      style: new TextStyle(
        fontSize: 12.0,
        color: Colors.black54,
        fontWeight: FontWeight.w300,
      ),
      textAlign: TextAlign.left,
    );

    final email = Container(
        color: const Color(0xFFF3F3F3),
        // or any color that matches your background
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

    final resetPassword = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            onPressed: () {
              Navigator.pop(context);
              /*Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new LoginPage()));*/
            },
            padding: EdgeInsets.all(8),
            color: Color(0xFFF52E2E),
            child: Text(
              'Reset Password',
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ]);

    final signup = RichText(
      textAlign: TextAlign.center,
      text: new TextSpan(
          text: 'Don\'t have an account? ',
          style: TextStyle(color: Colors.black54),
          children: [
            new TextSpan(
              text: 'Sign Up.',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
              recognizer: new TapGestureRecognizer()
                ..onTap = () => Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new SignupPage())),
            )
          ]),
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
            SizedBox(height: 18.0),
            descriptionText,
            SizedBox(height: 100.0),
            resetPassword,
            SizedBox(height: 12.0),
            signup
          ],
        ),
      )
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: body,
    );
  }
}
