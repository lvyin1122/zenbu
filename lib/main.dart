import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zenbu/pages/investment-options.dart';
import 'package:zenbu/pages/rewardPage.dart';
import 'package:zenbu/welcome_page.dart';

// Enable dragging in Web mode
class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      // home: HomeWidget(),
      home: WelcomePage(),
      // home: InvestOptionsPage(),
      scrollBehavior: AppScrollBehavior(),
    );
  }
}
