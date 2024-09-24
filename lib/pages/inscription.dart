import 'package:flutter/material.dart';
import 'package:jobs/colors.dart';
import 'package:jobs/composants/bouton_arrondi.dart';
import 'package:jobs/composants/espaces.dart';
import '../composants/socialMedias.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {

  //contrôleurs du formulaire et des champs d'entrées

  // contrôleur du formulaire
  final _formKey = GlobalKey<FormState>();
  // contrôleur de champ "Nom"
  final nomController = TextEditingController();
  // contrôleur du champ "mail"
  final mailController = TextEditingController();
  // contrôleur du champ "mot de passe"
  final passeController = TextEditingController();
  // contrôleur du champ "confirmer le mot de passe"
  final cpasseController = TextEditingController();


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          //height: double.infinity,
          child: Stack(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 65),
                child: const Text(
                  "Hello \ncréons un compte",
                  style: TextStyle(
                      fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 180),
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
                  //height: 550,
                  width: double.infinity,
        
                  decoration: const BoxDecoration(
                    color: primary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: nomController,
                          decoration: InputDecoration(
                              hintText: "Nom",
                              labelText: "Votre nom",
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12))),
                        ),
        
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
                                  borderRadius: BorderRadius.circular(12))),
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
                              suffixIcon: Icon(Icons.remove_red_eye, color: Colors.white,),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12))),
                        ),
                        const EspacesV(hauteur: 15),
                        TextFormField(
                          controller: cpasseController,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Confirmez le mot de passe",
                              labelText: "Confirmez le mot de passe",
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
        
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12))),
                        ),
                        const EspacesV(hauteur: 20),
        
                        BoutonArrondi(onTap: () {}, texte: "S'inscrire", couleur: primaryAccent[700], couleurTexte: Colors.black,),
        
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
                        Row(
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
                                  fontWeight: FontWeight.bold, color: primaryAccent[700]),
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
      ),
    );
  }
}
