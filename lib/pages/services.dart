import 'package:flutter/material.dart';
import 'package:jobs/composants/appBarTitle.dart';
import 'package:jobs/composants/boutonDimensions.dart';
import 'package:jobs/composants/certifbadge.dart';
import 'package:jobs/composants/espaces.dart';
import 'package:jobs/composants/serviceItem.dart';
import 'package:jobs/pages/ajoutDeService.dart';
import '../composants/bouton_arrondi.dart';
import '../composants/profil.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Appbartitle(titre: "Services"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(

          children: [
            Serviceitem(),
            Serviceitem(),
            Serviceitem(),
            Serviceitem(),
            Serviceitem(),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Ajoutdeservice()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
