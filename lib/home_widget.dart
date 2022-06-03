import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:zenbu/screens/profile.dart';
import 'package:zenbu/screens/budget.dart';
import 'package:zenbu/screens/explore.dart';
import 'package:zenbu/screens/home.dart';
import 'package:zenbu/screens/transfer.dart';
import 'package:zenbu/utilities/themeColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

// Used for Bottom Navigation Bar

class _HomeWidgetState extends State<HomeWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      HomeScreen(),
      BudgetScreen(),
      ExploreScreen(),
      ProfileScreen(),
      TransferScreen(),
    ];

    return Scaffold(
        body: widgetOptions.elementAt(selectedIndex),
        // Bottom navigation bar
        bottomNavigationBar: getBottomNavBar(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              onTabTapped(4);
            },
            child: SvgPicture.asset(
              'assets/transactions-icon.svg',
              color: Colors.white,
            ),
            backgroundColor: ThemeColors.primary
            //params
            ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }

  Widget getBottomNavBar() {
    List<IconData> iconItems = [
      Ionicons.md_home,
      Ionicons.md_stats,
      Ionicons.md_compass,
      Ionicons.md_person,
    ];
    return AnimatedBottomNavigationBar(
      activeColor: ThemeColors.primary,
      splashColor: ThemeColors.secondary,
      inactiveColor: Colors.black.withOpacity(0.5),
      icons: iconItems,
      activeIndex: selectedIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 10,
      iconSize: 25,
      rightCornerRadius: 10,
      onTap: (index) {
        onTabTapped(index);
      },
    );
  }

  void onTabTapped(index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

class ExporeScreen {}
