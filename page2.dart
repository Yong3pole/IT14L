import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Image Assets')),
        backgroundColor: const Color.fromARGB(255, 166, 56, 199),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset('assets/photo_male_1.jpg', width: 200),
            ),
            Expanded(
              child: Image.asset('assets/photo_male_2.jpg', width: 100),
              flex: 2,
            ),
            Expanded(
              child: Image.asset('assets/photo_male_3.jpg', width: 200),
            ),
          ],
        ),
      ),
    );
  }
}
