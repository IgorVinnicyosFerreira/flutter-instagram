import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ColorsInstagram {

  static Color white = new Color(0xffFFFFFF);

  static Color whiteSecundary = new Color(0xffFAFAFA);

  static Color black = new Color(0xff000000);

  static Color blue =  new Color(0xff49A0F1);

  static Color pink = new Color(0xffD9328E);


  static Map<int, Color> _primarySwatchMap = {
    50: white,
    100: white,
    200: white,
    300: white,
    400: white,
    500: white,
    600: white,
    700: white,
    800: white,
    900: white
  };

  static MaterialColor primarySwatch = MaterialColor(0xffFFFFFF, _primarySwatchMap);
}