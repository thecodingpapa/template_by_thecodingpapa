import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_by_thecodingpapa/provider/page_notifier.dart';

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
  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  bool isObscured =
      true; //for enabling and disabling obscurity in password field

  @override
  Widget build(BuildContext context) {
    final color = Colors.black;
    final lightColor = Colors.grey;
    final primaryColor = Colors.white;
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Material(
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            Image.asset('assets/image.png'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign In',
                    style: TextStyle(
                        color: color,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Please fill in all fields',
                    style: TextStyle(
                        color: lightColor[400],
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  TextField(
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: lightColor,
                          ),
                          labelText: 'Email Address',
                          labelStyle:
                              TextStyle(color: lightColor, fontSize: 16))),
                  SizedBox(height: 20),
                  TextField(
                      style: TextStyle(fontSize: 18),
                      obscureText: isObscured,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: lightColor,
                          ),
                          suffixIcon: IconButton(
                              icon: isObscured
                                  ? Icon(Icons.visibility_off,
                                      color: lightColor)
                                  : Icon(Icons.visibility, color: lightColor),
                              onPressed: () {
                                setState(() {
                                  isObscured = !isObscured;
                                });
                              }),
                          labelText: 'Password',
                          labelStyle:
                              TextStyle(color: lightColor, fontSize: 16))),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: Text('Forgot password?',
                            style: TextStyle(
                                fontSize: 16, color: lightColor[400])),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 50,
                    width: width,
                    child: FlatButton(
                        splashColor: lightColor,
                        color: color,
                        onPressed: () {
                          Provider.of<PageNotifier>(context, listen: false)
                              .goToMain();
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: primaryColor),
                        )),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account?",
                          style:
                              TextStyle(color: lightColor[400], fontSize: 14)),
                      SizedBox(width: 5),
                      InkWell(
                        onTap: () {},
                        child: Text("Sign Up",
                            style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
