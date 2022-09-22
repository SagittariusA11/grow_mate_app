import 'package:flutter/material.dart';
import 'package:grow_mate_app/Screens/CT1/CT1CoverImage.dart';
import 'package:grow_mate_app/Screens/CT1/RowElement.dart';
import 'package:grow_mate_app/Screens/CT1/SwitchCase.dart';
import 'package:grow_mate_app/Screens/NavigationBar.dart';

class CT1 extends StatefulWidget {

  @override
  State<CT1> createState() => _CT1State();
}

class _CT1State extends State<CT1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CT1CoverImage(),
              const RowElement(),
              SwitchCase(),
              NavBar(),
            ],
          ),
        )
    );
  }
}
