import 'package:flutter/material.dart';
import 'package:jobs/colors.dart';
import 'package:jobs/composants/bouton_arrondi.dart';
import 'package:jobs/composants/espaces.dart';
import 'package:jobs/composants/profil.dart';
import 'package:readmore/readmore.dart';

import '../composants/certifbadge.dart';



class Detailservice extends StatefulWidget {
  const Detailservice({super.key});

  @override
  State<Detailservice> createState() => _DetailserviceState();
}

class _DetailserviceState extends State<Detailservice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Detaills',style: TextStyle(
                color: Colors.white
            ),)
          ],
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(left: 20, bottom: 10),
              child: Profil(rayon: 80, bordure: Colors.white,))
        ],

      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Profil(rayon: 50, bordure: primary),
                EspacesH(largeur: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                  ],
                )
              ],
            ),

            EspacesV(hauteur: 20),
            Text("Electricité Bâtiment",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            ),
            EspacesV(hauteur: 10),

            ReadMoreText("Lorem Ipsum is simply dummy text of "
                "the printing and typesetting industry. "
                "Lorem Ipsum has been the industry's standard "
                "dummy text ever since the 1500s, when an unknown "
                "printer took a galley of type and scrambled it"
                " to make a type specimen book. It has survived"
                "not only five centuries, but also the leap into "
                "electronic typesetting, remaining essentially "
                "unchanged. It was popularised in the 1960s with"
                "unchanged. It was popularised in the 1960s with"
                "unchanged. It was popularised in the 1960s with"
                "unchanged. It was popularised in the 1960s with"
                "unchanged. It was popularised in the 1960s with"
                "unchanged. It was popularised in the 1960s with"
                "unchanged. It was popularised in the 1960s with"
                " the release of Letraset sheets containing Lorem "
                "Ipsum passages, and more recently with desktop publis"
                "hing software like Aldus PageMaker including versions of Lorem Ipsum.",
                trimLines: 2,
                colorClickableText: primaryAccent[700],
                trimCollapsedText: 'Voir plus',
                trimExpandedText: 'Voir moins'
            ),

            Expanded(
              child: GridView.count(
                //physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 10, // Espacement entre colonnes
                mainAxisSpacing: 10, // Espacement entre rangées
                padding: EdgeInsets.all(10.0),
                children: [
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.blueGrey,
                      ),
                      Text("Description de l'image", maxLines: 4,
                        overflow: TextOverflow.ellipsis,)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.blueGrey,
                      ),
                      Text("Description de l'image", maxLines: 4,
                        overflow: TextOverflow.ellipsis,)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.blueGrey,
                      ),
                      Text("Description de l'image", maxLines: 4,
                        overflow: TextOverflow.ellipsis,)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.blueGrey,
                      ),
                      Text("Description de l'image", maxLines: 4,
                        overflow: TextOverflow.ellipsis,)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.blueGrey,
                      ),
                      Text("Description de l'image", maxLines: 4,
                        overflow: TextOverflow.ellipsis,)
                    ],
                  ),

                ],
              ),
            ),

            BoutonArrondi(onTap: (){}, texte: "Contacter le prestataire", couleur: primary, couleurTexte: Colors.white)

          ],
        ),
      ),
    );
  }
}
