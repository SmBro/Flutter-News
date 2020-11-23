import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainButtomBar extends StatefulWidget {
  MainButtomBar({Key key}) : super(key: key);

  @override
  _MainButtomBarState createState() => _MainButtomBarState();
}

class _MainButtomBarState extends State<MainButtomBar> {
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
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8, //new
        hasNotch: true, //new
        hasInk: true, //new, gives a cute ink effect
        inkColor: Colors.black12, //optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                width: 21,
                color: Colors.black54,
                height: 21,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/home.svg',
                width: 21,
                color: Colors.black,
                height: 21,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: SvgPicture.asset(
                'assets/icons/category.svg',
                width: 21,
                color: Colors.black54,
                height: 21,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/category.svg',
                width: 21,
                color: Colors.black,
                height: 21,
              ),
              title: Text("Categories")),
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 21,
                color: Colors.black54,
                height: 21,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 21,
                color: Colors.black,
                height: 21,
              ),
              title: Text("Search")),
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: SvgPicture.asset(
                'assets/icons/bookmark.svg',
                width: 21,
                color: Colors.black54,
                height: 21,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/bookmark.svg',
                width: 21,
                color: Colors.black,
                height: 21,
              ),
              title: Text("Bookmarks")),
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/user.png')),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x5c000000),
                        offset: Offset(0, 1),
                        blurRadius: 5)
                  ],
                ),
              ),
              title: Text("Profile")),
        ],
      ),
      key: _scaffoldKey,
    );
    // appBar: AppBar(
    //     backgroundColor: Colors.white,
    //     toolbarHeight: 45,
    //     // elevation: 0.9,
    //     centerTitle: true,
    //     title: Text(
    //       'News App',
    //       style: TextStyle(
    //           color: Colors.black87,
    //           fontFamily: 'Nutino',
    //           fontSize: 30,
    //           fontWeight: FontWeight.bold),
    //     ),
    //     // iconTheme: IconThemeData(color: Colors.blue, size: 50),

    //     actions: <Widget>[
    //       IconButton(
    //         icon: SvgPicture.asset(
    //           'assets/icons/notification.svg',
    //           width: 40,
    //           color: Colors.black54,
    //           height: 25,
    //         ),
    //         onPressed: () {
    //           // do something
    //         },
    //       )
    //     ],
    //     leading: new IconButton(
    //         icon: SvgPicture.asset(
    //           'assets/icons/menu.svg',
    //           width: 40,
    //           color: Colors.black54,
    //           height: 28,
    //         ),
    //         onPressed: () => _scaffoldKey.currentState.openDrawer())),

    // ),
    // drawer: Drawer(
    //   child: MainDrawer(),
    // ),

    // );
  }
}

// class MainButtomBar extends StatefulWidget {
//   MainButtomBar({Key key}) : super(key: key);

//   @override
//   _MainBottomBarState createState() => _BottomBarState();
// }

// class _BottomBarState extends State<MainBottomBar> {

// }
