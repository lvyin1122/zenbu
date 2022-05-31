import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zenbu/screens/home.dart';

import '../models/category.dart';
import '../utilities/themeColors.dart';
import '../utilities/themeStyles.dart';

class ExploreLinks extends StatefulWidget {
  const ExploreLinks({Key? key}) : super(key: key);

  @override
  State<ExploreLinks> createState() => _ExploreLinksState();
}

class _ExploreLinksState extends State<ExploreLinks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F7),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              children: <Widget>[
                SvgPicture.asset(
                  "assets/search-icon.svg",
                  color: ThemeColors.grey,
                ),
                SizedBox(width: 16),
                Text(
                  "Search for anything",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFA0A5BD),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 0, left: 15.0, right: 15.0, bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories', style: ThemeStyles.primaryTitle),
                Text('See All', style: ThemeStyles.seeAll),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
