import 'package:flutter/material.dart';
import 'package:costly/base/base_stateful_widget.dart';

class ChartPage extends BaseStatefulWidget {

  @override
  IconData get iconData => Icons.insert_chart;

  @override
  String get title => '报表';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ChartPageState();
  }
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text('chart'),
        ),
      );
  }
}
