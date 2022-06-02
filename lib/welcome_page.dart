import 'package:flutter/material.dart';
import 'package:zenbu/home_widget.dart';
import 'package:zenbu/pages/login.dart';
import 'package:zenbu/pages/signup.dart';

import 'utilities/themeColors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: size.height,
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAvatar(),
              Text("Welcome, Mirio!"),
              buildButton(context),
              // buildRow(),
              // buildButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildAvatar() => Container(
      child: ClipOval(
        child: Material(
          color: Colors.transparent,
          child: Ink.image(
            image: Image.asset("assets/images/user.png").image,
            fit: BoxFit.cover,
            width: 64,
            height: 64,
          ),
        ),
      ),
    );

Widget buildButton(context) => MaterialButton(
      minWidth: double.infinity,
      height: 60,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeWidget()));
      },
      color: Color(0xff0095FF),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        "Login",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
