import 'package:flutter/material.dart';
import 'package:jobs/composants/categorie.dart';
import 'package:jobs/composants/espaces.dart';
import 'package:jobs/composants/parametresItem.dart';
import 'package:jobs/composants/profil.dart';
import 'package:jobs/pages/connexion.dart';
import 'package:jobs/pages/inscription.dart';
import 'package:jobs/pages/otp.dart';
import 'package:jobs/pages/parametres.dart';
import 'package:jobs/pages/typeDeCompte.dart';

import '../composants/bigCategorie.dart';
import '../composants/serviceItem.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [Text('Bienvenue',style: TextStyle(
                color: Colors.white
              ),), Text('Nom')],
            ),
          ],
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(left: 20),
              child: Profil(rayon: 80,))
        ],

      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
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
        ),
      ),
      body: Container(
            margin: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                //bare de recherche
                Container(
                  padding: const EdgeInsets.fromLTRB(30,0,30,5),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Rechercher un service",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                
                Expanded(
                  child: ListView(
                    children: [
                  
                      const EspacesV(hauteur: 25),
                  
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Catégories",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  "Tout voir",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          const EspacesV(hauteur: 10),
                          SizedBox(
                            height: 45,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                Categorie(
                                  path: "assets/images/arrosoir.png",
                                  nom: "jardinage",
                                ),
                                Categorie(
                                  path: "assets/images/camion-de-demenagement.png",
                                  nom: "démenagement",
                                ),
                                Categorie(
                                  path: "assets/images/carton.png",
                                  nom: "livraison",
                                ),
                                Categorie(
                                  path: "assets/images/apple.png",
                                  nom: "construction",
                                ),
                                Categorie(
                                  path: "assets/images/google.png",
                                  nom: "ménage",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                  
                      const EspacesV(hauteur: 25),
                  
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Les plus demandés",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  "Tout voir",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          const EspacesV(hauteur: 10),
                          SizedBox(
                            height: 120,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                //insérer les composant "Bigcatécorie" ici.
                                // NB: n'oubliez pas de préciser les paramètres path(cheemin d'accès à l'image),
                                // nom(le nom de la catégorie), et stat(le nombre de demmandes par jour)
                                Bigcategorie(
                                  path: "assets/images/carton.png",
                                  nom: "livraison",
                                  stat: "+1300 demandes/jour",
                                ),
                                Bigcategorie(
                                  path: "assets/images/arrosoir.png",
                                  nom: "livraison",
                                  stat: "+1300 demandes/jour",
                                ),
                                Bigcategorie(
                                  path: "assets/images/enseignements.png",
                                  nom: "livraison",
                                  stat: "+1300 demandes/jour",
                                ),
                                Bigcategorie(
                                  path: "assets/images/marteau.png",
                                  nom: "livraison",
                                  stat: "+1300 demandes/jour",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                  
                      const EspacesV(hauteur: 25),
                  
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Les Meilleurs prestataires",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  "Tout voir",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              children: [
                                Serviceitem(),
                                Serviceitem(),
                                Serviceitem()
                              ],
                            ),
                          )
                      ],)
                    ],
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
