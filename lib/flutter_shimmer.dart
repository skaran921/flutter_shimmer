library flutter_shimmer;

import 'package:flutter/material.dart';

//
// **************************************CustomBoxDecoration****************************
// [animation]
// [isRectBox]
// [isDarkMode]
// [beginAlign]
// [endAlign]
//
Decoration customBoxDecoration({
  @required Animation animation,
  bool isRectBox = false,
  bool isDarkMode = false,
  AlignmentGeometry beginAlign = Alignment.topCenter,
  AlignmentGeometry endAlign = Alignment.bottomCenter,
}) {
  return BoxDecoration(
      shape: isRectBox ? BoxShape.rectangle : BoxShape.circle,
      gradient: LinearGradient(begin: beginAlign, end: endAlign, colors: [
        Color(0xfff6f7f8),
        Color(0x44CCCCCC),
        Color(0xfff6f7f8),
      ], stops: [
        animation.value - 1,
        animation.value,
        animation.value + 1
      ]));
}
//
// **************************************CustomBoxDecoration****************************
//
//

//
//  ***************************ProfileShimmer******************************
//
class ProfileShimmer extends StatefulWidget {
  @override
  _ProfileShimmerState createState() => _ProfileShimmerState();
}

class _ProfileShimmerState extends State<ProfileShimmer> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
//
//  ***************************ProfileShimmer******************************
//
