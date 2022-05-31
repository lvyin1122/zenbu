import 'package:flutter/material.dart';

import '../components/appbar.dart';
import '../components/exploreLinks.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            // color: Colors.grey.withOpacity(0.3),
            ),
        child: Column(
          children: const [
            Appbar(title: "Explore"),
            ExploreLinks(),
          ],
        ),
      ),
    );
  }
}
