// import 'dart:html';

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
  int currentIndex = 0;

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 45,
        // elevation: 0.9,
        centerTitle: true,
        title: Text(
          'News App',
          style: TextStyle(
              color: Colors.black87,
              fontFamily: 'Nutino',
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),

        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/notification.svg',
              width: 40,
              color: Colors.black54,
              height: 25,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        leading: new IconButton(
            icon: SvgPicture.asset(
              'assets/icons/menu.svg',
              width: 40,
              color: Colors.black54,
              height: 28,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
      ),
      drawer: new Drawer(
        child: MainDrawer(),
      ),
      body: PreferredSize(
        preferredSize: null,
        child: MainButtomBar(),
      ),
    );
  }
}
