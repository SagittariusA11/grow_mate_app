import 'package:flutter/material.dart';
import 'package:grow_mate_app/Screens/Related/RelatedList.dart';
import 'package:grow_mate_app/Screens/Related/RelatedMore.dart';

class getRelatedContainer extends StatefulWidget {
  const getRelatedContainer({Key? key}) : super(key: key);

  @override
  State<getRelatedContainer> createState() => _getRelatedContainerState();
}

class _getRelatedContainerState extends State<getRelatedContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RelatedList(),
          Container(
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 25.0, 0.0),
            alignment: Alignment.centerRight,
            child: const Text(
              'more...',
              style: TextStyle(
                color: Color.fromARGB(108, 0, 0, 0),
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
      onTap: () => showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(7.0)
          )
        ),
        context: context,
        builder: (context) => buildSheet(),
      ),
    );
  }

  Widget buildSheet() => Column(
    children: [
      Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(48, 0, 0, 0),
            )
          )
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 325.0,
                  margin: const EdgeInsets.fromLTRB(25.0, 25.0, 0.0, 0.0),
                  child: const Text(
                    'Related',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Color.fromARGB(150, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25.0, 25.0, 10.0, 0.0),
                  width: 25.0,
                  height: 25.0,
                  child: InkWell(
                    child: Image.asset(
                      'assets/icons/cancel.png',
                    ),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(25.0, 15.0, 10.0, 15.0),
                  width: 70.0,
                  height: 25.0,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(17.0, 0.0, 15.0, 0.0),
                    child: const Text(
                      'Top',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                  width: 100.0,
                  height: 25.0,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(17.0, 0.0, 15.0, 0.0),
                    child: const Text(
                      'Newest',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      RelatedMore(),
    ],
  );
}
