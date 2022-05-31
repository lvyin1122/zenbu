import 'package:zenbu/components/transferTo.dart';
import 'package:flutter/cupertino.dart';

import '../components/appbar.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Appbar(
              title: "Transaction",
            ),
            TransferTo(),
          ],
        ),
      ),
    );
  }
}
