import 'package:flutter/material.dart';
import 'package:template_by_thecodingpapa/pages/auth_page.dart';
import 'package:template_by_thecodingpapa/pages/my_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _selectedPage;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Navigator(pages: [
        MaterialPage(
            key: ValueKey(MyHome.pageName),
            child: MyHome(title: 'Flutter Demo Home Page')), // main home page

        if (_selectedPage == AuthPage.pageName) AuthPage()
      ]),
    );
  }
}
