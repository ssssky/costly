import 'package:flutter/material.dart';
import 'package:costly/base/base_stateful_widget.dart';

class DailyPage extends BaseStatefulWidget {

  @override
  IconData get iconData => Icons.today;

  @override
  String get title => '账单';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DailyPageState();
  }
}

class _DailyPageState extends State<DailyPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text('daily'),
        ),
      );
  }
}
