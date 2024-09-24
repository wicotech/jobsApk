import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobs/colors.dart';
import 'package:jobs/composants/espaces.dart';

class Categorie extends StatelessWidget {
  const Categorie({super.key, required this.path, required this.nom});


  final String path;
  final String nom;
  @override
  Widget build(BuildContext context) {
    final double radius = 10;
    return SizedBox(
      height: 40,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(10),
          decoration:  BoxDecoration(
              color: primary[50],
              borderRadius: BorderRadius.circular(radius)),
        child: Row(
          children: [
            Container(
                height:15,
                child: Image.asset(path)
            ),
            EspacesH(largeur: 8),

            Text(nom, style: TextStyle(
              //color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),)
          ],
        ),
      ),
    );
  }
}
