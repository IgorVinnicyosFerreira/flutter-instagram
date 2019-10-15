import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_instagram/direct/directScreen.dart';
import 'package:flutter_instagram/shared/screen.dart';

class HomeScreen extends StatefulWidget {

  Function onDirectClick;
  Function onStorieClick;

  HomeScreen({this.onDirectClick, this.onStorieClick});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }

}

class _HomeScreen extends State<HomeScreen>{
 
  

  @override
  Widget build(BuildContext context) {
    return home();
       
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
              onPressed: this.widget.onStorieClick,
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
            onPressed: this.widget.onDirectClick            
          ),
        ],
      ),
      
    );
  }
}