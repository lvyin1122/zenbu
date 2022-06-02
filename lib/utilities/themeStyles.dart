import 'package:zenbu/utilities/themeColors.dart';
import 'package:flutter/material.dart';

class ThemeStyles {
  static TextStyle defaultText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: ThemeColors.black,
  );
  static TextStyle primaryTitle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
    color: ThemeColors.black,
  );
  static TextStyle secondaryTitle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: ThemeColors.black,
  );

  static TextStyle homeSalute = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.w700,
    color: ThemeColors.tertiary,
  );
  static TextStyle totalBalance = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: ThemeColors.black,
  );

  static TextStyle seeAll = TextStyle(
    fontSize: 16.0,
    color: ThemeColors.black,
  );
  static TextStyle cardDetails = TextStyle(
    fontSize: 17.0,
    color: Color.fromARGB(255, 208, 208, 208),
    fontWeight: FontWeight.w600,
  );
  static TextStyle cardMoney = TextStyle(
    color: Color.fromARGB(255, 208, 208, 208),
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
  );
  static TextStyle tagText = TextStyle(
    fontStyle: FontStyle.italic,
    color: ThemeColors.black,
    fontWeight: FontWeight.w500,
  );
  static TextStyle otherDetailsPrimary = TextStyle(
    fontSize: 16.0,
    color: ThemeColors.black,
  );
  static TextStyle otherDetailsSecondary = TextStyle(
    fontSize: 12.0,
    color: Colors.grey,
  );

  static BoxShadow defaultBoxShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.25),
    spreadRadius: 2,
    blurRadius: 5,
    offset: Offset(0, 3), // changes position of shadow
  );
}
