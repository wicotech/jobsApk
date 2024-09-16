import 'package:flutter/material.dart';
import 'package:jobs/composants/profil.dart';

import 'boutonDimensions.dart';
import 'certifbadge.dart';
import 'espaces.dart';

class Serviceitem extends StatelessWidget {
  const Serviceitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 15, 5, 15),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        //border: Border.all(width: 0.5, color: Colors.black),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(2, 1), // Shadow position
            ),
          ]
        //color: Colors.red,
      ),
      child: Row(
        children: [
          Container(
            width:90,
            height: double.infinity,
            //color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Profil(rayon: 40,),
                Text("Nom du prestataire",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                  ),
                ),
                Text("Profession",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style:  TextStyle(
                      fontSize: 11
                  ),
                ),
                Certifbadge()

              ],
            ),
          ),

          EspacesH(largeur: 20),
          Container(
            width: 220,
            //color: Colors.blue,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height:30,
                        width: 30,
                        child: Image.asset("assets/images/carton.png")
                    ),
                    EspacesH(largeur: 8),
                    Text("Electricité Bâtiment",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),

                  ],
                ),
                Text("Le Lorem Ipsum est simplement du faux texte employé"
                    " dans la composition et la mise en page avant impression"
                    ". Le Lorem Ipsum est le faux texte standard de l'imprimerie "
                    "depuis les années 1500, quand un imprimeur anonyme assembla "
                    "ensemble des morceaux de texte pour réaliser un livre spécimen"
                    " de polices de texte. Il n'a pas fait que survivre cinq siècles,"
                    " mais s'est aussi adapté à la bureautique informatique, sans que"
                    " son contenu n'en soit modifié. Il a été popularisé dans les année"
                    "s 1960 grâce à la vente de feuilles Letraset contenant des passages"
                    " du Lorem Ipsum, et, plus récemment, par son inclusion dans des app"
                    "lications de mise en page de texte, comme Aldus PageMaker.",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),

                EspacesV(hauteur: 8),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Boutondimensions(
                        hauteur: 25,
                        largeur: 80,
                        onTap: (){},
                        texte: "Lire plus",
                        couleur: Colors.green),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
