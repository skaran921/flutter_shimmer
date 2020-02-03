library flutter_shimmer;

import 'package:flutter/material.dart';

// ************************************DefultColorsList*************************
const List<Color> defultColors = [
  Color.fromRGBO(0, 0, 0, 0.1),
  Color(0x44CCCCCC),
  Color.fromRGBO(0, 0, 0, 0.1)
];
// ************************************DefultColorsList*************************

//
// **************************************buildButtomBox**********************************
//
Widget buildButtomBox(Animation _animation,
    {@required double width,
    @required double height,
    @required bool isDarkMode,
    @required bool isRectBox,
    @required bool isPurplishMode,
    @required AlignmentGeometry beginAlign,
    @required AlignmentGeometry endAlign,
    @required bool hasCustomColors,
    @required List<Color> colors,
    bool isVideoShimmer = false}) {
  return Container(
    margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
    height: isVideoShimmer ? width * 0.2 : width * 0.2,
    width: isVideoShimmer ? width * 0.25 : width * 0.2,
    decoration: customBoxDecoration(
        animation: _animation,
        isDarkMode: isDarkMode,
        isPurplishMode: isPurplishMode,
        isRectBox: isRectBox,
        beginAlign: beginAlign,
        endAlign: endAlign,
        hasCustomColors: hasCustomColors,
        colors: colors.length == 3 ? colors : defultColors),
  );
}
//
// **************************************buildButtomBox**********************************
//

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
  bool isPurplishMode = false,
  bool hasCustomColors = false,
  List<Color> colors = defultColors,
  AlignmentGeometry beginAlign = Alignment.topLeft,
  AlignmentGeometry endAlign = Alignment.bottomRight,
}) {
  return BoxDecoration(
      shape: isRectBox ? BoxShape.rectangle : BoxShape.circle,
      gradient: LinearGradient(
          begin: beginAlign,
          end: endAlign,
          colors: hasCustomColors
              ? colors.map((color) {
                  return color;
                }).toList()
              : [
                  isPurplishMode
                      ? Color(0xFF8D71A9)
                      : isDarkMode
                          ? Color(0xFF1D1D1D)
                          : Color.fromRGBO(0, 0, 0, 0.1),
                  isPurplishMode
                      ? Color(0xFF36265A)
                      : isDarkMode ? Color(0XFF3C4042) : Color(0x44CCCCCC),
                  isPurplishMode
                      ? Color(0xFF8D71A9)
                      : isDarkMode
                          ? Color(0xFF1D1D1D)
                          : Color.fromRGBO(0, 0, 0, 0.1),
                ],
          stops: [animation.value - 2, animation.value, animation.value + 1]));
}
//
// **************************************CustomBoxDecoration****************************
//
//

//
// **************************************CustomBoxDecoration****************************
// [animation]
// [isDarkMode]
// [beginAlign]
// [endAlign]
//
Decoration radiusBoxDecoration({
  @required Animation animation,
  bool isDarkMode = false,
  bool isPurplishMode = false,
  bool hasCustomColors = false,
  AlignmentGeometry beginAlign = Alignment.topLeft,
  AlignmentGeometry endAlign = Alignment.bottomRight,
  List<Color> colors = defultColors,
}) {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      shape: BoxShape.rectangle,
      gradient: LinearGradient(
          begin: beginAlign,
          end: endAlign,
          colors: hasCustomColors
              ? colors.map((color) {
                  return color;
                }).toList()
              : [
                  isPurplishMode
                      ? Color(0xFF8D71A9)
                      : isDarkMode
                          ? Color(0xFF1D1D1D)
                          : Color.fromRGBO(0, 0, 0, 0.1),
                  isPurplishMode
                      ? Color(0xFF36265A)
                      : isDarkMode ? Color(0XFF3C4042) : Color(0x44CCCCCC),
                  isPurplishMode
                      ? Color(0xFF8D71A9)
                      : isDarkMode
                          ? Color(0xFF1D1D1D)
                          : Color.fromRGBO(0, 0, 0, 0.1),
                ],
          stops: [animation.value - 2, animation.value, animation.value + 1]));
}
//
// **************************************CustomBoxDecoration****************************
//
//

//
//  ***************************ProfileShimmer******************************
// *[isRectBox] when it is true then it will show Rectancle shape else(false) show circle shape by defult its value false
// *[isDarkMode]when it is true then it will use black bg color otherwise it use transparent color by defult its value false
// *[beginAlign] it will set the begin value for gradientColor by defult its value Alignment.topLeft
// *[endAlign]   it will set the end value for gradientColor by defult its value Alignment.bottomRight
// *[hasBottomLines] when it is true then it will show bottom lines otherwise its hide the lines by defult its value false
// *[padding] it wiil set the padding of parent container by default its value 16.0 from all side(left,right,top,bottom)
// *[margin] it wiil set the margin of parent container by default its value 16.0 from all side(left,right,top,bottom)
//
//
//
class ProfileShimmer extends StatefulWidget {
  final bool isRectBox;
  final bool isDarkMode;
  final bool isPurplishMode;
  final bool hasCustomColors;
  final List<Color> colors;
  final AlignmentGeometry beginAlign;
  final AlignmentGeometry endAlign;
  final bool hasBottomLines;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  const ProfileShimmer({
    Key key,
    this.isRectBox = false,
    this.isDarkMode = false,
    this.beginAlign = Alignment.topLeft,
    this.endAlign = Alignment.bottomRight,
    this.hasBottomLines = false,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = const EdgeInsets.all(16.0),
    this.isPurplishMode = false,
    this.hasCustomColors = false,
    this.colors = defultColors,
  }) : super(key: key);
  @override
  _ProfileShimmerState createState() => _ProfileShimmerState();
}

class _ProfileShimmerState extends State<ProfileShimmer>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  // ****************************init*************************
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this)
          ..repeat();
    _animation = Tween<double>(begin: -2, end: 2).animate(CurvedAnimation(
        curve: Curves.easeInOutSine, parent: _animationController));
  }
  // ****************************init*************************

  // *****************************dispose************************
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // *****************************dispose************************
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget child) {
        return Container(
          margin: widget.margin,
          padding: widget.padding,
          color: widget.isDarkMode ? Color(0xFF0B0B0B) : Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: width * 0.14,
                    width: width * 0.14,
                    decoration: customBoxDecoration(
                        animation: _animation,
                        isRectBox: widget.isRectBox,
                        isPurplishMode: widget.isPurplishMode,
                        isDarkMode: widget.isDarkMode,
                        hasCustomColors: widget.hasCustomColors,
                        colors: widget.colors.length == 3
                            ? widget.colors
                            : defultColors),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: width * 0.13,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: height * 0.008,
                          width: width * 0.3,
                          decoration: radiusBoxDecoration(
                              animation: _animation,
                              isPurplishMode: widget.isPurplishMode,
                              isDarkMode: widget.isDarkMode,
                              hasCustomColors: widget.hasCustomColors,
                              colors: widget.colors.length == 3
                                  ? widget.colors
                                  : defultColors),
                        ),
                        Container(
                          height: height * 0.006,
                          width: width * 0.2,
                          decoration: radiusBoxDecoration(
                              animation: _animation,
                              isPurplishMode: widget.isPurplishMode,
                              isDarkMode: widget.isDarkMode,
                              hasCustomColors: widget.hasCustomColors,
                              colors: widget.colors.length == 3
                                  ? widget.colors
                                  : defultColors),
                        ),
                        Container(
                          height: height * 0.007,
                          width: width * 0.4,
                          decoration: radiusBoxDecoration(
                              animation: _animation,
                              isPurplishMode: widget.isPurplishMode,
                              isDarkMode: widget.isDarkMode,
                              hasCustomColors: widget.hasCustomColors,
                              colors: widget.colors.length == 3
                                  ? widget.colors
                                  : defultColors),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              widget.hasBottomLines
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          height: height * 0.006,
                          width: width * 0.7,
                          decoration: radiusBoxDecoration(
                              animation: _animation,
                              isPurplishMode: widget.isPurplishMode,
                              isDarkMode: widget.isDarkMode,
                              hasCustomColors: widget.hasCustomColors,
                              colors: widget.colors.length == 3
                                  ? widget.colors
                                  : defultColors),
                        ),
                        Container(
                          height: height * 0.006,
                          width: width * 0.8,
                          decoration: radiusBoxDecoration(
                              animation: _animation,
                              isPurplishMode: widget.isPurplishMode,
                              isDarkMode: widget.isDarkMode,
                              hasCustomColors: widget.hasCustomColors,
                              colors: widget.colors.length == 3
                                  ? widget.colors
                                  : defultColors),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: height * 0.006,
                          width: width * 0.5,
                          decoration: radiusBoxDecoration(
                              animation: _animation,
                              isPurplishMode: widget.isPurplishMode,
                              isDarkMode: widget.isDarkMode,
                              hasCustomColors: widget.hasCustomColors,
                              colors: widget.colors.length == 3
                                  ? widget.colors
                                  : defultColors),
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
        );
      },
    );
  }
}
//
//  ***************************ProfileShimmer******************************
//

//
//  ***************************ProfilePageShimmer******************************
// *[isRectBox] when it is true then it will show Rectancle shape else(false) show circle shape by defult its value false
// *[isDarkMode]when it is true then it will use black bg color otherwise it use transparent color by defult its value false
// *[beginAlign] it will set the begin value for gradientColor by defult its value Alignment.topLeft
// *[endAlign]   it will set the end value for gradientColor by defult its value Alignment.bottomRight
// *[hasBottomBox] when it is true then it will show bottom Rect style Boxes otherwise its hide the Boxes by defult its value false
// *[padding] it wiil set the padding of parent container by default its value 16.0 from all side(left,right,top,bottom)
// *[margin] it wiil set the margin of parent container by default its value 16.0 from all side(left,right,top,bottom)
//
//
//
class ProfilePageShimmer extends StatefulWidget {
  final bool isRectBox;
  final bool isDarkMode;
  final bool isPurplishMode;
  final AlignmentGeometry beginAlign;
  final AlignmentGeometry endAlign;
  final bool hasBottomBox;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final bool hasCustomColors;
  final List<Color> colors;
  const ProfilePageShimmer({
    Key key,
    this.isRectBox = false,
    this.isDarkMode = false,
    this.beginAlign = Alignment.topLeft,
    this.endAlign = Alignment.bottomRight,
    this.hasBottomBox = false,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = const EdgeInsets.all(16.0),
    this.isPurplishMode = false,
    this.hasCustomColors = false,
    this.colors = defultColors,
  }) : super(key: key);
  @override
  _ProfilePageShimmerState createState() => _ProfilePageShimmerState();
}

class _ProfilePageShimmerState extends State<ProfilePageShimmer>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  // ****************************init*************************
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this)
          ..repeat();
    _animation = Tween<double>(begin: -2, end: 2).animate(CurvedAnimation(
        curve: Curves.easeInOutSine, parent: _animationController));
  }
  // ****************************init*************************

  // *****************************dispose************************
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // *****************************dispose************************
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget child) {
        return Container(
          margin: widget.margin,
          padding: widget.padding,
          color: widget.isDarkMode ? Color(0xFF0B0B0B) : Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildButtomBox(_animation,
                  height: width,
                  width: width,
                  isPurplishMode: widget.isPurplishMode,
                  isDarkMode: widget.isDarkMode,
                  isRectBox: widget.isRectBox,
                  beginAlign: widget.beginAlign,
                  endAlign: widget.endAlign,
                  hasCustomColors: widget.hasCustomColors,
                  colors:
                      widget.colors.length == 3 ? widget.colors : defultColors),
              Container(
                height: height * 0.006,
                width: width * 0.8,
                decoration: radiusBoxDecoration(
                    animation: _animation,
                    isPurplishMode: widget.isPurplishMode,
                    isDarkMode: widget.isDarkMode,
                    hasCustomColors: widget.hasCustomColors,
                    colors: widget.colors.length == 3
                        ? widget.colors
                        : defultColors),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: height * 0.006,
                width: width * 0.5,
                decoration: radiusBoxDecoration(
                    animation: _animation,
                    isPurplishMode: widget.isPurplishMode,
                    isDarkMode: widget.isDarkMode,
                    hasCustomColors: widget.hasCustomColors,
                    colors: widget.colors.length == 3
                        ? widget.colors
                        : defultColors),
              ),
              widget.hasBottomBox
                  ? Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            buildButtomBox(_animation,
                                height: width,
                                width: width,
                                isPurplishMode: widget.isPurplishMode,
                                isDarkMode: widget.isDarkMode,
                                isRectBox: true,
                                beginAlign: widget.beginAlign,
                                endAlign: widget.endAlign,
                                hasCustomColors: widget.hasCustomColors,
                                colors: widget.colors.length == 3
                                    ? widget.colors
                                    : defultColors),
                            buildButtomBox(_animation,
                                height: width,
                                width: width,
                                isPurplishMode: widget.isPurplishMode,
                                isDarkMode: widget.isDarkMode,
                                isRectBox: true,
                                beginAlign: widget.beginAlign,
                                endAlign: widget.endAlign,
                                hasCustomColors: widget.hasCustomColors,
                                colors: widget.colors.length == 3
                                    ? widget.colors
                                    : defultColors),
                            buildButtomBox(_animation,
                                height: width,
                                width: width,
                                isPurplishMode: widget.isPurplishMode,
                                isDarkMode: widget.isDarkMode,
                                isRectBox: true,
                                beginAlign: widget.beginAlign,
                                endAlign: widget.endAlign,
                                hasCustomColors: widget.hasCustomColors,
                                colors: widget.colors.length == 3
                                    ? widget.colors
                                    : defultColors),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            buildButtomBox(_animation,
                                height: width,
                                width: width,
                                isPurplishMode: widget.isPurplishMode,
                                isDarkMode: widget.isDarkMode,
                                isRectBox: true,
                                beginAlign: widget.beginAlign,
                                endAlign: widget.endAlign,
                                hasCustomColors: widget.hasCustomColors,
                                colors: widget.colors.length == 3
                                    ? widget.colors
                                    : defultColors),
                            buildButtomBox(_animation,
                                height: width,
                                width: width,
                                isPurplishMode: widget.isPurplishMode,
                                isDarkMode: widget.isDarkMode,
                                isRectBox: true,
                                beginAlign: widget.beginAlign,
                                endAlign: widget.endAlign,
                                hasCustomColors: widget.hasCustomColors,
                                colors: widget.colors.length == 3
                                    ? widget.colors
                                    : defultColors),
                            buildButtomBox(_animation,
                                height: width,
                                width: width,
                                isPurplishMode: widget.isPurplishMode,
                                isDarkMode: widget.isDarkMode,
                                isRectBox: true,
                                beginAlign: widget.beginAlign,
                                endAlign: widget.endAlign,
                                hasCustomColors: widget.hasCustomColors,
                                colors: widget.colors.length == 3
                                    ? widget.colors
                                    : defultColors),
                          ],
                        )
                      ],
                    )
                  : Container(),
            ],
          ),
        );
      },
    );
  }
}
//
//  ***************************ProfilePageShimmer******************************
//

//
//  ***************************VideoShimmer******************************
// *[isRectBox] when it is true then it will show Rectancle shape else(false) show circle shape by defult its value false
// *[isDarkMode]when it is true then it will use black bg color otherwise it use transparent color by defult its value false
// *[beginAlign] it will set the begin value for gradientColor by defult its value Alignment.topLeft
// *[endAlign]   it will set the end value for gradientColor by defult its value Alignment.bottomRight
// *[hasBottomBox] when it is true then it will show bottom Rect style Boxes otherwise its hide the Boxes by defult its value false
// *[padding] it wiil set the padding of parent container by default its value 16.0 from all side(left,right,top,bottom)
// *[margin] it wiil set the margin of parent container by default its value 16.0 from all side(left,right,top,bottom)
//
//
//
class VideoShimmer extends StatefulWidget {
  final bool isRectBox;
  final bool isDarkMode;
  final bool isPurplishMode;
  final AlignmentGeometry beginAlign;
  final AlignmentGeometry endAlign;
  final bool hasBottomBox;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final bool hasCustomColors;
  final List<Color> colors;
  const VideoShimmer({
    Key key,
    this.isRectBox = false,
    this.isDarkMode = false,
    this.beginAlign = Alignment.topLeft,
    this.endAlign = Alignment.bottomRight,
    this.hasBottomBox = false,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = const EdgeInsets.all(16.0),
    this.isPurplishMode = false,
    this.hasCustomColors = false,
    this.colors = defultColors,
  }) : super(key: key);
  @override
  _VideoShimmerState createState() => _VideoShimmerState();
}

class _VideoShimmerState extends State<VideoShimmer>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  // ****************************init*************************
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this)
          ..repeat();
    _animation = Tween<double>(begin: -2, end: 2).animate(CurvedAnimation(
        curve: Curves.easeInOutSine, parent: _animationController));
  }
  // ****************************init*************************

  // *****************************dispose************************
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // *****************************dispose************************
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget child) {
        return Container(
          margin: widget.margin,
          padding: widget.padding,
          color: widget.isDarkMode ? Color(0xFF0B0B0B) : Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildButtomBox(_animation,
                          height: width,
                          width: width,
                          isPurplishMode: widget.isPurplishMode,
                          isDarkMode: widget.isDarkMode,
                          isRectBox: true,
                          beginAlign: widget.beginAlign,
                          endAlign: widget.endAlign,
                          isVideoShimmer: true,
                          hasCustomColors: widget.hasCustomColors,
                          colors: widget.colors.length == 3
                              ? widget.colors
                              : defultColors),
                      Container(
                        height: height * 0.006,
                        width: width * 0.2,
                        decoration: radiusBoxDecoration(
                            animation: _animation,
                            isPurplishMode: widget.isPurplishMode,
                            isDarkMode: widget.isDarkMode,
                            hasCustomColors: widget.hasCustomColors,
                            colors: widget.colors.length == 3
                                ? widget.colors
                                : defultColors),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      buildButtomBox(_animation,
                          height: width,
                          width: width,
                          isPurplishMode: widget.isPurplishMode,
                          isDarkMode: widget.isDarkMode,
                          isRectBox: true,
                          beginAlign: widget.beginAlign,
                          endAlign: widget.endAlign,
                          isVideoShimmer: true,
                          hasCustomColors: widget.hasCustomColors,
                          colors: widget.colors.length == 3
                              ? widget.colors
                              : defultColors),
                      Container(
                        height: height * 0.006,
                        width: width * 0.2,
                        decoration: radiusBoxDecoration(
                            animation: _animation,
                            isPurplishMode: widget.isPurplishMode,
                            isDarkMode: widget.isDarkMode,
                            hasCustomColors: widget.hasCustomColors,
                            colors: widget.colors.length == 3
                                ? widget.colors
                                : defultColors),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      buildButtomBox(_animation,
                          height: width,
                          width: width,
                          isPurplishMode: widget.isPurplishMode,
                          isDarkMode: widget.isDarkMode,
                          isRectBox: true,
                          beginAlign: widget.beginAlign,
                          endAlign: widget.endAlign,
                          isVideoShimmer: true,
                          hasCustomColors: widget.hasCustomColors,
                          colors: widget.colors.length == 3
                              ? widget.colors
                              : defultColors),
                      Container(
                        height: height * 0.006,
                        width: width * 0.2,
                        decoration: radiusBoxDecoration(
                            animation: _animation,
                            isPurplishMode: widget.isPurplishMode,
                            isDarkMode: widget.isDarkMode,
                            hasCustomColors: widget.hasCustomColors,
                            colors: widget.colors.length == 3
                                ? widget.colors
                                : defultColors),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
//
//  ***************************VideoShimmer******************************
//

//  ***************************VideoShimmer******************************
// *[isRectBox] when it is true then it will show Rectancle shape else(false) show circle shape by defult its value false
// *[isDarkMode]when it is true then it will use black bg color otherwise it use transparent color by defult its value false
// *[beginAlign] it will set the begin value for gradientColor by defult its value Alignment.topLeft
// *[endAlign]   it will set the end value for gradientColor by defult its value Alignment.bottomRight
// *[hasBottomBox] when it is true then it will show bottom Rect style Boxes otherwise its hide the Boxes by defult its value false
// *[padding] it wiil set the padding of parent container by default its value 16.0 from all side(left,right,top,bottom)
// *[margin] it wiil set the margin of parent container by default its value 16.0 from all side(left,right,top,bottom)
//
//
//
class YoutubeShimmer extends StatefulWidget {
  final bool isRectBox;
  final bool isDarkMode;
  final bool isPurplishMode;
  final AlignmentGeometry beginAlign;
  final AlignmentGeometry endAlign;
  final bool hasBottomBox;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final bool hasCustomColors;
  final List<Color> colors;
  const YoutubeShimmer({
    Key key,
    this.isRectBox = false,
    this.isDarkMode = false,
    this.beginAlign = Alignment.topLeft,
    this.endAlign = Alignment.bottomRight,
    this.hasBottomBox = false,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = const EdgeInsets.all(16.0),
    this.isPurplishMode = false,
    this.hasCustomColors = false,
    this.colors = defultColors,
  }) : super(key: key);
  @override
  _YoutubeShimmerState createState() => _YoutubeShimmerState();
}

class _YoutubeShimmerState extends State<YoutubeShimmer>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  // ****************************init*************************
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this)
          ..repeat();
    _animation = Tween<double>(begin: -2, end: 2).animate(CurvedAnimation(
        curve: Curves.easeInOutSine, parent: _animationController));
  }
  // ****************************init*************************

  // *****************************dispose************************
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // *****************************dispose************************
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget child) {
        return Container(
          margin: widget.margin,
          padding: widget.padding,
          color: widget.isDarkMode ? Color(0xFF0B0B0B) : Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildButtomBox(_animation,
                          height: width,
                          width: width,
                          isPurplishMode: widget.isPurplishMode,
                          isDarkMode: widget.isDarkMode,
                          isRectBox: true,
                          beginAlign: widget.beginAlign,
                          endAlign: widget.endAlign,
                          isVideoShimmer: true,
                          hasCustomColors: widget.hasCustomColors,
                          colors: widget.colors.length == 3
                              ? widget.colors
                              : defultColors),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: width * 0.05,
                            width: width * 0.05,
                            decoration: customBoxDecoration(
                                animation: _animation,
                                isRectBox: widget.isRectBox,
                                isPurplishMode: widget.isPurplishMode,
                                isDarkMode: widget.isDarkMode,
                                hasCustomColors: widget.hasCustomColors,
                                colors: widget.colors.length == 3
                                    ? widget.colors
                                    : defultColors),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                height: width * 0.01,
                                width: width * 0.12,
                                decoration: radiusBoxDecoration(
                                    animation: _animation,
                                    isPurplishMode: widget.isPurplishMode,
                                    isDarkMode: widget.isDarkMode,
                                    hasCustomColors: widget.hasCustomColors,
                                    colors: widget.colors.length == 3
                                        ? widget.colors
                                        : defultColors),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Container(
                                height: width * 0.01,
                                width: width * 0.12,
                                decoration: radiusBoxDecoration(
                                    animation: _animation,
                                    isPurplishMode: widget.isPurplishMode,
                                    isDarkMode: widget.isDarkMode,
                                    hasCustomColors: widget.hasCustomColors,
                                    colors: widget.colors.length == 3
                                        ? widget.colors
                                        : defultColors),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildButtomBox(_animation,
                          height: width,
                          width: width,
                          isPurplishMode: widget.isPurplishMode,
                          isDarkMode: widget.isDarkMode,
                          isRectBox: true,
                          beginAlign: widget.beginAlign,
                          endAlign: widget.endAlign,
                          isVideoShimmer: true,
                          hasCustomColors: widget.hasCustomColors,
                          colors: widget.colors.length == 3
                              ? widget.colors
                              : defultColors),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: width * 0.05,
                            width: width * 0.05,
                            decoration: customBoxDecoration(
                                animation: _animation,
                                isRectBox: widget.isRectBox,
                                isPurplishMode: widget.isPurplishMode,
                                isDarkMode: widget.isDarkMode,
                                hasCustomColors: widget.hasCustomColors,
                                colors: widget.colors.length == 3
                                    ? widget.colors
                                    : defultColors),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                height: width * 0.01,
                                width: width * 0.12,
                                decoration: radiusBoxDecoration(
                                    animation: _animation,
                                    isPurplishMode: widget.isPurplishMode,
                                    isDarkMode: widget.isDarkMode,
                                    hasCustomColors: widget.hasCustomColors,
                                    colors: widget.colors.length == 3
                                        ? widget.colors
                                        : defultColors),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Container(
                                height: width * 0.01,
                                width: width * 0.12,
                                decoration: radiusBoxDecoration(
                                    animation: _animation,
                                    isPurplishMode: widget.isPurplishMode,
                                    isDarkMode: widget.isDarkMode,
                                    hasCustomColors: widget.hasCustomColors,
                                    colors: widget.colors.length == 3
                                        ? widget.colors
                                        : defultColors),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildButtomBox(_animation,
                          height: width,
                          width: width,
                          isPurplishMode: widget.isPurplishMode,
                          isDarkMode: widget.isDarkMode,
                          isRectBox: true,
                          beginAlign: widget.beginAlign,
                          endAlign: widget.endAlign,
                          isVideoShimmer: true,
                          hasCustomColors: widget.hasCustomColors,
                          colors: widget.colors.length == 3
                              ? widget.colors
                              : defultColors),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: width * 0.05,
                            width: width * 0.05,
                            decoration: customBoxDecoration(
                                animation: _animation,
                                isRectBox: widget.isRectBox,
                                isPurplishMode: widget.isPurplishMode,
                                isDarkMode: widget.isDarkMode,
                                hasCustomColors: widget.hasCustomColors,
                                colors: widget.colors.length == 3
                                    ? widget.colors
                                    : defultColors),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                height: width * 0.01,
                                width: width * 0.12,
                                decoration: radiusBoxDecoration(
                                    animation: _animation,
                                    isPurplishMode: widget.isPurplishMode,
                                    isDarkMode: widget.isDarkMode,
                                    hasCustomColors: widget.hasCustomColors,
                                    colors: widget.colors.length == 3
                                        ? widget.colors
                                        : defultColors),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Container(
                                height: width * 0.01,
                                width: width * 0.12,
                                decoration: radiusBoxDecoration(
                                    animation: _animation,
                                    isPurplishMode: widget.isPurplishMode,
                                    isDarkMode: widget.isDarkMode,
                                    hasCustomColors: widget.hasCustomColors,
                                    colors: widget.colors.length == 3
                                        ? widget.colors
                                        : defultColors),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
//
//  ***************************ListTileShimmer******************************
//

//  ***************************VideoShimmer******************************
// *[isRectBox] when it is true then it will show Rectancle shape else(false) show circle shape by defult its value false
// *[isDarkMode]when it is true then it will use black bg color otherwise it use transparent color by defult its value false
// *[beginAlign] it will set the begin value for gradientColor by defult its value Alignment.topLeft
// *[endAlign]   it will set the end value for gradientColor by defult its value Alignment.bottomRight
// *[hasBottomBox] when it is true then it will show bottom Rect style Boxes otherwise its hide the Boxes by defult its value false
// *[padding] it wiil set the padding of parent container by default its value 16.0 from all side(left,right,top,bottom)
// *[margin] it wiil set the margin of parent container by default its value 16.0 from all side(left,right,top,bottom)
//
//
//
class ListTileShimmer extends StatefulWidget {
  final bool isRectBox;
  final bool isDarkMode;
  final bool isPurplishMode;
  final AlignmentGeometry beginAlign;
  final AlignmentGeometry endAlign;
  final bool hasBottomBox;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final bool hasCustomColors;
  final List<Color> colors;
  const ListTileShimmer({
    Key key,
    this.isRectBox = false,
    this.isDarkMode = false,
    this.beginAlign = Alignment.topLeft,
    this.endAlign = Alignment.bottomRight,
    this.hasBottomBox = false,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = const EdgeInsets.all(16.0),
    this.isPurplishMode = false,
    this.hasCustomColors = false,
    this.colors = defultColors,
  }) : super(key: key);
  @override
  _ListTileShimmerState createState() => _ListTileShimmerState();
}

class _ListTileShimmerState extends State<ListTileShimmer>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  // ****************************init*************************
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this)
          ..repeat();
    _animation = Tween<double>(begin: -2, end: 2).animate(CurvedAnimation(
        curve: Curves.easeInOutSine, parent: _animationController));
  }
  // ****************************init*************************

  // *****************************dispose************************
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // *****************************dispose************************
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget child) {
        return Container(
          margin: widget.margin,
          padding: widget.padding,
          color: widget.isDarkMode ? Color(0xFF0B0B0B) : Colors.transparent,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: width * 0.1,
                            width: width * 0.1,
                            decoration: customBoxDecoration(
                                animation: _animation,
                                isRectBox: widget.isRectBox,
                                isPurplishMode: widget.isPurplishMode,
                                isDarkMode: widget.isDarkMode,
                                hasCustomColors: widget.hasCustomColors,
                                colors: widget.colors.length == 3
                                    ? widget.colors
                                    : defultColors),
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: width * 0.01,
                                width: width * 0.5,
                                decoration: radiusBoxDecoration(
                                    animation: _animation,
                                    isPurplishMode: widget.isPurplishMode,
                                    isDarkMode: widget.isDarkMode,
                                    hasCustomColors: widget.hasCustomColors,
                                    colors: widget.colors.length == 3
                                        ? widget.colors
                                        : defultColors),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Container(
                                height: width * 0.01,
                                width: width * 0.45,
                                decoration: radiusBoxDecoration(
                                    animation: _animation,
                                    isPurplishMode: widget.isPurplishMode,
                                    isDarkMode: widget.isDarkMode,
                                    hasCustomColors: widget.hasCustomColors,
                                    colors: widget.colors.length == 3
                                        ? widget.colors
                                        : defultColors),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: EdgeInsets.only(left: 10.0),
                              height: width * 0.05,
                              width: width * 0.12,
                              decoration: radiusBoxDecoration(
                                  animation: _animation,
                                  isPurplishMode: widget.isPurplishMode,
                                  isDarkMode: widget.isDarkMode,
                                  hasCustomColors: widget.hasCustomColors,
                                  colors: widget.colors.length == 3
                                      ? widget.colors
                                      : defultColors),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
//
//  ***************************ListTileShimmer******************************
//
