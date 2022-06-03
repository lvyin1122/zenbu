import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zenbu/home_widget.dart';
import 'dart:io';
import 'dart:async';
import 'package:zenbu/utilities/themeColors.dart';

class signupguide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Hi Mirio",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Choose the image you want as your icon!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            Column(
                              children: <Widget>[buildAvatar()],
                            ),
                            SizedBox(
                              height: 200,
                            ),
                            Text(
                              "Continue if you do not want to set an icon or want to set it later",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Column(
                              children: [
                                MaterialButton(
                                  minWidth: double.maxFinite,
                                  height: 60,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                signupguide2()));
                                  },
                                  color: Color(0xff0095FF),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Text(
                                    "Continue",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ])
                    ]))));
  }
}

Widget buildAvatar() => ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: Image.asset("assets/images/user.png").image,
          fit: BoxFit.cover,
          width: 120,
          height: 120,
        ),
      ),
    );

class signupguide2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ThemeColors.tertiary,
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                buildAvatar(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: <Widget>[
                      Text(
                        "Welcome,\nMirio!",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Rubik',
                          fontSize: 50,
                          color: Colors.white,
                        ),
                      ),
                    ]),
                    Row(children: <Widget>[
                      Text(
                        "Let's start your\nbanking journey by\ncustomizing your app.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Rubik',
                          fontSize: 28,
                        ),
                      ),
                    ]),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 5),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => customedashboard()));
                  },
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Continue",
                    style: TextStyle(fontFamily: 'Rubik.Regular', fontSize: 24),
                  ),
                ),
              ])
        ],
      ),
    )));
  }
}

class customedashboard extends StatelessWidget {
  const customedashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(30.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(children: <Widget>[
              Row(children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Text(
                  "Custom Dashboard",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Rubik.Black',
                    fontSize: 18,
                  ),
                ),
              ]),
              SizedBox(
                height: 30,
              ),
              Row(children: <Widget>[
                Text(
                  "What would you like to see on",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 91, 49, 159),
                    fontFamily: 'Rubik.Black',
                    fontSize: 25,
                  ),
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  "your board?",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 91, 49, 159),
                    fontFamily: 'Rubik.Black',
                    fontSize: 25,
                  ),
                ),
              ]),
              SizedBox(
                height: 40,
              ),
              Row(children: <Widget>[
                Text(
                  "Select Color",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Rubik.Regular',
                    fontSize: 25,
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(children: <Widget>[
                MaterialButton(
                  minWidth: 70,
                  height: 70,
                  color: Color.fromARGB(255, 58, 12, 163),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  minWidth: 70,
                  height: 70,
                  color: Color.fromARGB(255, 247, 37, 133),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  minWidth: 70,
                  height: 70,
                  color: Color.fromARGB(255, 15, 119, 240),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  minWidth: 70,
                  height: 70,
                  color: Color.fromARGB(255, 67, 97, 238),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                )
              ]),
              SizedBox(height: 20),
              Row(children: <Widget>[
                Text("Select Features",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Rubik.Regular',
                      fontSize: 25,
                    ))
              ]),
              SizedBox(
                height: 20,
              ),
              Row(children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                MaterialButton(
                  minWidth: 90,
                  height: 90,
                  color: Colors.white,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side: BorderSide(
                          color: Color.fromARGB(255, 130, 101, 196),
                          width: 0.8)),
                  child: SvgPicture.asset('assets/custom/accounts.svg'),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  minWidth: 90,
                  height: 90,
                  color: Colors.white,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side: BorderSide(
                          color: Color.fromARGB(255, 130, 101, 196),
                          width: 0.8)),
                  child: SvgPicture.asset('assets/custom/stocks.svg'),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  minWidth: 90,
                  height: 90,
                  color: Colors.white,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side: BorderSide(
                          color: Color.fromARGB(255, 130, 101, 196),
                          width: 0.8)),
                  child: SvgPicture.asset('assets/custom/transactions.svg'),
                  //child: Image.asset('zenbu-main/assets/images/edit-icon.svg'),
                ),
              ]),
              SizedBox(
                height: 15,
              ),
              Row(children: <Widget>[
                SizedBox(width: 20),
                Text(
                  "Accounts",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Rubik.Regular',
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 50),
                Text(
                  "Stocks",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Rubik.Regular',
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 50),
                Text(
                  "Transactions",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Rubik.Regular',
                    fontSize: 18,
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                MaterialButton(
                  minWidth: 90,
                  height: 90,
                  color: Colors.white,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side: BorderSide(
                          color: Color.fromARGB(255, 130, 101, 196),
                          width: 0.8)),
                  child: SvgPicture.asset('assets/custom/budget.svg'),
                  //child: Image.asset('zenbu-main/assets/images/edit-icon.svg'),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  minWidth: 90,
                  height: 90,
                  color: Colors.white,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side: BorderSide(
                          color: Color.fromARGB(255, 130, 101, 196),
                          width: 0.8)),
                  child: SvgPicture.asset('assets/custom/crypto.svg'),
                  //child: Image.asset('zenbu-main/assets/images/edit-icon.svg'),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  minWidth: 90,
                  height: 90,
                  color: Colors.white,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side: BorderSide(
                          color: Color.fromARGB(255, 130, 101, 196),
                          width: 0.8)),
                  child: SvgPicture.asset('assets/custom/investment.svg'),
                  //child: Image.asset('zenbu-main/assets/images/edit-icon.svg'),
                ),
              ]),
              SizedBox(
                height: 15,
              ),
              Row(children: <Widget>[
                SizedBox(width: 20),
                Text(
                  "Budget",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Rubik.Regular',
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 35),
                Text(
                  "Cryptocurrency",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Rubik.Regular',
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  "Investment",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Rubik.Regular',
                    fontSize: 18,
                  ),
                ),
              ]),
              SizedBox(
                height: 30,
              ),
              Row(children: <Widget>[
                Text(
                  "Don’t worry you can always change the design",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 91, 49, 159),
                    fontFamily: 'Rubik.Black',
                    fontSize: 16,
                  ),
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  "of your dashboard later. Just enter the settings.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 91, 49, 159),
                    fontFamily: 'Rubik.Black',
                    fontSize: 16,
                  ),
                ),
              ]),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 60,
                color: Color.fromARGB(255, 67, 97, 238),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeWidget()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Next",
                  style: TextStyle(
                      fontFamily: 'Rubik.Regular',
                      color: Colors.white,
                      fontSize: 40),
                ),
              )
            ])
          ]),
    ));
  }
}
