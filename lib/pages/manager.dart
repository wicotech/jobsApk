import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jobs/colors.dart';
import 'package:jobs/pages/accueil.dart';
import 'package:jobs/pages/services.dart';
import 'Chats/discussions.dart';
import 'notifications.dart';

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
      body: [Accueil(),Services(), Notifications(), Discussions()][i],
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(15, 15 , 15, 15),
        margin: EdgeInsets.fromLTRB(15,10,15,10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primary
        ),
        child: GNav(
          onTabChange: (index){
            setState(() {
              i = index;
            });
          },
            rippleColor: Colors.white,
            hoverColor: Colors.white,
            haptic: true,
            tabBorderRadius: 15,
            tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 8)],
            duration: Duration(milliseconds: 900),
            gap: 8,
            color: Colors.white,
            activeColor: Colors.white,
            iconSize: 24,
            tabBackgroundColor: Colors.white.withOpacity(0.1),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Accueil',
              ),
              GButton(
                icon: Icons.shopping_bag,
                text: 'Services',
              ),
              GButton(
                icon: Icons.notifications,
                text: 'Notifications',
              ),
              GButton(
                icon: Icons.message,
                text: 'Discussions',
              )
            ]
        ),
      ),
    );
  }
}
