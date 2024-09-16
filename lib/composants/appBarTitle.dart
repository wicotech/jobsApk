import 'package:flutter/material.dart';

class Appbartitle extends StatelessWidget {
  const Appbartitle({super.key, required this.titre});

  final String titre;
  @override
  Widget build(BuildContext context) {
    return Text(titre, style: TextStyle(
        fontWeight: FontWeight.bold
    ),);
  }
}
