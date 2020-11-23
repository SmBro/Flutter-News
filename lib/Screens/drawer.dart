import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1594616838951-c155f8d978a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Snehashis ",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0)),
                  TextSpan(
                      text: "Mukherjee",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0)),
                ]),
              ),
              // Text(
              //   "Snehashis Mukherjee",
              //   style: TextStyle(
              //     fontSize: 22.0,
              //     fontWeight: FontWeight.w800,
              //   ),
              // ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Software Engenieer",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Divider(
                color: Colors.black,
                height: 30,
                thickness: 2,
                indent: 0,
                endIndent: 0,
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 0.0,
      ),
      // Text(
      //   "Operations",
      //   style: TextStyle(
      //       fontSize: 15, color: Colors.indigo, fontWeight: FontWeight.bold),
      // ),
      //Now let's Add the button for the Menu
      //and let's copy that and modify it
      ListTile(
        onTap: () {},
        leading: new IconButton(
            icon: SvgPicture.asset(
              'assets/icons/category.svg',
              width: 20,
              color: Colors.black,
              height: 20,
            ),
            onPressed: null),
        title: Text("Categories"),
      ),

      ListTile(
        onTap: () {},
        leading: new IconButton(
            icon: SvgPicture.asset(
              'assets/icons/bookmark.svg',
              width: 20,
              color: Colors.black,
              height: 20,
            ),
            onPressed: null),
        title: Text("Saved Posts"),
      ),

      ListTile(
        onTap: () {},
        leading: new IconButton(
            icon: SvgPicture.asset(
              'assets/icons/night-mode.svg',
              width: 25,
              color: Colors.black,
              height: 25,
            ),
            onPressed: null),
        title: Text("Dark Mode"),
      ),

      ListTile(
        onTap: () {},
        leading: new IconButton(
            icon: SvgPicture.asset(
              'assets/icons/settings.svg',
              width: 20,
              color: Colors.black,
              height: 20,
            ),
            onPressed: null),
        title: Text("Settings"),
      ),
      const Divider(
        color: Colors.black,
        height: 10,
        thickness: 2,
        indent: 0,
        endIndent: 0,
      ),
      ListTile(
        onTap: () {},
        leading: new IconButton(
            icon: SvgPicture.asset(
              'assets/icons/question.svg',
              width: 25,
              color: Colors.black,
              height: 25,
            ),
            onPressed: null),
        title: Text("About Us"),
      ),
      ListTile(
        onTap: () {},
        leading: new IconButton(
            icon: SvgPicture.asset(
              'assets/icons/communicate.svg',
              width: 23,
              color: Colors.black,
              height: 22,
            ),
            onPressed: null),
        title: Text("Contact"),
      ),
      ListTile(
        onTap: () {},
        leading: new IconButton(
            icon: SvgPicture.asset(
              'assets/icons/rating.svg',
              width: 25,
              color: Colors.black,
              height: 25,
            ),
            onPressed: null),
        title: Text("Rating"),
      ),
      ListTile(
        onTap: () {},
        leading: new IconButton(
            icon: SvgPicture.asset(
              'assets/icons/share.svg',
              width: 25,
              color: Colors.black,
              height: 25,
            ),
            onPressed: null),
        title: Text("Share This App"),
      ),
      ListTile(
        onTap: () {},
        leading: new IconButton(
            icon: SvgPicture.asset(
              'assets/icons/play-store.svg',
              width: 25,
              color: Colors.black,
              height: 25,
            ),
            onPressed: null),
        title: Text("More Apps"),
      ),
    ]);
  }
}
