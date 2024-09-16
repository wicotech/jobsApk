import 'package:flutter/material.dart';


class Certifbadge extends StatelessWidget {
  const Certifbadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.verified, color: Colors.white,size: 12,),
          Text("Certifié",
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
