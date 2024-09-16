import 'package:flutter/material.dart';


// Ce composant permet d'ajouter des espaces verticaux

class EspacesV extends StatelessWidget {
  const EspacesV({super.key, required this.hauteur});

  final double hauteur;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: hauteur,);
  }
}

// ce composant permet d'ajouter des espaces horizontaux
class EspacesH extends StatelessWidget {
  const EspacesH({super.key, required this.largeur});

  final double largeur;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: largeur,);
  }
}

