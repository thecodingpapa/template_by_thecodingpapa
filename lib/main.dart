import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_by_thecodingpapa/pages/auth_page.dart';
import 'package:template_by_thecodingpapa/pages/my_home.dart';
import 'package:template_by_thecodingpapa/provider/page_notifier.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PageNotifier())],
      child: MaterialApp(
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
        home: Consumer<PageNotifier>(
          builder: (context, pageNotifier, child) {
            return Navigator(pages: [
              MaterialPage(
                  key: ValueKey(MyHome.pageName),
                  child: MyHome(
                      title: 'Flutter Demo Home Page')), // main home page

              if (pageNotifier.curPage == AuthPage.pageName) AuthPage()
            ]);
          },
        ),
      ),
    );
  }
}
