import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_instagram/activity/activityScreen.dart';
import 'package:flutter_instagram/direct/directScreen.dart';
import 'package:flutter_instagram/post/postScreen.dart';
import 'package:flutter_instagram/profile/profileScreen.dart';
import 'package:flutter_instagram/search/searchScreen.dart';
import 'package:flutter_instagram/shared/animations/slideLeftRoute.dart';
import 'package:flutter_instagram/shared/animations/slideRightRoute.dart';
import 'package:flutter_instagram/shared/components/bottomNavigator.dart';
import 'package:flutter_instagram/shared/screen.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }

}

class _HomeScreen extends State<HomeScreen>{
 
  final controller = PageController(
    initialPage: 0
  );

  int _currentMenuIndex = 0;
  final List<Widget> _menuScreens = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    ActivityScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,

      children: <Widget>[
        home(),
        DirectScreen()
      ],
    );
  }
 
  Widget home(){
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                MaterialCommunityIcons.getIconData("camera-outline"),
                color: Theme.of(context).iconTheme.color,
                size: height(percent: "4%",context: context),
              ),
            ),
            Text(
              "Instagram", 
              style: TextStyle(
                  fontFamily: "Billabong",
                  fontSize: height(percent: "4.2%", context: context)
                ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesome.getIconData("tv"),
              color: Theme.of(context).iconTheme.color,
              size: height(percent: "3.5%", context: context)
            ),
          ),
          IconButton(
            icon: Icon(
              FontAwesome.getIconData("paper-plane-o"),
              color: Theme.of(context).iconTheme.color,
              size: height(percent: "3.5%", context: context)
            ),
            onPressed: () => {}            
          ),
        ],
      ),
      body: _menuScreens[_currentMenuIndex],
      bottomNavigationBar: BottomNavigatorWidget(
          currentMenuIndex: _currentMenuIndex,
          onTabTapped: onTabTapped,
        )
    );
  }

  onTabTapped(int index){
    setState(() {
      _currentMenuIndex = index; 
    });
  }
}