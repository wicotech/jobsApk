import 'package:flutter/material.dart';
import 'package:jobs/colors.dart';
import 'package:jobs/composants/appBarTitle.dart';
import 'package:jobs/composants/notificationItem.dart';

import '../composants/contenuDrawer.dart';
import '../composants/profil.dart';


class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Notifications',style: TextStyle(
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
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          children: [
            Notificationitem(icone: Icons.message, texte: "Nouveau gombeau g"
                "ombeaugombeaugombeau gombeau"
                "ombeaugombeaugombeau gombeau"),
            Notificationitem(icone: Icons.message, texte: "Nouveau gombeau g"
                "ombeaugombeaugombeau gombeau"
                "ombeaugombeaugombeau gombeau"),
            Notificationitem(icone: Icons.message, texte: "Nouveau gombeau g"
                "ombeaugombeaugombeau gombeau"
                "ombeaugombeaugombeau gombeau"),
          ],
        
        ),
      ),
    );
  }
}
