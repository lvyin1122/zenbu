import 'package:zenbu/pages/allTransactions.dart';
import 'package:zenbu/utilities/themeStyles.dart';
import 'package:zenbu/widgets/transactionCard.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatefulWidget {
  @override
  _RecentTransactionsState createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 15.0,
            bottom: 16.0,
            top: 16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Recent Transactions', style: ThemeStyles.primaryTitle),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AllTransactions(),
                    ),
                  );
                },
                child: Text('See All', style: ThemeStyles.seeAll),
              ),
            ],
          ),
        ),
        Column(
          children: [
            TransactionCard(
              color: Colors.black,
              letter: 'F',
              title: 'Fintory GmbH',
              subTitle: 'Finance Landing Page',
              price: '- \$ 5.720,30',
            ),
            TransactionCard(
              color: Color(0xfffe695d),
              letter: 'D',
              title: 'Domink Schmidit',
              subTitle: 'Mykonos Hotel Booking',
              price: '- \$ 620,30',
            ),
            TransactionCard(
              color: Color(0xff103289),
              letter: 'E',
              title: 'Evolt.io',
              subTitle: 'Evolt UI Kit',
              price: '- \$ 59,99',
            ),
            TransactionCard(
              color: Colors.greenAccent,
              letter: 'F',
              title: 'Fintory GmbH',
              subTitle: 'Finance Landing Page',
              price: '- \$ 5.720,30',
            ),
            TransactionCard(
              color: Colors.amberAccent,
              letter: 'E',
              title: 'Evolt.io',
              subTitle: 'Evolt UI Kit',
              price: '- \$ 59,99',
            ),
          ],
        ),
      ],
    );
  }
}
