import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:jobs/colors.dart';


class Dotted extends StatelessWidget {
  const Dotted({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: primary,
      strokeWidth: 2,
      dashPattern: [6,3],
      borderType: BorderType.RRect,
      radius: Radius.circular(2.2),
      child: Container(
        width: 70,
        height: 70,
      ),
    );
  }
}
