// import 'package:example/text.dart';
import './darkMode.dart';
import './purplishMode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';
import 'custom_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;
  bool isPurplishMode = false;
  bool isCustomColors = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      this.isCustomColors = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter_shimmer",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Flutter_Shimmer"),
        ),
        body: isCustomColors
            ? CustomColors()
            : isPurplishMode
                ? PurplishMode()
                : isDarkMode
                    ? DarkMode()
                    : ListView(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              "ListTileShimmer ( onlyWithProfilePicture:true )",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              ListTileShimmer(
                                bgColor: Colors.yellow,
                                onlyShowProfilePicture: true,
                                // isRectBox: true,
                                height: 20,
                                // isPurplishMode: true,
                              ),
                            ],
                          ),
                          Divider(),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              "ListTileShimmer",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          ListTileShimmer(
                            bgColor: Colors.pink,

                            height: 20,
                            // isPurplishMode: true,
                          ),
                          Divider(),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              "YoutubeShimmer",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          YoutubeShimmer(
                              // isPurplishMode: true,
                              // isDarkMode: true,
                              ),
                          Divider(),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              "VideoShimmer",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          VideoShimmer(
                              // isPurplishMode: true,
                              // isDarkMode: true,
                              ),
                          Divider(),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              "ProfileShimmer",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          ProfileShimmer(
                            // isPurplishMode: true,
                            // isDarkMode: true,
                            hasCustomColors: true,
                            colors: [Color(0xFF651fff), Color(0xFF834bff), Color(0xFF4615b2)],
                          ),
                          Divider(),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              "YoutubeShimmer(With Bottom Lines)",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          ProfileShimmer(
                            // isPurplishMode: true,
                            hasBottomLines: true,
                            // isDarkMode: true,
                          ),
                          Divider(),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              "ProfilePageShimmer",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          ProfilePageShimmer(),
                          Divider(),
                          Container(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              "ProfilePageShimmer(With Bottom Box)",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          ProfilePageShimmer(
                            // isPurplishMode: true,
                            hasBottomBox: true,
                            // isDarkMode: true,
                          ),
                        ],
                      ),
      ),
    );
  }
}
