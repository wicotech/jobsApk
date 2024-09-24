import 'package:flutter/material.dart';


class Boutondimensions extends StatelessWidget {
  const Boutondimensions({super.key,
    required this.hauteur,
    required this.largeur,
    required this.onTap,
  required this.texte,
    required this.couleur});

  final double hauteur;
  final double largeur;
  final String texte;
  final onTap;
  final couleur;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(2),
        height: hauteur,
        width: largeur,
        decoration: BoxDecoration(
            color: couleur,
            borderRadius: BorderRadius.circular(4)),
        child: Center(
            child: Text(
              texte,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.white

              ),
            )),
      ),
    );
  }
}
