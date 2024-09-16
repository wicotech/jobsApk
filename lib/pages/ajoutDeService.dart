import 'package:flutter/material.dart';
import 'package:jobs/composants/appBarTitle.dart';
import 'package:jobs/composants/bouton_arrondi.dart';
import 'package:jobs/composants/espaces.dart';
import 'package:text_area/text_area.dart';



class Ajoutdeservice extends StatefulWidget {
  const Ajoutdeservice({super.key});

  @override
  State<Ajoutdeservice> createState() => _AjoutdeserviceState();
}

class _AjoutdeserviceState extends State<Ajoutdeservice> {
  // contrôleur du formulaire
  final _formKey = GlobalKey<FormState>();
  // contrôleur de champ "Nom"
  final _nomController = TextEditingController();
  // contrôleur du champ "mail"
  final _descriptionController = TextEditingController();
  // contrôleur du champ "mot de passe"
  final passeController = TextEditingController();
  // contrôleur du champ "confirmer le mot de passe"
  final cpasseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Appbartitle(titre: "Nouveau service",),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EspacesV(hauteur: 20),
            Text("Créons un nouvau service", style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold
            ),),
            EspacesV(hauteur: 40),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nomController,
                      decoration: InputDecoration(
                          hintText: "Nom du service",
                          labelText: "Nom du service",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    
                    EspacesV(hauteur: 15),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Description", style: TextStyle(
                          fontSize: 12
                        ),),
                        TextArea(
                          borderRadius: 30,
                          borderColor: const Color(0xFFCFD6FF),
                          textEditingController: _descriptionController,
                          errorText: 'Please type a reasn!',
                          validation: true,
                        ),
                      ],
                    ),

                    BoutonArrondi(onTap: (){},
                        texte: "Ajouter le service",
                        couleur: Colors.green,
                        couleurTexte: Colors.white)
              ],
            ))
          ],
        ),
      ),
    );
  }
}
