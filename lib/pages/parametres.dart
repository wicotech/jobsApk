import 'package:flutter/material.dart';
import 'package:jobs/composants/appBarTitle.dart';
import 'package:jobs/composants/backGrouds/backGround1.dart';
import 'package:jobs/composants/parametresItem.dart';

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
            padding: EdgeInsets.only(left: 20),
            child: ListView(
              children: [
                Parametresitem(icone:  Icons.person, texte: "informations personelle",),
                Parametresitem(icone:  Icons.person, texte: "informations personelle",),
                Parametresitem(icone:  Icons.person, texte: "informations personelle",),

              ],
            ),
          ),
    );
  }
}
