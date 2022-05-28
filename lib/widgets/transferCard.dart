import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utilities/themeColors.dart';

class TransferCard extends StatefulWidget {
  final String title;
  final String icon;

  const TransferCard({
    required this.title,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  State<TransferCard> createState() => _TransferCardState();
}

class _TransferCardState extends State<TransferCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 120,
          width: 100,
          decoration: BoxDecoration(
            color: ThemeColors.lightGrey,
            borderRadius: BorderRadius.circular(10.0),
          ),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
            ),
            child: Column(
              children: [
                SvgPicture.asset(
                  widget.icon,
                  // color: selectedIndex == 2 ? Colors.black : Colors.grey,
                ),
                Container(
                  height: 55,
                  child: Center(
                    child: Text(
                      widget.title,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
