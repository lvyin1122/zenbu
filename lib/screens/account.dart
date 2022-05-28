import 'package:zenbu/components/recentTransactions.dart';
import 'package:flutter/material.dart';

import '../components/appbar.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: const [
            Appbar(title: "My Account"),
          ],
        ),
      ),
    );
  }
}
