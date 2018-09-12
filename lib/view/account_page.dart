import 'package:costly/base/base_stateful_widget.dart';
import 'package:flutter/material.dart';

class AccountPage extends BaseStatefulWidget {
  @override
  IconData get iconData => Icons.account_balance;

  @override
  String get title => '资产';

  @override
  State<StatefulWidget> createState() {
    return _AccountPageState();
  }
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
//        appBar: AppBar(
//          title: Text('账户'),
//          centerTitle: false,
//          actions: <Widget>[
//            IconButton(
//                icon: Icon(Icons.add),
//                onPressed: () {
//                  print('aaa');
//                })
//          ],
//          bottom: TabBar(tabs: [Tab(text: 'aaa',), Tab(text: 'bbb',)]),
//        ),
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverOverlapAbsorber(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  child: SliverAppBar(
                    //阴影
                    elevation: 4.0,
                    forceElevated: true,
                    //标题
                    title: Text('账户'),
                    centerTitle: false,
                    //右侧按钮
                    actions: <Widget>[
                      IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            print('aaa');
                          })
                    ],
                    //标题栏导航
                    bottom: TabBar(
                        labelStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        unselectedLabelStyle:
                            TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                        unselectedLabelColor: Colors.blueGrey,
                        indicatorWeight: 3.0,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: [Tab(text: '资产'), Tab(text: '负债')]),
                  ),
                )
              ];
            },
            body: TabBarView(children: [
              ListView(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                children: <Widget>[AccountItem(), AccountItem()],
              ),
              ListView(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                children: <Widget>[AccountItem(), AccountItem(), AccountItem()],
              )
            ])),
      ),
    );
  }
}

class AccountItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightBlue.shade600,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //标题
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 4.0, bottom: 4.0),
                  child: Text(
                    '现金',
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                ),
                //结余
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '结余',
                        style: TextStyle(color: Colors.white),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            '0.00',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                //月花
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '月花',
                        style: TextStyle(color: Colors.white),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            '8.00',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.credit_card,
              size: 40.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
