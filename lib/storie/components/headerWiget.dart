import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_instagram/shared/colors.dart';
import 'package:flutter_instagram/shared/screen.dart';

class HeaderWidget extends StatelessWidget {
  Function goBack;

  HeaderWidget({ this.goBack });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Ionicons.getIconData("ios-settings"),
              color: ColorsInstagram.white,
              size: height(percent: "4.5%", context: context),
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(
              Ionicons.getIconData("ios-flash"),
              color: ColorsInstagram.white,
              size: height(percent: "4.5%", context: context),
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(
              Ionicons.getIconData("ios-close"),
              color: ColorsInstagram.white,
              size: height(percent: "4.5%", context: context),
            ),
            onPressed: goBack,
          ),
        ],
      ),
    );
  }
}