import 'package:costly/view/home_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WelcomePageState();
  }
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Material(
            color: Colors.blue,
            shadowColor: Colors.grey.shade100,
            elevation: 4.0,
            child: Container(
                height: MediaQuery.of(context).size.height / 2,
                child: Center(
                  child: Text('Welcome',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold)),
                ))),
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('欢迎使用', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0))),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('你好，在开始使用Costly之前，需要进行一些设置',
                  style: TextStyle(color: Colors.grey, fontSize: 18.0))),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 40.0),
          decoration: BoxDecoration(color: Colors.lightBlue, shape: BoxShape.circle, boxShadow: [
            BoxShadow(offset: Offset(0.0, 3.0), color: Colors.grey, blurRadius: 3.0)
          ]),
          child: IconButton(icon: Icon(Icons.arrow_forward, color: Colors.white), onPressed: () {
            Navigator.of(context).pushReplacementNamed(HomePage.tag);
          }),
        )
      ],
    ));
  }
}
