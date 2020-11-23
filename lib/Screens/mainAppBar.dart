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
    return DefaultTabController(
      length: 7,
      child: Scaffold(
          // key: _scaffoldKey,
          appBar: AppBar(
              // backgroundColor: Colors.white,
              centerTitle: true,
              // leading: Icon(Icons.person_outline),
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
              title: Text(
                'News App',
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Nutino',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              key: _scaffoldKey,
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
                        ),
                        Tab(
                          child: Text('Tab 20'),
                        )
                      ]),
                  preferredSize: Size.fromHeight(30.0)),
              // actions: <Widget>[
              //   Padding(
              //     padding: const EdgeInsets.only(right: 16.0),
              //     child: Icon(Icons.add_alert),
              //   ),
              // ],
              leading: new IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/menu.svg',
                    width: 40,
                    color: Colors.black54,
                    height: 28,
                  ),
                  onPressed: () => _scaffoldKey.currentState.openDrawer())),
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
                  child: Text('Tab 20'),
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
          )),
    );
  }
}
