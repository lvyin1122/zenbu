import 'package:flutter_icons/flutter_icons.dart';
import 'package:zenbu/widgets/transferCard.dart';
import 'package:flutter/material.dart';

import '../utilities/themeStyles.dart';

class TransferTo extends StatefulWidget {
  const TransferTo({Key? key}) : super(key: key);

  @override
  State<TransferTo> createState() => _TransferToState();
}

class _TransferToState extends State<TransferTo> {
  List<Widget> cardList1 = [
    TransferCard(title: "Mobile or email", icon: Ionicons.ios_mail),
    TransferCard(title: "Bank account", icon: Ionicons.md_card),
    TransferCard(title: "Own Zenbu accounts", icon: Ionicons.md_infinite),
    TransferCard(title: "FPS", icon: Ionicons.md_log_in),
  ];

  List<Widget> cardList2 = [
    TransferCard(title: "Alvi", icon: Ionicons.md_person),
    TransferCard(title: "Lisa", icon: Ionicons.md_person),
    TransferCard(title: "Jack", icon: Ionicons.md_person),
    TransferCard(title: "Sadman", icon: Ionicons.md_person),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 16.0,
                top: 32.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Transfer to', style: ThemeStyles.primaryTitle),
                ],
              ),
            ),
            Container(
              height: 130.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: cardList1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 16.0,
                top: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Transfer to a frequent payee',
                      style: ThemeStyles.primaryTitle),
                ],
              ),
            ),
            Container(
              height: 130.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: cardList2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
