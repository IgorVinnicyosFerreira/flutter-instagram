import 'package:flutter/material.dart';
import 'package:flutter_instagram/shared/colors.dart';
import 'package:flutter_instagram/shared/screen.dart';

class CaptureWidget extends StatelessWidget {
  const CaptureWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(percent: "10%", context: context),
      width: height(percent: "10%", context: context),
      decoration: BoxDecoration(
        color: ColorsInstagram.white,
        borderRadius: BorderRadius.all(Radius.circular(height(percent: "10%", context: context)/2)),
      ),
      child: Center(
        child: Container(
          height: height(percent: "9%", context: context),
          width: height(percent: "9%", context: context),      
          decoration: BoxDecoration(
            color: ColorsInstagram.white,
            borderRadius: BorderRadius.all(Radius.circular(height(percent: "9%", context: context)/2)),
            border: Border.all(
              color: ColorsInstagram.black,
              width: height(percent: "0.3%", context: context)
            )
          ),
        ),
      ),
    );
  }
}