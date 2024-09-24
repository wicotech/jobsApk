import 'package:flutter/material.dart';
import 'package:jobs/colors.dart';



class Toutvoir extends StatelessWidget {
  const Toutvoir({super.key, required this.onTap});

  final onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        "Tout voir",
        style: TextStyle(fontSize: 15, color: primary[300]),
      ),
    );
  }
}
