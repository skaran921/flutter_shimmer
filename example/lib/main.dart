// import 'package:example/text.dart';
import 'package:example/darkMode.dart';
import 'package:example/purplishMode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  bool isDarkMode = false;
  bool isPurplishMode = false;

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
        body: isPurplishMode
            ? PurplishMode()
            : isDarkMode
                ? DarkMode()
                : ListView(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "ListTileShimmer",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTileShimmer(
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
                      ProfilePageShimmer(
                          // isPurplishMode: true,
                          // isDarkMode: true,
                          ),
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
