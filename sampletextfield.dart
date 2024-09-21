import 'package:flutter/material.dart';
import 'package:flutter_application_tripole_task1/newpage.dart';

// ignore: must_be_immutable
class Sampletextfield extends StatelessWidget {
  Sampletextfield({super.key});

  TextEditingController txtController = TextEditingController();
  TextEditingController txtController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sample Textfield page')),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: txtController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter username',
                  labelText: 'USERNAME'),
              onChanged: (value) {},
            ),
            const SizedBox(height: 15),
            TextField(
              obscureText: true,
              controller: txtController1,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter password',
                  labelText: 'PASSWORD'),
              onChanged: (value) {},
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: Size.fromHeight(50),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NewPage(
                      username: '',
                      password: '',
                    ),
                  ),
                );
              },
              child: const Text('LOGIN'),
            ),
          ], //Children
        ),
      ),
    );
  }
}
