import 'package:costly/view/welcome_page.dart';
import 'package:flutter/material.dart';
import 'view/home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    HomePage.tag: (context) {
      return HomePage();
    }
  };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'costly',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: WelcomePage(),
      routes: routes,
    );
  }
}
