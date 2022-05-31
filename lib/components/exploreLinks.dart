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
    return Expanded(
      child: SingleChildScrollView(
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
                  Text('Recommended', style: ThemeStyles.primaryTitle),
                  Text('See All', style: ThemeStyles.seeAll),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 0, left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          courseWidget(
                              'Finance',
                              'Sustainable Finance',
                              'img1',
                              Color.fromARGB(255, 243, 123, 163),
                              ThemeColors.tertiary,
                              Colors.white),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                              'Investment',
                              'Investment Management',
                              'img2',
                              Color(0xffe9eefa),
                              Colors.white,
                              Colors.black),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            height: 50,
                          ),
                          courseWidget('Accounting', 'Bookkeeping', 'img3',
                              Color(0xffe9eefa), Colors.white, Colors.black),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                              'Technology',
                              'Blockchain 101',
                              'img4',
                              Color.fromARGB(250, 132, 136, 255),
                              Color(0xffcedaff),
                              Colors.black),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container courseWidget(String category, String title, String img,
    Color categoryColor, Color bgColor, Color titleColor) {
  return Container(
    padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.all(Radius.circular(30)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: InkWell(
      onTap: null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: categoryColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Text(
              '$category',
              style: TextStyle(color: titleColor),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '$title',
            style: TextStyle(
              color: titleColor,
              fontSize: 18,
              height: 1,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
          Hero(
            tag: '$img',
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/explore/$img.png'),
              )),
            ),
          )
        ],
      ),
    ),
  );
}
