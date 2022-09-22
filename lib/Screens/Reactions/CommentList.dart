import 'package:flutter/material.dart';

class CommentList extends StatefulWidget {

  @override
  State<CommentList> createState() => _CommentListState();
}

class CardItem {
  final String imageUrl;
  final String name;
  final String text;

  const CardItem({
    required this.imageUrl,
    required this.name,
    required this.text,
  });
}

class _CommentListState extends State<CommentList> {

  List<CardItem> items = [
    CardItem(
      imageUrl: 'assets/images/image1.png',
      name: "Linda",
      text: "If China does indeed attack Taiwan soon, October is the likely time since the...",
    ),
    CardItem(
      imageUrl: 'assets/images/image2.png',
      name: "TomBN",
      text: "I will be surprised if #China will in fact attack Taiwan. Doing so requires lots of...",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175.0,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 0.0),
      child: SizedBox(
        height: 80.0,
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: 2,
          separatorBuilder: (context, _) => SizedBox(width: 10),
          itemBuilder: (context, index) => buildCard(items[index]),
        ),
      ),
    );
  }

  Widget buildCard(CardItem item) => Container(
    height: 80.0,
    child: Container(
      child: Row(
        children: [
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color.fromARGB(134, 72, 70, 70)
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(3.0, 3.0, 3.0, 3.0),
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Image.asset(
                  item.imageUrl
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 0.0),
            height: 80.0,
            width: 275.0,
            child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: item.name, style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' '),
                      TextSpan(text: item.text),
                      TextSpan(text: ' more', style: TextStyle(color: Colors.grey))
                    ]
                )
            ),
          )
        ],
      ),
    ),
  );

}
