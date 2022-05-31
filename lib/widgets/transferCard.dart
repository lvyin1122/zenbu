import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';

import '../utilities/themeColors.dart';

class TransferCard extends StatefulWidget {
  final String title;
  final IconData icon;

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
          height: 150,
          width: 100,
          decoration: BoxDecoration(
            color: ThemeColors.lightGrey,
            gradient: RadialGradient(
                center: Alignment.bottomCenter,
                colors: [
                  ThemeColors.primary,
                  ThemeColors.secondary,
                  ThemeColors.tertiary,
                ],
                radius: 1.5),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 2), // changes position of shadow
              ),
            ],
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
                Icon(
                  widget.icon,
                  size: 32,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Container(
                    height: 40,
                    child: Center(
                      child: Text(
                        widget.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
