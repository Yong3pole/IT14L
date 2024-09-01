import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Sample Layouts'),
          ),
          backgroundColor: const Color.fromARGB(255, 166, 56, 199),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 120,
                width: 120,
                color: Colors.green,
              ),
              Container(
                height: 90,
                width: 90,
                color: const Color.fromARGB(255, 245, 82, 95),
              ),
              Container(
                height: 50,
                width: 50,
                color: const Color.fromARGB(255, 82, 93, 255),
              ),
            ],
          ),
        ));
  }
}
