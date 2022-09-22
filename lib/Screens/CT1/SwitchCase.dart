import 'package:flutter/material.dart';
import 'package:grow_mate_app/Screens/Research/Research.dart';
import 'package:grow_mate_app/Screens/Reactions/Reactions.dart';
import 'package:grow_mate_app/Screens/Related/Related.dart';

enum WidgetMaker {Research, Reactions, Related}

class SwitchCase extends StatefulWidget {

  @override
  State<SwitchCase> createState() => _SwitchCaseState();
}

class _SwitchCaseState extends State<SwitchCase> {
  WidgetMaker selectedWidgetMaker = WidgetMaker.Research;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 2.0,
              )
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border (
                        bottom: BorderSide(
                          color: (selectedWidgetMaker == WidgetMaker.Research)? Color.fromARGB(255, 171, 47, 187) : Colors.white,
                          width: 3.0,
                        )
                    )
                ),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      selectedWidgetMaker = WidgetMaker.Research;
                    });
                  },
                  child: Text(
                      'Reasearch & News',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: (selectedWidgetMaker == WidgetMaker.Research)? Color.fromARGB(255, 171, 47, 187) : Colors.grey,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    border: Border (
                        bottom: BorderSide(
                          color: (selectedWidgetMaker == WidgetMaker.Reactions)? Color.fromARGB(255, 171, 47, 187) : Colors.white,
                          width: 3.0,
                        )
                    )
                ),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      selectedWidgetMaker = WidgetMaker.Reactions;
                    });
                  },
                  child: Text(
                      'Reactions',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: (selectedWidgetMaker == WidgetMaker.Reactions)? Color.fromARGB(255, 171, 47, 187) : Colors.grey,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    border: Border (
                        bottom: BorderSide(
                          color: (selectedWidgetMaker == WidgetMaker.Related)? Color.fromARGB(255, 171, 47, 187) : Colors.white,
                          width: 3.0,
                        )
                    )
                ),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      selectedWidgetMaker = WidgetMaker.Related;
                    });
                  },
                  child: Text(
                      'Related',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: (selectedWidgetMaker == WidgetMaker.Related)? Color.fromARGB(255, 171, 47, 187) : Colors.grey,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                ),
              ),
            ],
          ),
        ),

        Container(
          height: 298.0,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: getCustomContainer(),
        )
      ],
    );
  }

  Widget getCustomContainer() {
    switch (selectedWidgetMaker){
      case WidgetMaker.Research:
        return getReasearchContainer();
      case WidgetMaker.Reactions:
        return getReactionsContainer();
      case WidgetMaker.Related:
        return getRelatedContainer();
    }
  }

}



