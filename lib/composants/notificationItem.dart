import 'package:flutter/material.dart';
import 'package:jobs/colors.dart';


class Notificationitem extends StatelessWidget {
  const Notificationitem({super.key, required this.icone, required this.texte});

  final IconData icone;
  final String texte;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12)
      ),

      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icone, size: 30, color: primary,),
          ],
        ),
        title: Text(texte,style: TextStyle(
            fontSize:15
        ),),

      ),
    );
  }
}
