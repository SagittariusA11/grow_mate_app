import 'package:flutter/material.dart';
import 'package:grow_mate_app/Screens/Reactions/CommentList.dart';
import 'package:grow_mate_app/Screens/Reactions/CommentsMore.dart';

class getReactionsContainer extends StatefulWidget {
  const getReactionsContainer({Key? key}) : super(key: key);

  @override
  State<getReactionsContainer> createState() => _getReactionsContainerState();
}

class _getReactionsContainerState extends State<getReactionsContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 30.0,
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(30.0, 10.0, 0, 0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100.0,
                    child: Row(
                      children: [
                        Image.asset(
                            'assets/icons/view.png'
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(7.0, 0.0, 0.0, 0.0),
                          child: const Text(
                            '215',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    child: Row(
                      children: [
                        Image.asset(
                            'assets/icons/comment.png'
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(7.0, 0.0, 0.0, 0.0),
                          child: const Text(
                            '95K',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                    width: 165.0,
                    height: 20.0,
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                        'assets/icons/unfold.png'
                    ),
                  ),
                ],
              )
          ),
          CommentList(),
          SizedBox(
            width: double.infinity,
            height: 40.0,
            child: Row(
              children: [
                Container(
                  width: 225.0,
                  margin: const EdgeInsets.fromLTRB(50.0, 20.0, 0.0, 0.0),
                  child: const Text(
                    'Add comment...',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(171, 0, 0, 0),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  width: 40.0,
                  child: const Text(
                    '😍',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  width: 40.0,
                  child: const Text(
                    '😭',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  width: 40.0,
                  height: 15.0,
                  child: Image.asset(
                    'assets/icons/add.png',
                    color: const Color.fromARGB(113, 0, 0, 0),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      onTap: () => showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(7.0)
            )
        ),
        context: context,
        builder: (context) => buildCommentSheet(),
      ),
    );
  }

  Widget buildCommentSheet() => Column(
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
                    'Reactions',
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
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(13, 0, 0, 0),
              ),
              child: Container(
                margin: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: RichText(
                    text: const TextSpan(
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Remember to keep comments respectful and to follow our '),
                          TextSpan(text: 'Community Guidelines', style: TextStyle(color: Colors.blue))
                        ]
                    )
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 80.0,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(25.0,10.0, 15.0, 10.0),
                    height: 65.0,
                    width: 65.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(65.0),
                    ),
                    child: Image.asset(
                        'assets/images/image2.png'
                    ),
                  ),
                  Container(
                    width: 225.0,
                    margin: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                    child: const Text(
                      'Add comment...',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color.fromARGB(131, 0, 0, 0),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    width: 40.0,
                    height: 15.0,
                    child: Image.asset(
                      'assets/icons/add.png',
                      color: const Color.fromARGB(113, 0, 0, 0),
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),

      CommentsMore(),
    ],
  );

}
