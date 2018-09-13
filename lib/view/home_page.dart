import 'package:flutter/material.dart';
import 'account_page.dart';
import 'budget_page.dart';
import 'daily_page.dart';
import 'chart_page.dart';
import 'setting_page.dart';
import 'package:costly/base/base_stateful_widget.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final _pages = <BaseStatefulWidget>[
    AccountPage(),
    BudgetPage(),
    DailyPage(),
    ChartPage(),
    SettingPage()
  ];

  var _curIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> bottomItems = _pages.map((page) {
      return BottomNavigationBarItem(icon: Icon(page.iconData), title: Text(page.title));
    }).toList();

    return Scaffold(
      body: _pages[_curIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _curIndex,
        items: bottomItems,
        onTap: (index) {
          setState(() {
            _curIndex = index;
          });
        },
      ),
    );
  }
}
