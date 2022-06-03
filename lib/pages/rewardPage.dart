import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utilities/themeColors.dart';
import '../utilities/themeStyles.dart';

class RewardPage extends StatefulWidget {
  const RewardPage({Key? key}) : super(key: key);

  @override
  State<RewardPage> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.secondary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        // title: Text('Sent'),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Zen Reward Points",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                                Text("17,000",
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.white)),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/notification.svg",
                              color: Colors.black,
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildOptionCard1("Exchange", "assets/exchange.svg"),
                            buildOptionCard1("Gift Points", "assets/gift.svg"),
                            buildOptionCard1("Lucky Draw", "assets/lucky.svg"),
                            buildOptionCard1("Buy", "assets/buy.svg")
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    width: double.infinity,
                    height: 600,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(30),
                        topEnd: Radius.circular(30),
                      ),
                    ),
                    child: Column(children: [
                      Text("Exchange Credit Points",
                          style: TextStyle(fontSize: 18)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Amount",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "78.00",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildOptionCard2("5"),
                            buildOptionCard2("10"),
                            buildOptionCard2("15"),
                            buildOptionCard2("20", isSelected: true),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildOptionCard2("50"),
                            buildOptionCard2("100"),
                            buildOptionCard2("500"),
                            buildOptionCard2("|"),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Exchange reward points to",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      buildOval(
                                          Color.fromARGB(255, 33, 75, 243),
                                          54,
                                          54,
                                          SvgPicture.asset(
                                              "assets/paypal.svg")),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Paypal",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            "**** *** 3720",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  buildOval(
                                      Color.fromARGB(255, 158, 11, 121),
                                      24,
                                      24,
                                      SvgPicture.asset("assets/tick.svg")),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      buildOval(Colors.orange, 54, 54,
                                          SvgPicture.asset("assets/icbc.svg")),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Bank of China",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            "**** *** 4930",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  buildOval(Colors.grey.withOpacity(0.5), 24,
                                      24, Center()),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      buildOval(
                                          Color(0xFF047D1E),
                                          54,
                                          54,
                                          Image.asset(
                                              "assets/images/hangseng.png")),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Hang Seng",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            "**** *** 3720",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  buildOval(Colors.grey.withOpacity(0.5), 24,
                                      24, Center()),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

buildOptionCard1(String title, String icon) => Container(
      height: 88,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
                color: Colors.white,
                // boxShadow: [ThemeStyles.defaultBoxShadow],
                borderRadius: BorderRadius.circular(14)),
            child: Center(
                child: SvgPicture.asset(
              icon,
              width: 24,
              height: 24,
              color: ThemeColors.tertiary,
            )),
          ),
          Text(title, style: TextStyle(fontSize: 12, color: Colors.white)),
        ],
      ),
    );

buildOptionCard2(String text, {bool isSelected = false}) => Container(
      width: 54,
      height: 54,
      decoration: BoxDecoration(
          color: isSelected ? Color.fromARGB(255, 158, 11, 121) : Colors.white,
          // boxShadow: [ThemeStyles.defaultBoxShadow],
          border: Border.all(width: 1.0, color: Colors.grey.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(14)),
      child: Center(
        child: Text(text,
            style: TextStyle(
                fontSize: 15,
                color: isSelected ? Colors.white : null,
                fontWeight: text == "|" ? FontWeight.normal : FontWeight.w600)),
      ),
    );

buildOval(Color color, double width, double height, Widget center) => ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Container(
          // image: Image.asset(image).image,
          // fit: BoxFit.cover,
          width: width,
          height: height,
          color: color,
          child: Center(child: center),
        ),
      ),
    );
