import 'package:flutter/material.dart';
import 'package:jobs/colors.dart';
import 'package:jobs/composants/appBarTitle.dart';

import '../../composants/contenuDrawer.dart';
import '../../composants/profil.dart';

class Discussions extends StatefulWidget {
  const Discussions({super.key});

  @override
  State<Discussions> createState() => _DiscussionsState();
}

class _DiscussionsState extends State<Discussions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Discussions',style: TextStyle(
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
      body: Container(),
    );
  }
}
