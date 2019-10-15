import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_instagram/activity/activityScreen.dart';
import 'package:flutter_instagram/direct/directScreen.dart';
import 'package:flutter_instagram/home/homeScreen.dart';
import 'package:flutter_instagram/post/postScreen.dart';
import 'package:flutter_instagram/profile/profileScreen.dart';
import 'package:flutter_instagram/search/searchScreen.dart';
import 'package:flutter_instagram/shared/colors.dart';
import 'package:flutter_instagram/shared/components/bottomNavigator.dart';
import 'package:flutter_instagram/shared/screen.dart';
import 'package:flutter_instagram/storie/storieScreen.dart';


void main()  => runApp(Instagram());

class Instagram extends StatefulWidget {
  
  CameraDescription camera;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InstagramState();
  }
  
}


class _InstagramState extends State<Instagram>{

  int _currentMenuIndex = 0;
  bool _bottomNavigatorVisible = true;

  final controller = PageController(
    initialPage: 1,
  );
  
  final StorieScreen storieScreen = StorieScreen();

  final DirectScreen directScreen = DirectScreen();
  
  @override
  Widget build(BuildContext context) {

    List<Widget> _menuScreens = [
      HomeScreen(onDirectClick: nextPageView, onStorieClick: previousPageView),
      SearchScreen(),
      PostScreen(),
      ActivityScreen(),
      ProfileScreen()
    ];

    bool isHomePage = instanceOfHome(_menuScreens[_currentMenuIndex]);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
  
        iconTheme: IconThemeData(
          color: ColorsInstagram.black,
         
        ),
        primarySwatch: ColorsInstagram.primarySwatch,
        
        appBarTheme: AppBarTheme(
          color: ColorsInstagram.whiteSecundary,
        ),   
      ),
      routes: {
        'direct': (context) => DirectScreen()
      },
      home: PageView(
        controller: controller,
        physics: !isHomePage ? NeverScrollableScrollPhysics() : null,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          storieScreen,
          Scaffold(
            body: _menuScreens[_currentMenuIndex],
            bottomNavigationBar:  BottomNavigatorWidget(
              currentMenuIndex: _currentMenuIndex,
              onTabTapped: onTabTapped,
            )
          ),
          DirectScreen(goBack: previousPageView,) 
        ] ,
      )
    );
  }

  onTabTapped(int index){
    setState(() {
      _currentMenuIndex = index; 
    });
  }

  nextPageView(){
    controller.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn
    );
  }

  previousPageView(){
    controller.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn
    );
  }

  bool instanceOfHome(Widget page){
    
    if(page is HomeScreen) 
      return true;

    return false;
  }
}
