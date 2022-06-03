import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zenbu/pages/investments.dart';
import 'package:zenbu/welcome_page.dart';

class Appbar extends StatefulWidget {
  const Appbar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Ionicons.md_menu),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WelcomePage()));
                },
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: SvgPicture.asset('assets/analytics-icon.svg'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InvestmentsPage()));
                },
              ),
              IconButton(
                icon: SvgPicture.asset('assets/search-icon.svg'),
                onPressed: null,
              ),
              IconButton(
                icon: SvgPicture.asset('assets/more-icon.svg'),
                onPressed: null,
              )
            ],
          )
        ],
      ),
    );
  }
}
