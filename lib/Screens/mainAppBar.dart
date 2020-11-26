// import 'dart:html';

import 'package:News_app/Screens/tabBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'bottombar.dart';
import 'package:News_app/Screens/drawer.dart';

class MainAppBar extends StatefulWidget {
  MainAppBar({Key key}) : super(key: key);

  @override
  _MainAppBarState createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.person_outline),
          title: Text(
            'DASHBOARD',
            style: TextStyle(fontSize: 16.0),
          ),
          bottom: PreferredSize(
              child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.white.withOpacity(0.3),
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      child: Text('Tab 1'),
                    ),
                    Tab(
                      child: Text('Investment'),
                    ),
                    Tab(
                      child: Text('Your Earning'),
                    ),
                    Tab(
                      child: Text('Current Balance'),
                    ),
                    Tab(
                      child: Text('Tab 5'),
                    ),
                    Tab(
                      child: Text('Tab 6'),
                    )
                  ]),
              preferredSize: Size.fromHeight(30.0)),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(Icons.add_alert),
            ),
          ],
        ),
        drawer: new Drawer(
          child: MainDrawer(),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Center(
                child: Text('Tab 1'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 2'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 3'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 4'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 5'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 6'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
