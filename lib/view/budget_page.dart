import 'package:flutter/material.dart';
import 'package:costly/base/base_stateful_widget.dart';

class BudgetPage extends BaseStatefulWidget {
  @override
  IconData get iconData => Icons.monetization_on;

  @override
  String get title => '预算';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BudgetPageState();
  }
}

class _BudgetPageState extends State<BudgetPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          '月预算',
          style: TextStyle(color: Colors.lightBlue.shade50),
        ),
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: Colors.lightBlue.shade600,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 8.0),
                  child: Text(
                    '¥ 2992.00',
                    style:
                        TextStyle(color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '本月结余',
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(
                    child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle, border: Border()),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 4.0),
                            child: Text(
                              '本月剩余',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Text(
                            '19天',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 80.0,
                        height: 80.0,
                        child: CustomPaint(
                          painter: CircularProgress(),
                        ))
                  ],
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CircularProgress extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawArc(Offset.zero & size, -1.0, 2.0, true, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
