import 'package:flutter/material.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';

class PurplishMode extends StatefulWidget {
  @override
  _PurplishModeState createState() => _PurplishModeState();
}

class _PurplishModeState extends State<PurplishMode> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "ListTileShimmer (Purplish Mode)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTileShimmer(
          isPurplishMode: true,
        ),
        Divider(),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "YoutubeShimmer (Purplish Mode)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        YoutubeShimmer(
          isPurplishMode: true,
          // isPurplishMode: true,
        ),
        Divider(),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "VideoShimmer (Purplish Mode)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        VideoShimmer(
          isPurplishMode: true,
          // isPurplishMode: true,
        ),
        Divider(),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "ProfileShimmer (Purplish Mode)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ProfileShimmer(
          isPurplishMode: true,
        ),
        Divider(),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "YoutubeShimmer(With Bottom Lines (Purplish Mode))",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ProfileShimmer(
          isPurplishMode: true,
          hasBottomLines: true,
          // isPurplishMode: true,
        ),
        Divider(),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "ProfilePageShimmer (Purplish Mode)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ProfilePageShimmer(
          isPurplishMode: true,
        ),
        Divider(),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "ProfilePageShimmer(With Bottom Box) (Purplish Mode)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ProfilePageShimmer(
          isPurplishMode: true,
          hasBottomBox: true,
          // isPurplishMode: true,
        ),
      ],
    );
  }
}
