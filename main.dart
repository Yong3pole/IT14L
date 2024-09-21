import 'package:flutter/material.dart';
import 'package:flutter_application_tripole_task1/ClickableInkWellExample.dart';

import 'package:flutter_application_tripole_task1/test';
// import 'package:flutter_application_tripole_task1/itemview.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
        ),
        home: ClickableInkWellExample());
  }
}
