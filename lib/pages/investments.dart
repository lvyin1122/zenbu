import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utilities/themeStyles.dart';

class InvestmentsPage extends StatefulWidget {
  const InvestmentsPage({Key? key}) : super(key: key);

  @override
  State<InvestmentsPage> createState() => _InvestmentsPageState();
}

class _InvestmentsPageState extends State<InvestmentsPage> {
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
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Investments", style: ThemeStyles.primaryTitle),
                InvestPortfolio(),
                Transactions(),
                InvestmentGuide(),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

Widget InvestPortfolio() => Container(
      margin: EdgeInsets.only(top: 15),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [ThemeStyles.defaultBoxShadow],
          borderRadius: BorderRadius.circular(25)),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 14),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "assets/portfolio.svg",
                width: 30,
                height: 30,
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your investment portfolio"),
                  Text("08 Oct 2021, 09:32"),
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Invested Amount", style: greyText),
              Text("Current Value", style: greyText)
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$ 200.00", style: secondaryNumber),
              Text("\$ 310.23", style: secondaryNumber)
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Overall Returns", style: greyText),
                  SizedBox(height: 5),
                  Text("\$ 110.23(+25.20%)", style: greenNumber)
                ],
              ),
              SvgPicture.asset("assets/invest-stats.svg", height: 55)
            ],
          ),
        ],
      ),
    );

Widget Transactions() => Container(
      margin: EdgeInsets.only(top: 15),
      width: double.infinity,
      height: 205,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [ThemeStyles.defaultBoxShadow],
          borderRadius: BorderRadius.circular(25)),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 14),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("All Transaction"), Text("View all")],
          ),
          buildTransactionCard(),
          buildTransactionCard(),
        ],
      ),
    );

buildTransactionCard() => Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [ThemeStyles.defaultBoxShadow],
                    borderRadius: BorderRadius.circular(14)),
                child: Center(
                  child: SvgPicture.asset("assets/arrow-up.svg"),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Instalment for Mutual\nfound"),
                  Text("12:23 PM 2 APR, 2021", style: greyText),
                ],
              )
            ],
          ),
          Text("\$ 100", style: primaryNumber),
        ],
      ),
    );

Widget InvestmentGuide() => Container(
      margin: EdgeInsets.only(top: 15),
      width: double.infinity,
      height: 205,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Investment Guide", style: ThemeStyles.secondaryTitle),
          buildGuideCard(),
          Divider(height: 2),
          buildGuideCard(),
        ],
      ),
    );

buildGuideCard() => Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Basic type of investments", style: titleText),
                Text("This is how you set your foot for 2020"),
              ]),
          buildOval("assets/images/user_1.png", 54.0, 54.0)
        ],
      ),
    );

buildOval(image, width, height) => ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: Image.asset(image).image,
          fit: BoxFit.cover,
          width: width,
          height: height,
        ),
      ),
    );

TextStyle primaryNumber =
    TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);
TextStyle secondaryNumber =
    TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold);
TextStyle greenNumber =
    TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold);

TextStyle greyText = TextStyle(color: Colors.grey, fontSize: 14);
TextStyle titleText = TextStyle(
    color: Colors.black.withOpacity(0.5),
    fontSize: 18,
    fontWeight: FontWeight.bold);
