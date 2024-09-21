import 'package:flutter/material.dart';

class PrepPage extends StatelessWidget {
  PrepPage({super.key});

  static const description = Column(
    children: [
      Text(
        'She is smiling like she used to smile way back then. '
        'She is feeling like she used to feel way back when they tried, but somethin'
        ' kept them waiting for this magic moment.',
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.justify,
      ),
    ],
  );

  final txtDesign = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
  );

  final txtDesign2 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );

  Widget buildIconTab(IconData iconVal, String title, String time) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconVal,
          color: Colors.green,
          size: 50,
        ),
        SizedBox(height: 20),
        Text(
          title,
          style: txtDesign2,
        ),
        SizedBox(height: 20),
        Text(
          time,
          style: txtDesign2,
        ),
      ],
    );
  }

  Widget buildRowTabs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildIconTab(Icons.kitchen, 'PREP', '25 mins'),
        buildIconTab(Icons.soup_kitchen_sharp, 'COOK', '1 hr.'),
        buildIconTab(Icons.restaurant, 'EAT', '15 mins'),
      ],
    );
  }

  Widget buildColumn() {
    return Column(
      children: [
        Image.asset('assets/pavlova.jpeg'),
        SizedBox(height: 15),
        Text(
          'Strawberry Pavlova',
          style: txtDesign,
        ),
      ],
    );
  }

  buildIconStar(int rating, int numReviews) =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        for (int i = 1; i <= rating; i++)
          const Icon(
            Icons.star,
            color: Colors.yellow,
            size: 24,
          ),
        for (int i = 1; i <= 5 - rating; i++)
          const Icon(
            Icons.star,
            color: Colors.grey,
            size: 24,
          ),
        SizedBox(
          width: 20,
        ),
        Text(
          '$numReviews Reviews',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pavlova Page',
          style: txtDesign,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            buildColumn(),
            buildIconStar(4, 30),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: description,
            ),
            SizedBox(height: 20),
            buildRowTabs(),
          ],
        ),
      ),
    );
  }
}
