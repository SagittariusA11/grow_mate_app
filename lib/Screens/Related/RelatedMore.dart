import 'package:flutter/material.dart';

class RelatedMore extends StatefulWidget {

  @override
  State<RelatedMore> createState() => _RelatedMoreState();
}

class SheetItem {
  final String imageUrl;
  final String text;

  const SheetItem({
    required this.imageUrl,
    required this.text,
  });
}

class _RelatedMoreState extends State<RelatedMore> {

  List<SheetItem> items = [
    const SheetItem(
      imageUrl: 'assets/images/CT1/liz_truss.jpg',
      text: "Liz Truss will be UK's next Prime Minister?",
    ),
    const SheetItem(
      imageUrl: 'assets/images/CT1/pound.jpeg',
      text: "British Pound will fall after Prime Minister elections?",
    ),
    const SheetItem(
      imageUrl: 'assets/images/CT1/strike.jpg',
      text: "British Railway Strikes will end by before Sept. 2022?",
    ),
    const SheetItem(
      imageUrl: 'assets/images/CT1/liz_truss.jpg',
      text: "Liz Truss will be UK's next Prime Minister?",
    ),
    const SheetItem(
      imageUrl: 'assets/images/CT1/pound.jpeg',
      text: "British Pound will fall after Prime Minister elections?",
    ),
    const SheetItem(
      imageUrl: 'assets/images/CT1/strike.jpg',
      text: "British Railway Strikes will end by before Sept. 2022?",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330.0,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 10.0),
      child: SizedBox(
        height: 50.0,
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => buildSheetCard(items[index]),
          separatorBuilder: (context, _) => const SizedBox(width: 10.0,),
          itemCount: 6,
        ),
      ),
    );
  }

  Widget buildSheetCard(SheetItem item) => Container(
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
