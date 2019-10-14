
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_instagram/shared/screen.dart';


import '../colors.dart';

class BottomNavigatorWidget extends StatelessWidget{

  BottomNavigatorWidget({ @required this.currentMenuIndex, @required this.onTabTapped });

  int currentMenuIndex;
  Function onTabTapped;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentMenuIndex,
          onTap: onTabTapped,
          selectedItemColor: ColorsInstagram.black,
          unselectedItemColor: ColorsInstagram.black,
          //fixedColor: ColorsInstagram.blue,
          iconSize: height(percent: "4.5%",context: context),
           
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(MaterialCommunityIcons.getIconData("home-outline")),
              activeIcon: Icon(MaterialCommunityIcons.getIconData("home")),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(MaterialCommunityIcons.getIconData("magnify")),
              activeIcon: Icon(MaterialCommunityIcons.getIconData("magnify")),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(MaterialCommunityIcons.getIconData("plus-box-outline")),
              activeIcon: Icon(MaterialCommunityIcons.getIconData("plus-box")),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(MaterialCommunityIcons.getIconData("heart-outline")),
              activeIcon: Icon(MaterialCommunityIcons.getIconData("heart")),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(MaterialCommunityIcons.getIconData("account-outline")),
              activeIcon: Icon(MaterialCommunityIcons.getIconData("account")),
              title: Text("")
            ),            
          ],
    );
  }

}