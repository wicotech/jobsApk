import 'package:flutter/material.dart';
import 'package:jobs/composants/appBarTitle.dart';
import 'package:jobs/composants/categorieTile.dart';
import 'package:jobs/composants/espaces.dart';


class Allcategories extends StatefulWidget {
  const Allcategories({super.key});

  @override
  State<Allcategories> createState() => _AllcategoriesState();
}

class _AllcategoriesState extends State<Allcategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Appbartitle(titre: "Toutes les catécories"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(child: Divider()),
                EspacesH(largeur: 8),
                Text("data"),
              ],
            ),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
            Categorietile(path: "assets/images/livraison-de-colis.png", nom: "jardinage",),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
            Categorietile(path: "assets/images/carton.png", nom: "jardinage",),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
            Row(
              children: [
                Expanded(child: Divider()),
                EspacesH(largeur: 8),
                Text("data"),
              ],
            ),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
          ],
        ),
      ),
    );
  }
}
