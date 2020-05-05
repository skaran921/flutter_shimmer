import 'package:flutter/material.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';

class CustomColors extends StatefulWidget {
  @override
  _CustomColorsState createState() => _CustomColorsState();
}

class _CustomColorsState extends State<CustomColors> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "PalyStoreShimmer(Deafult)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        PlayStoreShimmer(),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "PalyStoreShimmer(hasBottomSecondLine:false)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        PlayStoreShimmer(
          hasBottomSecondLine: false,
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "PalyStoreShimmer(hasBottomFirstLine:false)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        PlayStoreShimmer(
          hasBottomFirstLine: false,
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "PalyStoreShimmer(hasBottomFirstLine:false,hasBottomSecondLine: false)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        PlayStoreShimmer(
          hasBottomFirstLine: false,
          hasBottomSecondLine: false,
        ),
        Divider(),

        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "With hasCustomColors:true option",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
        ),
        // Container(
        //   padding: EdgeInsets.all(16.0),
        //   child: Text(
        //     "TextShimmer",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
        // Center(
        //   child: TextShimmer(
        //     // isPurplishMode: true,
        //     text: "Slide_to_open_lock",
        //     fontSize: 30,
        //   ),
        // ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "ListTileShimmer",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTileShimmer(
          // Step 1: set hasCustomColors property to try
          isDisabledAvatar: true,
          isDisabledButton: true,
          hasCustomColors: true,

          // Step 2: give 3 colors to colors property
          colors: [
            // Dark color
            Color(0xFF1769aa),
            // light color
            Color(0xFF4dabf5),
            // Medium color
            Color(0xFF2196f3)
          ],
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
          // Step 1: set hasCustomColors property to try
          hasCustomColors: true,
          // Step 2: give 3 colors to colors property
          colors: [
            // Dark color
            Color(0xFFaa2e25),
            // light color
            Color(0xFFf44336),
            // Medium color
            Color(0xFFf6685e)
          ],
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
          // Step 1: set hasCustomColors property to try
          hasCustomColors: true,
          // Step 2: give 3 colors to colors property
          colors: [
            // Dark color
            Color(0xFF6d1b7b),
            // light color
            Color(0xFF9c27b0),
            // Medium color
            Color(0xFFaf52bf)
          ],
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
          // isDisabledAvatar: true,
          hasCustomColors: true,
          colors: [Color(0xFF651fff), Color(0xFF834bff), Color(0xFF4615b2)],
        ),
        Divider(),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Profile Shimmer(With Bottom Lines)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ProfileShimmer(
          // Step 1: set hasCustomColors property to try
          hasCustomColors: true,
          // Step 2: give 3 colors to colors property
          colors: [
            // Dark color
            Color(0xFF618833),
            // light color
            Color(0xFFa2cf6e),
            // Medium color
            Color(0xFF8bc34a)
          ],
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
          // Step 1: set hasCustomColors property to try
          hasCustomColors: true,
          // Step 2: give 3 colors to colors property
          colors: [
            // Dark color
            Color(0xFFb2a429),
            // light color
            Color(0xFFffeb3b),
            // Medium color
            Color(0xFFffef62)
          ],
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
          // Step 1: set hasCustomColors property to try
          hasCustomColors: true,
          // Step 2: give 3 colors to colors property
          colors: [
            // Dark color
            Color(0xFFb26a00),
            // light color
            Color(0xFFff9800),
            // Medium color
            Color(0xFFffac33)
          ],
          hasBottomBox: true,
          // isDarkMode: true,
        ),
      ],
    );
  }
}
