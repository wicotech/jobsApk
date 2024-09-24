import 'package:flutter/material.dart';
import 'package:jobs/colors.dart';
import 'package:jobs/composants/parametresItem.dart';
import 'package:jobs/composants/profil.dart';

import '../pages/connexion.dart';
import '../pages/inscription.dart';
import '../pages/otp.dart';
import '../pages/parametres.dart';
import '../pages/typeDeCompte.dart';
import 'espaces.dart';


class Contenudrawer extends StatelessWidget {
  const Contenudrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                color: primary[200],
              ),
              Positioned(
                top: 40,
                left: 12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Profil(rayon: 60, bordure: Colors.white),
                    Text("Nom prénom", style: TextStyle(color: Colors.white),),
                    Text("exemple@gmail.com"),
                  ],
                ),
              )
            ],
          ),
          Text("Menu", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          EspacesV(hauteur: 20),

          GestureDetector(
            child: Parametresitem(icone: Icons.settings, texte: "Connexion",),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Connexion()));
            },
          ),
          GestureDetector(
            child: Parametresitem(icone: Icons.settings, texte: "Inscription",),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Inscription()));
            },
          ),
          GestureDetector(
            child: Parametresitem(icone: Icons.settings, texte: "Otp",),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Otp()));
            },
          ),
          GestureDetector(
            child: Parametresitem(icone: Icons.settings, texte: "Type De Compte",),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Typedecompte()));
            },
          ),

          GestureDetector(
            child: Parametresitem(icone: Icons.settings, texte: "Parametres",),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Parametres()));
            },
          ),

        ],
      ),
    );
  }
}
