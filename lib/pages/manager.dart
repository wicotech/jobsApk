import 'package:flutter/material.dart';
import 'package:jobs/pages/accueil.dart';
import 'package:jobs/pages/connexion.dart';
import 'package:jobs/pages/parametres.dart';
import 'package:jobs/pages/services.dart';

class Manager extends StatefulWidget {
  const Manager({super.key});

  @override
  State<Manager> createState() => _ManagerState();
}

class _ManagerState extends State<Manager> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [Accueil(),Services(), Parametres() ][i],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            i = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Accueil"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Services"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Parametres"),
        ],
      ),
    );
  }
}
