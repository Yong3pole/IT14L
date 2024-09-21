import 'package:flutter/material.dart';

class StarPage extends StatelessWidget {
  StarPage({super.key});

  final txtDesign = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

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
        Text('$numReviews Reviews'),
      ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Dynamic Page',
            style: txtDesign,
          ),
        ),
        body: Center(
          child: buildIconStar(3, 1000),
        ));
  }
}
