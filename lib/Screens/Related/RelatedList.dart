import 'package:flutter/material.dart';

class RelatedList extends StatefulWidget {

  @override
  State<RelatedList> createState() => _RelatedListState();
}

class CardItem {
  final String imageUrl;
  final String text;

  const CardItem({
    required this.imageUrl,
    required this.text,
  });
}

class _RelatedListState extends State<RelatedList> {

  List<CardItem> items = [
    const CardItem(
      imageUrl: 'assets/images/CT1/liz_truss.jpg',
      text: "Liz Truss will be UK's next Prime Minister?",
    ),
    const CardItem(
      imageUrl: 'assets/images/CT1/pound.jpeg',
      text: "British Pound will fall after Prime Minister elections?",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215.0,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
      child: SizedBox(
        height: 50.0,
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: 2,
          separatorBuilder: (context, _) => const SizedBox(width: 10),
          itemBuilder: (context, index) => buildCard(items[index]),
        ),
      ),
    );
  }

  Widget buildCard(CardItem item) => Container(
    height: 90.0,
    margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15.0),
    ),
        child: Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0)
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)
                ),
                child: Image.asset(
                  item.imageUrl,
                ),
              )
            ),
            Container(
              width: 200.0,
              height: 100.0,
              margin: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
              child: Text(
                item.text,
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
            )
          ],
        ),
  );

}
