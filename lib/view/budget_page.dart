import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:costly/base/base_stateful_widget.dart';
import 'package:costly/base/my_circular_painter.dart';
import 'dart:async';

class BudgetPage extends BaseStatefulWidget {
  @override
  IconData get iconData => Icons.monetization_on;

  @override
  String get title => '预算';

  @override
  State<StatefulWidget> createState() {
    return _BudgetPageState();
  }
}

class _BudgetPageState extends State<BudgetPage> with TickerProviderStateMixin {
  var percentage = 0.0;

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    //设下月的day为0，获取本月的天数
    var lastDay = now.month < 12
        ? DateTime(now.year, now.month + 1, 0)
        : DateTime(now.year + 1, 1, 0);
    percentage = now.day / lastDay.day * 100;

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('月预算', style: TextStyle(color: Colors.lightBlue.shade50)),
          centerTitle: false,
          elevation: 0.0),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0), color: Colors.lightBlue.shade600),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 8.0),
                    child: Text('¥ 2992.00',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold))),
                Text('本月结余', style: TextStyle(color: Colors.white)),
                Expanded(
                    child: CustomPaint(
                  foregroundPainter: MyCircularPainter(
                      lineColor: Colors.lightBlue.shade200,
                      completeColor: Colors.white,
                      completePercent: percentage,
                      width: 5.0),
                  child: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle, border: Border()),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('19', style: TextStyle(color: Colors.white, fontSize: 35.0)),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40.0, vertical: 4.0),
                            child: Text('剩余天数', style: TextStyle(color: Colors.white)))
                      ],
                    ),
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
