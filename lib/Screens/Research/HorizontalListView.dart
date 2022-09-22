import 'package:flutter/material.dart';

class ResearchList extends StatefulWidget {

  @override
  State<ResearchList> createState() => _ResearchListState();
}

class CardItem {
  final String title;
  final String date;
  final String text;

  const CardItem({
    required this.title,
    required this.date,
    required this.text,
  });
}

class _ResearchListState extends State<ResearchList> {

  List<CardItem> items = [
    const CardItem(
      title: "Thehill",
      date: "1 Sept",
      text: "Last week, the dire warnings that appeared in the Wall Street Journal. The Economist and Foreign Affairs about China'a imminent war with or...",
    ),
    const CardItem(
      title: "BBC",
      date: "1 Sept",
      text: "Most people the BBC spoke to do not believe China is about to attack Tiwan, 'They're a bunch of gangsters' said one man fishing on the...",
    ),
    const CardItem(
      title: "BBC",
      date: "1 Sept",
      text: "Most people the BBC spoke to do not believe China is about to attack Tiwan, 'They're a bunch of gangsters' said one man fishing on the...",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(35.0, 13.0, 35.0, 0.0),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0)
        ),
        child: SizedBox(
          height: 130.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            separatorBuilder: (context, _) => const SizedBox(width: 10),
            itemBuilder: (context, index) => buildCard(items[index]),
          )
        )
    );
  }
  Widget buildCard(CardItem item) => Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(15.0)
    ),
    width: 225,
    height: 130,
    child: Column(
      children: [
        SizedBox(
          height: 30.0,
          child: Row(
            children: [
              Container(
                width: 90.5,
                margin: const EdgeInsets.fromLTRB(15.0, 5.0, 0.0, 0.0),
                child: Text(
                  item.title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 100.5,
                margin: const EdgeInsets.fromLTRB(0.0, 5.0, 10.0, 0.0),
                child: Text(
                  item.date,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 80.0,
          margin: const EdgeInsets.fromLTRB(15.0, 5.0, 10.0, 0.0),
          child: Text(
            item.text,
            style: const TextStyle(
              fontSize: 14.0,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 3.0),
          height: 10.0,
          child: Image.asset(
            'assets/icons/go_to.png'
          ),
        )
      ],
    ),
  );
}
