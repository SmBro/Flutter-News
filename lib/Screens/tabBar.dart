import 'package:flutter/material.dart';
import 'package:tabbar/tabbar.dart';

class MainTabBar extends StatefulWidget {
  MainTabBar({Key key}) : super(key: key);

  @override
  _MainTabBarState createState() => _MainTabBarState();
}

class _MainTabBarState extends State<MainTabBar> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: TabbarHeader(
            controller: controller,
            tabs: [
              Tab(child: Icon(Icons.ac_unit)),
              Tab(text: "Tab 2"),
              Tab(child: Icon(Icons.access_alarm)),
            ],
          ),
        ),
      ),
      body: TabbarContent(
        controller: controller,
        children: <Widget>[
          Container(color: Colors.yellow),
          Container(color: Colors.red),
          Container(color: Colors.purple),
        ],
      ),
    );
  }
}
