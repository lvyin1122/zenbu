import 'package:flutter_svg/svg.dart';
import 'package:zenbu/components/appbar.dart';
import 'package:zenbu/components/cards.dart';
import 'package:zenbu/components/recentTransactions.dart';
import 'package:flutter/material.dart';
import 'package:zenbu/utilities/themeStyles.dart';

import '../utilities/themeColors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Appbar(
              title: "Home",
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  TotalBalance(),
                  CardsList(),
                  CryptoDashboard(size),
                  RecentTransactions(),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}

Widget TotalBalance() => Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Text(
                "Hi, Mirio!",
                style: ThemeStyles.homeSalute,
              ),
              SizedBox(height: 5),
              Text(
                "Total Banlance",
                style: ThemeStyles.totalBalance,
                textAlign: TextAlign.left,
              ),
              Text("\$ 1,530,600.00",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "")),
            ],
          ),
        ],
      ),
    );

Widget CryptoDashboard(size) => Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      height: 200,
      // decoration: BoxDecoration(color: Colors.amber),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Cryptocurrency', style: ThemeStyles.primaryTitle),
              Text('See All', style: ThemeStyles.seeAll),
            ],
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
              // border:
              //     Border.all(width: 1.0, color: Colors.purple.withOpacity(0.5)),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                )
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: 2.0),
                cryptoCard("assets/bitcoin-btc-logo.svg", "Bitcoin", "BTC",
                    "\$ 58,092.10", "+4.77%"),
                // Divider(
                //   height: 0.5,
                // ),
                cryptoCard("assets/ethereum-eth-logo.svg", "Ethereum", "ETH",
                    "\$ 3,512.10", "+5.21%"),
                // Divider(
                //   height: 0.5,
                // ),
                cryptoCard("assets/bnb-logo.svg", "BNB", "BNB", "\$ 38,092.10",
                    "+2.72%"),
                SizedBox(height: 2.0),
              ],
            ),
          ),
        ],
      ),
    );

Widget cryptoCard(
  String icon,
  String coin1,
  String coin2,
  String value,
  String rate,
) =>
    Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildCircle(icon),
          Container(
            width: 180,
            margin: EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(coin1, style: TextStyle(fontWeight: FontWeight.w500)),
                Text(coin2, style: TextStyle(fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Container(
            width: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(value, style: TextStyle(fontWeight: FontWeight.w800)),
                Text(rate,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 84, 222, 89))),
              ],
            ),
          ),
        ],
      ),
    );

Widget buildCircle(icon) => Center(
      child: ClipOval(
        child: Container(
          width: 40,
          height: 40,
          color: ThemeColors.secondary,
          padding: EdgeInsets.all(3),
          child: CircleAvatar(
            child: SvgPicture.asset(
              icon,
              height: 20,
              width: 20,
              color: ThemeColors.secondary,
            ),
          ),
        ),
      ),
    );
