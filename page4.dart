import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Sample 4 na po'),
        ),
        backgroundColor: const Color.fromARGB(255, 166, 56, 199),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(20),
              child: Image.asset('assets/photo_female_1.jpg', width: 250),
            ),
            Container(
              color: Colors.amber,
              padding: const EdgeInsets.symmetric(horizontal: 72),
              child: Column(
                children: [
                  Text('Mary Shaw',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  Text('maryshaw@email.com'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Friends'),
                Text('Followers'),
                Text('Posts'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('999'),
                Text('2k'),
                Text('3'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
