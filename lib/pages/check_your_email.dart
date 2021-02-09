import 'package:flutter/material.dart';

class CheckYourEmail extends Page {
  static final pageName = "CheckYourEmail";

  CheckYourEmail({Key key}) : super(key: key);

  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return CheckYourEmailWidget();
      },
    );
  }
}

class CheckYourEmailWidget extends StatefulWidget {
  CheckYourEmailWidget({Key key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<CheckYourEmailWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/image.gif'),
          fit: BoxFit.cover,
          // colorFilter: ColorFilter.mode(
          //     Colors.black.withOpacity(.5), BlendMode.darken)
        )),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              padding: EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [_sendVerification(), _emailVerified(context)],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _sendVerification() {
    return FlatButton(
      onPressed: () async {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.all(16),
      color: Colors.white54,
      textColor: Colors.black87,
      child: Text(
        "Send email Verification to User email",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget _emailVerified(BuildContext context) {
    return FlatButton(
      onPressed: () async {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.all(16),
      color: Colors.white54,
      textColor: Colors.black87,
      child: Text(
        "email Verified!! try to go to main page",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}
