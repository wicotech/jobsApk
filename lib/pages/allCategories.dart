import 'package:flutter/material.dart';
import 'package:jobs/composants/appBarTitle.dart';
import 'package:jobs/composants/categorieTile.dart';


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
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
            Categorietile(path: "assets/images/arrosoir.png", nom: "jardinage",),
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
