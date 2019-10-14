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


void main() => runApp(Instagram());

class Instagram extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InstagramState();
  }
  // This widget is the root of your application.
  
}


class _InstagramState extends State<Instagram>{

  @override
  Widget build(BuildContext context) {
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
      home: HomeScreen()
    );
  }

  

}
