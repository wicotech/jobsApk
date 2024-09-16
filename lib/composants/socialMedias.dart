import 'package:flutter/material.dart';


class Socialmedias extends StatelessWidget {
  const Socialmedias({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20,top: 15, bottom: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black38),
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[200]),
      child: Image.asset(
        path,
        height: 30,
      ),
    );
  }
}
