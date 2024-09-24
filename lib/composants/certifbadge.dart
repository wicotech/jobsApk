import 'package:flutter/material.dart';

import '../colors.dart';


class Certifbadge extends StatelessWidget {
  const Certifbadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 65,
      decoration: BoxDecoration(
        color: primaryAccent[700],
        borderRadius: BorderRadius.circular(10)
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.verified, color: Colors.white,size: 12,),
          Text("Certifié",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
