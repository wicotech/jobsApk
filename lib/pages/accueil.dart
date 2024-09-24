import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobs/colors.dart';
import 'package:jobs/composants/categorie.dart';
import 'package:jobs/composants/espaces.dart';
import 'package:jobs/composants/profil.dart';
import 'package:jobs/pages/allCategories.dart';
import '../composants/bigCategorie.dart';
import '../composants/contenuDrawer.dart';
import '../composants/serviceItem.dart';
import '../composants/toutVoir.dart';


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
       backgroundColor: primary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [Text('Bienvenue',style: TextStyle(
                color: Colors.white
              ),), Text('Nom', style: TextStyle(
                color: Colors.white
              ),)],
            ),
          ],
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(left: 20),
              child: Profil(rayon: 80, bordure: Colors.white,))
        ],

      ),
      drawer: Drawer(
        child: Contenudrawer(),
      ),
      body: Stack(
        children: [
          //Background1(),
          Container(
                //padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    //bare de recherche
                    Container(
                      padding: const EdgeInsets.fromLTRB(30,10,30,20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                        color: primary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 290,
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.search),
                                  hintText: "Rechercher un service",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Icon(Icons.filter_list_outlined, color: primary,),
                          )
                        ],
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Catégories",
                                      style: TextStyle(
                                          fontSize: 18,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Toutvoir(onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Allcategories()));
                                    })
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
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Les plus demandés",
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                    Toutvoir(onTap: (){})
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Les Meilleurs prestataires",
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                    Toutvoir(onTap: (){})
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
        ],
      ),
    );
  }
}
