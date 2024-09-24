import 'package:flutter/material.dart';
import 'package:jobs/colors.dart';
import 'package:jobs/composants/profil.dart';
import 'package:jobs/pages/detailService.dart';
import '../pages/ajoutDeService.dart';
import 'boutonDimensions.dart';
import 'certifbadge.dart';
import 'espaces.dart';

class Serviceitem extends StatelessWidget {
  const Serviceitem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailservice()));
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(5, 15, 5, 5),
        padding: EdgeInsets.fromLTRB(10,10,10,5),
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
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
                  Profil(rayon: 40, bordure: primary,),
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
                  Certifbadge(),

                  Container(
                    width: 90,
                    child: Row(
                      children: [
                        Icon(Icons.not_listed_location, color: Colors.grey,size: 15,),
                        Container(
                          width: 70,
                          child: Text("YopougonMMMM", maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey
                          ),),
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),

            VerticalDivider(

            ),
            EspacesH(largeur: 10),
            Container(
              width: 220,
              height: 120,
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
                    style: TextStyle(
                      fontSize: 12
                    ),
                  ),

                  EspacesV(hauteur: 8),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Boutondimensions(
                          hauteur: 20,
                          largeur: 60,
                          onTap: (){},
                          texte: "Lire plus",
                          couleur: primary[500]),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
