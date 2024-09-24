import 'package:flutter/material.dart';
import 'package:jobs/colors.dart';

class Parametresitem extends StatelessWidget {
  const Parametresitem({super.key, required this.icone, required this.texte});

  final IconData icone;
  final String texte;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12)
          ),

          child: ListTile(
            leading: Icon(icone, size: 30, color: primary,),
            title: Text(texte,style: TextStyle(
                fontSize:15
            ),),
            trailing: Icon(Icons.arrow_right),

          ),
        ),
        //Container(
          //margin: EdgeInsets.only(left: 20),
          //child: Divider(
           // thickness: 0.2,
          //),
        //)
      ],
    );
  }
}
