import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({
    super.key,
    required this.username,
    required this.password,
  });

  // ignore: prefer_typing_uninitialized_variables
  final String username;
  // ignore: prefer_typing_uninitialized_variables
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('The username is: $username'),
            Text('The password is: $password'),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Process
              },
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
