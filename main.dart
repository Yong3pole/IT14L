import 'package:flutter/material.dart';
import 'package:flutter_application_tripole_task1/page5.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, // Disables the debug banner
      home: const Page5(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Page5());
  }
}
