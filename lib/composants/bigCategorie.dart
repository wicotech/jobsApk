import 'package:flutter/material.dart';

import 'espaces.dart';


class Bigcategorie extends StatelessWidget {
  const Bigcategorie({super.key,  required this.path, required this.nom, required this.stat});

  final String path;
  final String nom;
  final String stat;

  @override
  Widget build(BuildContext context) {
    final double radius = 15;
    return SizedBox(
      height: 60,
      width: 230,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radius),
                bottomLeft: Radius.circular(radius),
                bottomRight: Radius.circular(radius),
                topRight: Radius.circular(radius))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height:60,
                child: Image.asset(path)
            ),
            EspacesH(largeur: 20),
            
            Container(
              width: 100,
              //color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nom, style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500
                  ),),

                  Text(stat)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
