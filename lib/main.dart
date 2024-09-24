import 'package:flutter/material.dart';
import 'package:jobs/colors.dart';
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
      theme: ThemeData(
        primarySwatch: primary,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: primary,
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.white
          ),
        ),
        drawerTheme: DrawerThemeData(
          backgroundColor: Colors.white
        ),
        inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: Colors.white,
          hintStyle: TextStyle(
            color: Colors.white
          ),

        )
      ),
      home: const Manager(),
    );
  }
}

