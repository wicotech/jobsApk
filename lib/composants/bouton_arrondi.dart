import 'package:flutter/material.dart';

class BoutonArrondi extends StatelessWidget {
  const BoutonArrondi({super.key, required this.onTap, required this.texte, required this.couleur, required this.couleurTexte});

  final onTap;
  final String texte;
  final couleur;
  final couleurTexte;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 1,
              offset: Offset(1, 3),
            ),
          ],
            color: couleur,
            borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          texte,
          style: TextStyle(fontSize: 16, color: couleurTexte),
        )),
      ),
    );
  }
}
