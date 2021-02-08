import 'package:flutter/material.dart';

class AuthPage extends Page {
  static final pageName = "AuthPage";

  AuthPage({Key key}) : super(key: key);

  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return AuthWidget();
      },
    );
  }
}

class AuthWidget extends StatefulWidget {
  AuthWidget({Key key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  final radiusSize = 8.0;

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
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.all(16),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Image.asset(
                        'assets/logo.png',
                        scale: 1.1,
                      ),
                    ),
                  ),
                  ButtonBar(
                    children: [_loginTabButton(context), _registerTabButton()],
                  ),
                  _email(),
                  SizedBox(
                    height: 8,
                  ),
                  _password(),
                  SizedBox(
                    height: 24,
                  ),
                  _loginButton(),
                  Divider(
                    height: 50,
                    thickness: 1,
                    color: Colors.white54,
                    indent: 16,
                    endIndent: 16,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      _socialLogin(
                          assetLoction: 'assets/icons8-google-48.png',
                          onPress: () {}),
                      _socialLogin(
                          assetLoction: 'assets/icons8-facebook-48.png',
                          onPress: () {}),
                      _socialLogin(
                          assetLoction: 'assets/icons8-apple-logo-48.png',
                          onPress: () {}),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container _socialLogin({String assetLoction, Function onPress}) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.white54),
      child: IconButton(
          icon: ImageIcon(AssetImage(assetLoction)), onPressed: onPress),
    );
  }

  FlatButton _registerTabButton() {
    return FlatButton(
      onPressed: () {},
      color: Colors.transparent,
      textColor: Colors.black87,
      child: Text('Register',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
    );
  }

  FlatButton _loginTabButton(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      color: Colors.transparent,
      textColor: Colors.black87,
      child: Text('Login',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
    );
  }

  TextFormField _email() {
    return TextFormField(
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'Email Address',
        hintStyle: TextStyle(
          color: Colors.white54,
        ),
        filled: true,
        fillColor: Colors.black26,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusSize),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radiusSize),
            borderSide: BorderSide(color: Colors.transparent, width: 0)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radiusSize),
            borderSide: BorderSide(color: Colors.transparent, width: 0)),
      ),
    );
  }

  TextFormField _password() {
    return TextFormField(
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(
          color: Colors.white54,
        ),
        filled: true,
        fillColor: Colors.black26,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusSize),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radiusSize),
            borderSide: BorderSide(color: Colors.transparent, width: 0)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radiusSize),
            borderSide: BorderSide(color: Colors.transparent, width: 0)),
      ),
    );
  }

  Widget _loginButton() {
    return FlatButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusSize)),
      padding: EdgeInsets.all(16),
      color: Colors.white54,
      textColor: Colors.black87,
      child: Text(
        'Login',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}
