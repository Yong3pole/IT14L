import 'package:flutter/material.dart';

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page 2'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.home),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close_rounded),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to page 2'),
          ],
        ),
      ),
    );
  }
}
