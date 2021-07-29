import 'package:flutter/material.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';

class DarkMode extends StatefulWidget {
  @override
  _DarkModeState createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "ListTileShimmer (Dark Mode)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTileShimmer(
          // isPurplishMode: true,
          isDarkMode: true,
        ),
        Divider(),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "YoutubeShimmer (Dark Mode)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        YoutubeShimmer(
          // isPurplishMode: true,
          isDarkMode: true,
        ),
        Divider(),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "VideoShimmer (Dark Mode)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        VideoShimmer(
          // isPurplishMode: true,
          isDarkMode: true,
        ),
        Divider(),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "ProfileShimmer (Dark Mode)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ProfileShimmer(
          // isPurplishMode: true,
          isDarkMode: true,
        ),
        Divider(),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "YoutubeShimmer(With Bottom Lines (Dark Mode))",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ProfileShimmer(
          // isPurplishMode: true,
          hasBottomLines: true,
          isDarkMode: true,
        ),
        Divider(),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "ProfilePageShimmer (Dark Mode)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ProfilePageShimmer(
          // isPurplishMode: true,
          isDarkMode: true,
        ),
        Divider(),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "ProfilePageShimmer(With Bottom Box) (Dark Mode)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ProfilePageShimmer(
          // isPurplishMode: true,
          hasBottomBox: true,
          isDarkMode: true,
        ),
      ],
    );
  }
}
