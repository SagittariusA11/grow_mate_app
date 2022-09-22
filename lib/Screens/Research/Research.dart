import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grow_mate_app/Screens/Research/HorizontalListView.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class getReasearchContainer extends StatefulWidget {
  const getReasearchContainer({Key? key}) : super(key: key);

  @override
  State<getReasearchContainer> createState() => _getReasearchContainerState();
}

class _getReasearchContainerState extends State<getReasearchContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 30.0,
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20.0, 15.0, 0, 0),
          child: const Text(
            "215 Expert Opinion",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Color.fromARGB(223, 65, 65, 65),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                margin: const EdgeInsets.fromLTRB(20.0, 5.0, 0, 0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(26, 229, 69, 199),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(45, 229, 69, 199),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(22.0, 26.0, 15.0, 25.0),
                    child: const Text(
                      "12%",
                      style: TextStyle(
                        color: Color.fromARGB(255, 229, 69, 199),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 100.0,
                margin: const EdgeInsets.fromLTRB(10.0, 0.0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinearPercentIndicator(
                      width: 175.0,
                      lineHeight: 7.0,
                      trailing: const Text(
                        "12% Buy Yes",
                        style: TextStyle(
                          color: Color.fromARGB(255, 229, 69, 199),
                          fontSize: 15.0,
                        ),
                      ),
                      percent: 0.12,
                      backgroundColor: const Color.fromARGB(255, 201, 201, 201),
                      progressColor: const Color.fromARGB(255, 229, 69, 199),
                      barRadius: const Radius.circular(7.0),
                    ),
                    LinearPercentIndicator(
                      width: 175.0,
                      lineHeight: 7.0,
                      trailing: const Text(
                        "88% Buy No",
                        style: TextStyle(
                          color: Color.fromARGB(255, 112, 112, 112),
                          fontSize: 15.0,
                        ),
                      ),
                      percent: 0.88,
                      backgroundColor: const Color.fromARGB(255, 201, 201, 201),
                      progressColor: const Color.fromARGB(255, 112, 112, 112),
                      barRadius: const Radius.circular(7.0),
                    ),
                    LinearPercentIndicator(
                      width: 175.0,
                      lineHeight: 7.0,
                      trailing: const Text(
                        "1% No Resolve",
                        style: TextStyle(
                          color: Color.fromARGB(255, 112, 112, 112),
                          fontSize: 15.0,
                        ),
                      ),
                      percent: 0.01,
                      backgroundColor: const Color.fromARGB(255, 201, 201, 201),
                      progressColor: const Color.fromARGB(255, 112, 112, 112),
                      barRadius: const Radius.circular(7.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ResearchList(),
      ],
    );
  }
}
