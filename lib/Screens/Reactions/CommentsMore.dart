import 'package:flutter/material.dart';

class CommentsMore extends StatefulWidget {

  @override
  State<CommentsMore> createState() => _CommentsMoreState();
}

class CommentCardItem {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final String replies;

  const CommentCardItem({
    required this.imageUrl,
    required this.name,
    required this.text,
    required this.time,
    required this.replies,
  });
}

class _CommentsMoreState extends State<CommentsMore> {

  List<CommentCardItem> items = [
    const CommentCardItem(
      imageUrl: 'assets/images/image1.png',
      name: "Linda",
      text: "If China does indeed attack Taiwan soon, October is the likely time since the...",
      time: '1h ago',
      replies: '5',
    ),
    const CommentCardItem(
      imageUrl: 'assets/images/image2.png',
      name: "TomBN",
      text: "I will be surprised if #China will in fact attack Taiwan. Doing so requires lots of...",
      time: '3h ago',
      replies: '1',
    ),
    const CommentCardItem(
      imageUrl: 'assets/images/image1.png',
      name: "Linda",
      text: "If China does indeed attack Taiwan soon, October is the likely time since the If China does indeed attack Taiwan soon, October is the likely time since If China does indeed attack Taiwan soon, October is the likely time since ...",
      time: '9h ago',
      replies: '23',
    ),
    const CommentCardItem(
      imageUrl: 'assets/images/image2.png',
      name: "TomBN",
      text: "I will be surprised if #China will in fact attack Taiwan. Doing so requires lots of...",
      time: '1d ago',
      replies: '1',
    ),
    const CommentCardItem(
      imageUrl: 'assets/images/image1.png',
      name: "Linda",
      text: "If China does indeed attack Taiwan soon, October is the likely time since If China does indeed attack Taiwan soon, October is the likely time since If China does indeed attack Taiwan soon, October is the likely time since the...",
      time: '2d ago',
      replies: '20',
    ),
    const CommentCardItem(
      imageUrl: 'assets/images/image2.png',
      name: "TomBN",
      text: "I will be surprised if #China will in fact attack Taiwan. Doing so requires lots of...",
      time: '2d ago',
      replies: '30',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(15.0, 0.0, 10.0, 0.0),
      child: SizedBox(
        height: 80.0,
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: 6,
          separatorBuilder: (context, _) => const SizedBox(width: 10),
          itemBuilder: (context, index) => buildCommentCard(items[index]),
        ),
      ),
    );
  }

  Widget buildCommentCard(CommentCardItem item) => Row(
    children: [
      SizedBox(
        width: 40.0,
        child: Container(
          margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: const Color.fromARGB(134, 72, 70, 70)
          ),
          child: Container(
            margin: const EdgeInsets.fromLTRB(3.0, 3.0, 3.0, 3.0),
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Image.asset(
                item.imageUrl
            ),
          ),
        ),
      ),
      Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
        width: 275.0,
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                item.name + ' . ' + item.time,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
            ),
            Text(
              item.text,
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 10.0),
                    height: 15.0,
                    width: 15.0,
                    child: Image.asset(
                      'assets/icons/like.png'
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 10.0),
                    height: 15.0,
                    width: 15.0,
                    child: Image.asset(
                      'assets/icons/dislike.png'
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 10.0),
                    height: 15.0,
                    width: 15.0,
                    child: Image.asset(
                      'assets/icons/comment.png'
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
              alignment: Alignment.centerLeft,
              child: Text(
                item.replies + ' REPLIES',
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      )
    ],
  );

}
