import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final bool isCircularImage;
  final bool isBottomLines;
  HomePage({this.isCircularImage = true, this.isBottomLines = true});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat();

    animation = Tween<double>(begin: -1.0, end: 4.0).animate(
        CurvedAnimation(curve: Curves.easeInOutSine, parent: _controller));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Decoration customBoxDecoration(animation, {isCircleBox = false}) {
    return BoxDecoration(
      shape: isCircleBox ? BoxShape.circle : BoxShape.rectangle,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xfff6f7f8),
          Color(0x44CCCCCC),
          Color(0xfff6f7f8),
          // Color(0xffB1add4),
        ],
        stops: [
          animation.value - 1,
          animation.value,
          animation.value + 1,
        ],
      ),
    );
  }

  Decoration radiusBoxDecoration(animation, {isCircleBox = false}) {
    return BoxDecoration(
      shape: isCircleBox ? BoxShape.circle : BoxShape.rectangle,
      borderRadius: BorderRadius.circular(10.0),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xfff6f7f8),
          Color(0xFFCCCCCC),
          Color(0xfff6f7f8),
          // Color(0xffB1add4),
        ],
        stops: [
          animation.value - 1,
          animation.value,
          animation.value + 1,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Container(
          margin: EdgeInsets.all(16.0),
          color: Colors.white,
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: width * 0.13,
                    width: width * 0.13,
                    decoration: customBoxDecoration(animation,
                        isCircleBox: widget.isCircularImage),
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
                          decoration: radiusBoxDecoration(animation),
                        ),
                        Container(
                          height: height * 0.007,
                          width: width * 0.2,
                          decoration: radiusBoxDecoration(animation),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              widget.isBottomLines
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: height * 0.007,
                          width: width * 0.7,
                          decoration: radiusBoxDecoration(animation),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: height * 0.007,
                          width: width * 0.8,
                          decoration: radiusBoxDecoration(animation),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: height * 0.007,
                          width: width * 0.5,
                          decoration: radiusBoxDecoration(animation),
                        ),
                      ],
                    )
                  : Offstage()
            ],
          ),
        );
      },
    );
  }
}
