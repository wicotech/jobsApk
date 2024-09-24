import 'package:flutter/material.dart';
import 'package:jobs/colors.dart';
import 'package:jobs/composants/appBarTitle.dart';
import 'package:jobs/composants/boutonDimensions.dart';
import 'package:jobs/composants/certifbadge.dart';
import 'package:jobs/composants/contenuDrawer.dart';
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
        backgroundColor: primary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Mes services',style: TextStyle(
                color: Colors.white
            ),)
          ],
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(left: 20, bottom: 10),
              child: Profil(rayon: 80, bordure: Colors.white,))
        ],

      ),
      drawer: Drawer(
        child: Contenudrawer(),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20,0),
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
