import 'package:flutter/material.dart';
import 'package:jobs/composants/bouton_arrondi.dart';
import 'package:jobs/composants/espaces.dart';

import '../composants/socialMedias.dart';

class Connexion extends StatefulWidget {
  const Connexion({super.key});

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {

  //contrôleurs du formulaire et des champs d'entrées

  // contrôleur du formulaire
  final _formKey = GlobalKey<FormState>();
  // contrôleur du champ "mail"
  final mailController = TextEditingController();
  // contrôleur du champ "mot de passe"
  final passeController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 65),
              child: const Text(
                "Bienvenue à nouveau \n connectez-vous",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
                //height: double.infinity,
                width: double.infinity,

                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [

                      const EspacesV(hauteur: 15),

                      TextFormField(
                        controller: mailController,
                        decoration: InputDecoration(
                            hintText: "Mail",
                            labelText: "Votre adresse mail",
                            prefixIcon: const Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      const EspacesV(hauteur: 15),

                      TextFormField(
                        controller: passeController,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Mot de passe",
                            labelText: "Créez un mot de passe",
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black,),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      const EspacesV(hauteur: 15),

                      BoutonArrondi(onTap: () {}, texte: "S'inscrire", couleur: Colors.white, couleurTexte: Colors.black,),

                      const EspacesV(hauteur: 15),

                      const Row(children: [
                        Expanded(
                            child: Divider(
                              thickness: 0.5,
                            )),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Ou continuer avec", style: TextStyle(
                                color: Colors.white
                            ),)),
                        Expanded(
                            child: Divider(
                              thickness: 0.5,
                            )),
                      ]),
                      const EspacesV(hauteur: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Socialmedias(path:"assets/images/google.png"),
                              onTap: () {},
                            ),
                            const SizedBox(
                              width: 20,
                            ),

                            Socialmedias(path:"assets/images/apple.png"),
                          ]),
                      const EspacesV(hauteur: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Déjà un compte?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          EspacesH(largeur: 6),
                          Text(
                            "Connectez-vous?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
