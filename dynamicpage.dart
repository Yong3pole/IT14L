import 'package:flutter/material.dart';

class DynamicPage extends StatelessWidget {
  DynamicPage({super.key});

  final txtDesign = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  buildNewRow() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/photo_male_1.jpg',
          ),
        ],
      );

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is a custom text',
              style: txtDesign,
            ),
            buildNewRow(),
          ],
        ),
      ),
    );
  }
}
