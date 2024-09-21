import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  IconPage({super.key});

  final txtDesign = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
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
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 50,
            ),
            Icon(
              Icons.music_note,
              color: Colors.green,
              size: 50,
            ),
            Icon(
              Icons.beach_access,
              color: Colors.yellow,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
