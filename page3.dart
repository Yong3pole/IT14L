import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Spacing/Padding'),
        ),
        backgroundColor: const Color.fromARGB(255, 166, 56, 199),
      ),
      body: Row(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.yellow,
            child: Text(
              'Text 1',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 20, 30, 10),
            color: const Color.fromARGB(255, 253, 65, 128),
            child: Text(
              'Text 2',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 87, 255, 87),
            child: Text(
              'Text 2',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ],
      ),
    );
  }
}
