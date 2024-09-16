import 'package:flutter/material.dart';
import 'package:jobs/composants/espaces.dart';
import 'package:jobs/composants/typeBouton.dart';


class Typedecompte extends StatefulWidget {
  const Typedecompte({super.key});

  @override
  State<Typedecompte> createState() => _TypedecompteState();
}

class _TypedecompteState extends State<Typedecompte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
        child: Column(
          children: [
            Text("Quel type de compte souhaitez vous créer ?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35
            ),),

            EspacesV(hauteur: 35),

            Typebouton(typeName: "Prestataire de services",),
            EspacesV(hauteur: 20),
            Typebouton(typeName: "Demandeur de services")
          ],
        ),
      ),
    );
  }
}
