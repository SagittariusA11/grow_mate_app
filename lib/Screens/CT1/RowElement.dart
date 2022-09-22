import 'package:flutter/material.dart';

class RowElement extends StatefulWidget {
  const RowElement({Key? key}) : super(key: key);

  @override
  State<RowElement> createState() => _RowElementState();
}

class _RowElementState extends State<RowElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(
          height: 80.0,
          width: double.infinity,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/CT1/RowImage.jpg'),
              fit: BoxFit.cover,
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100.0,
              height: double.infinity,
              margin: const EdgeInsets.fromLTRB(0.0, 11.0, 0.0, 0.0),
              child: Column(
                children: [
                  Text(
                    "CHANCE",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "11%",
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: 35.0,
                height: double.infinity,
                margin: const EdgeInsets.fromLTRB(0.0, 22.0, 0.0, 25.0),
                child: Image.asset(
                    'assets/icons/up_arrow.png'
                )
            ),
            Container(
              width: 65.0,
              height: double.infinity,
              margin: const EdgeInsets.fromLTRB(0.0, 37.0, 0.0, 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "24H",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "+25495\$",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 75.0,
              height: double.infinity,
              margin: const EdgeInsets.fromLTRB(25.0, 12.0, 0.0, 0.0),
              child: Column(
                children: [
                  Text(
                    "\$09",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 0.0),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Text(
                      "Yes",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 75.0,
              height: double.infinity,
              margin: const EdgeInsets.fromLTRB(20.0, 12.0, 0.0, 0.0),
              child: Column(
                children: [
                  Text(
                    "\$89",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 0.0),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Text(
                      "No",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}


