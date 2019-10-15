import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_instagram/shared/colors.dart';
import 'package:flutter_instagram/shared/screen.dart';

class DirectScreen extends StatelessWidget{
  
  Function goBack;

  DirectScreen({this.goBack});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Ionicons.getIconData("md-arrow-back"),
                color: Theme.of(context).iconTheme.color,
                size: height(percent: "3.8%", context: context),
              ),
              onPressed: goBack,
            ),
            Text("Direct")
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Ionicons.getIconData("ios-add"),
              color: Theme.of(context).iconTheme.color,
              size: height(percent: "4%", context: context),
            ),
            onPressed: (){},
          ),
        ],
      ),
    );
  }

}