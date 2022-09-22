import 'dart:ui';

import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
            padding: const EdgeInsets.all(7.0),
            width: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 229, 69, 199),
                  Color.fromARGB(255, 227, 181, 217),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            ),
            child: Image.asset(
              "assets/icons/news_feed.png",
              color: Colors.white,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
            padding: const EdgeInsets.all(7.0),
            width: 60.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
            ),
            child: Image.asset(
                "assets/icons/growth.png"
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
            padding: const EdgeInsets.all(7.0),
            width: 60.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
            ),
            child: Image.asset(
                "assets/icons/pie_chart.png"
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
            padding: const EdgeInsets.all(7.0),
            width: 60.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
            ),
            child: Image.asset(
              "assets/icons/account.png",
            ),
          ),
        ],
      ),
    );
  }
}
