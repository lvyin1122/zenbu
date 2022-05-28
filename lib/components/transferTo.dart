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
    TransferCard(title: "Mobile or email", icon: 'assets/settings-icon.svg'),
    TransferCard(title: "Bank account", icon: 'assets/settings-icon.svg'),
    TransferCard(title: "Own Zenbu accounts", icon: 'assets/settings-icon.svg'),
    TransferCard(title: "FPS", icon: 'assets/settings-icon.svg'),
  ];

  List<Widget> cardList2 = [
    TransferCard(title: "Alvi", icon: 'assets/smiley-icon.svg'),
    TransferCard(title: "Lisa", icon: 'assets/smiley-icon.svg'),
    TransferCard(title: "Jack", icon: 'assets/smiley-icon.svg'),
    TransferCard(title: "Sadman", icon: 'assets/smiley-icon.svg'),
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
              height: 120.0,
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
              height: 120.0,
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
