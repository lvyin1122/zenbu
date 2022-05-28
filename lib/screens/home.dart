import 'package:zenbu/components/appbar.dart';
import 'package:zenbu/components/cards.dart';
import 'package:zenbu/components/recentTransactions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Appbar(
              title: "Home",
            ),
            CardsList(),
            RecentTransactions(),
          ],
        ),
      ),
    );
  }
}
