import 'package:flutter/material.dart';
import 'package:jobs/colors.dart';
import 'package:jobs/composants/appBarTitle.dart';
import 'package:jobs/composants/espaces.dart';
import 'package:jobs/composants/parametresItem.dart';

import '../composants/profil.dart';

class Parametres extends StatefulWidget {
  const Parametres({super.key});

  @override
  State<Parametres> createState() => _ParametresState();
}

class _ParametresState extends State<Parametres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Appbartitle(titre: "Paramètres",)
          ],
        ),
      ),
      body: Container(
            padding: EdgeInsets.fromLTRB(15,20,15,0),
            child: ListView(
              children: [
                Container(
                  width: 200,
                    margin: EdgeInsets.only(top: 0, bottom: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: primary[200],
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Profil(rayon: 60, bordure: Colors.white),
                      EspacesH(largeur: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Nom et prénom",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),),
                          Text("exemple@gmail.com")
                        ],
                      )
                    ],
                  )
                ),
                EspacesV(hauteur: 20),
                Parametresitem(icone:  Icons.person, texte: "informations personelle",),
                Parametresitem(icone:  Icons.person, texte: "informations personelle",),
                Parametresitem(icone:  Icons.person, texte: "informations personelle",),

              ],
            ),
          ),
    );
  }
}
