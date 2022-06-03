import 'package:flutter_icons/flutter_icons.dart';
import 'package:zenbu/components/recentTransactions.dart';
import 'package:flutter/material.dart';
import 'package:zenbu/pages/rewardPage.dart';
import 'package:zenbu/utilities/themeColors.dart';
import 'package:zenbu/utilities/themeStyles.dart';

import '../components/appbar.dart';
import '../pages/investment-options.dart';
import '../pages/investments.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Appbar(title: "Profile"),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    buildAvatar(),
                    buildInfo(),
                    buildCredits(size, context),
                    buildMenu(),
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

Widget buildAvatar() => Center(
      child: Stack(
        children: [
          ClipOval(
            child: Material(
              color: Colors.transparent,
              child: Ink.image(
                image: Image.asset("assets/images/user.png").image,
                fit: BoxFit.cover,
                width: 128,
                height: 128,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 4,
            child: ClipOval(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(3),
                child: ClipOval(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    color: ThemeColors.tertiary,
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );

Widget buildInfo() => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
            Text(
              "Mirio Togata",
              style: ThemeStyles.primaryTitle,
            ),
            Text("mirio_togata@gmail.com"),
          ],
        ),
      ),
    );

Widget buildCredits(var size, context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RewardPage()));
            },
            child: Container(
              height: 100,
              width: (size.width - 60) / 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      ThemeColors.primary,
                      ThemeColors.tertiary,
                    ]),
                color: ThemeColors.primary,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(1, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Zen Points",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Ionicons.md_albums,
                            color: Colors.white,
                          ),
                          Text(
                            "17,000",
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ]),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InvestOptionsPage()));
            },
            child: Container(
              height: 100,
              width: (size.width - 60) / 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      ThemeColors.secondary,
                      ThemeColors.primary,
                    ]),
                color: ThemeColors.primary,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(1, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        "My Investments",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Ionicons.md_stats,
                            color: Colors.white,
                          ),
                          Icon(
                            Ionicons.ios_arrow_forward,
                            color: Colors.white,
                            size: 30,
                          ),
                        ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

Widget buildMenu() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(height: 10),
          buildMenuCard(Ionicons.md_person, "Edit Profile"),
          SizedBox(height: 5),
          buildMenuCard(Ionicons.md_card, "Mange accounts"),
          SizedBox(height: 5),
          buildMenuCard(Ionicons.md_key, "Secuity"),
          SizedBox(height: 5),
          buildMenuCard(Ionicons.md_settings, "Settings"),
          SizedBox(height: 5),
          buildMenuCard(Ionicons.md_help, "Help"),
        ],
      ),
    );

Widget buildMenuCard(IconData icon, String text) => Container(
      height: 55,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon),
          Container(
            width: 160,
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Icon(Ionicons.ios_arrow_forward),
        ],
      ),
    );
