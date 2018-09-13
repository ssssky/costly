import 'package:flutter/material.dart';
import 'package:costly/base/base_stateful_widget.dart';

class SettingPage extends BaseStatefulWidget {

  @override
  IconData get iconData => Icons.settings;

  @override
  String get title => '设置';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SettingPageState();
  }
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('设置'), centerTitle: false,),
      body: Center(
        child: Text('setting'),
        ),
      );
  }
}
