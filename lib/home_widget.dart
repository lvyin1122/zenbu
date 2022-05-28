import 'package:zenbu/screens/account.dart';
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
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      HomeScreen(),
      TransferScreen(),
      HomeScreen(),
      AccountScreen(),
    ];
    void onTabTapped(index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        onTap: onTabTapped,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/home-icon.svg',
              color: Colors.grey,
            ),
            activeIcon: SvgPicture.asset(
              'assets/home-icon.svg',
              color: Colors.black,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/transactions-icon.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/transactions-icon.svg',
              color: Colors.black,
            ),
            label: "Transactions",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/settings-icon.svg',
              // color: selectedIndex == 2 ? Colors.black : Colors.grey,
            ),
            activeIcon: SvgPicture.asset(
              'assets/settings-icon.svg',
              color: Colors.black,
            ),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/smiley-icon.svg',
              // color: selectedIndex == 3 ? Colors.black : Colors.grey,
            ),
            activeIcon: SvgPicture.asset(
              'assets/smiley-icon.svg',
              color: Colors.black,
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
