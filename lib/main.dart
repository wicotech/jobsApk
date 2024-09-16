import 'package:flutter/material.dart';
import 'package:jobs/pages/manager.dart';
import 'package:jobs/themes/themeUn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: const Manager(),
    );
  }
}

