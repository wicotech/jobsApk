import 'package:flutter/material.dart';


class Profil extends StatelessWidget {
  const Profil({super.key,required this.rayon, required this.bordure});

  final double rayon;
  final  bordure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: rayon,
      width: rayon,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        //color: Colors.grey,
        border: Border.all(width: 2, color: bordure),
        image: DecorationImage(image: AssetImage("assets/images/profil.jpg"))
      ),
    );
  }
}
