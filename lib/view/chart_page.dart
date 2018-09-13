import 'package:flutter/material.dart';
import 'package:costly/base/base_stateful_widget.dart';
import 'package:charts_flutter/flutter.dart';

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
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                    child: SliverAppBar(
                      title: Text(
                        '月图表',
                        style: TextStyle(color: Colors.lightBlue.shade50),
                      ),
                      centerTitle: false,
                      elevation: 4.0,
                      forceElevated: true,
                      actions: <Widget>[
                        IconButton(icon: Icon(Icons.filter_list), onPressed: () {})
                      ],
                      bottom: TabBar(
                          labelStyle:
                              TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                          unselectedLabelStyle:
                              TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                          unselectedLabelColor: Colors.blueGrey,
                          indicatorWeight: 3.0,
                          indicatorSize: TabBarIndicatorSize.label,
                          tabs: [Tab(text: '支出'), Tab(text: '收入'), Tab(text: '收支')]),
                    ),
                  )
                ];
              },
              body: TabBarView(children: [
                Text('ff'),
                Text('gg'),
                PieChart([
                  Series<LinearSales, int>(
                      id: 'year',
                      data: [
                        LinearSales(0, 1),
                        LinearSales(1, 2),
                        LinearSales(5, 3),
                        LinearSales(3, 4),
                      ],
                      domainFn: (LinearSales sales, _) => sales.year,
                      measureFn: (LinearSales sales, _) => sales.sales)
                ])
              ])),
        ));
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}
