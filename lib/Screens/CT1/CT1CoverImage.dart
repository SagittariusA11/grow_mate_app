import 'package:flutter/material.dart';

class CT1CoverImage extends StatefulWidget {

  @override
  State<CT1CoverImage> createState() => _CT1CoverImageState();
}

class _CT1CoverImageState extends State<CT1CoverImage> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          constraints: BoxConstraints.expand(
            height: 260.0,
            width: double.infinity,
          ),
          decoration: BoxDecoration(color: Colors.grey),
          child: Image.asset(
            "assets/images/CT1/CoverImage.jpeg",
            height: 250.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),

        Positioned(
          bottom: 10,
          left: 10,

          child: Container(
            width: 300.0,
            padding: const EdgeInsets.all(5),
            child: Text(
              "Will China invade Taiwan before end September?",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        Positioned(
          bottom: 15,
          right: 10,

          child: Container(
            width: 50.0,
            height: 50.0,
            padding: const EdgeInsets.all(5),
            child: Image.asset(
              'assets/icons/menu.png',
            ),
          ),
        ),

        Positioned(
          top: 15,
          right: 10,

          child: Container(
            width: 40.0,
            height: 40.0,
            padding: const EdgeInsets.all(5),
            child: Image.asset(
              'assets/icons/share.png',
            ),
          ),
        ),
      ],
    );
  }
}