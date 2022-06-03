import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zenbu/pages/investments.dart';

import '../utilities/themeColors.dart';
import '../utilities/themeStyles.dart';

class InvestOptionsPage extends StatefulWidget {
  const InvestOptionsPage({Key? key}) : super(key: key);
  @override
  State<InvestOptionsPage> createState() => _InvestOptionsPage();
}

class _InvestOptionsPage extends State<InvestOptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        // title: Text('Sent'),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
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
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("What type of investment plans do you prefer?",
                      style: TextStyle(fontSize: 24, color: Colors.black)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildOptionCard1(
                              "Mutual found", "assets/invest-option1.svg"),
                          buildOptionCard1(
                              "Monthly in.", "assets/invest-option2.svg"),
                          buildOptionCard1(
                              "Unit link in", "assets/invest-option3.svg"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildOptionCard1(
                              "Crypto", "assets/bitcoin-btc-logo.svg"),
                          buildOptionCard1(
                              "Stocks", "assets/invest-option5.svg"),
                          buildOptionCard1(
                              "Gold in.", "assets/invest-option6.svg"),
                        ],
                      ),
                    ),
                  ),
                  InvestmentValueOptions("What is your monthly income?", [
                    "10,000",
                    "15,000",
                    "20,000",
                    "25,000",
                    "30,000",
                    "35,000",
                    "40,000",
                    "45,000",
                    "≥50,000"
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  InvestmentValueOptions(
                      "How much you want to invest monthly?", [
                    "500",
                    "1,000",
                    "1,500",
                    "2,000",
                    "2,500",
                    "3,000",
                    "3,500",
                    "4,000",
                    "≥4,500"
                  ]),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: MaterialButton(
                      minWidth: double.maxFinite,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InvestmentsPage()));
                      },
                      color: ThemeColors.tertiary,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget InvestmentValueOptions(String title, List<String> values) => Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [ThemeStyles.defaultBoxShadow],
          borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: ThemeStyles.secondaryTitle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildOptionCard2(values[0]),
                buildOptionCard2(values[1]),
                buildOptionCard2(values[2]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildOptionCard2(values[3], isSelected: true),
                buildOptionCard2(values[4]),
                buildOptionCard2(values[5]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildOptionCard2(values[6]),
                buildOptionCard2(values[7]),
                buildOptionCard2(values[8]),
              ],
            ),
          ),
        ],
      ),
    );

buildOptionCard1(String title, String icon) => Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [ThemeStyles.defaultBoxShadow],
                borderRadius: BorderRadius.circular(14)),
            child: Center(
                child: SvgPicture.asset(
              icon,
              width: 32,
              height: 32,
              color: ThemeColors.tertiary,
            )),
          ),
          Text(title, style: TextStyle(fontSize: 12)),
        ],
      ),
    );

buildOptionCard2(String number, {bool isSelected = false}) => Container(
      width: 80,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
        color: isSelected ? null : Colors.grey.withOpacity(0.5),
        boxShadow: [ThemeStyles.defaultBoxShadow],
        borderRadius: BorderRadius.circular(14),
        gradient: !isSelected
            ? null
            : LinearGradient(
                colors: [ThemeColors.secondary, ThemeColors.tertiary],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
      ),
      child: (Center(
          child: Text(
        number,
        style: TextStyle(color: isSelected ? Colors.white : Colors.grey),
      ))),
    );
