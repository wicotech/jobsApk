import 'package:flutter/material.dart';

class Parametresitem extends StatelessWidget {
  const Parametresitem({super.key, required this.icone, required this.texte});

  final IconData icone;
  final String texte;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ListTile(
          leading: Icon(icone, size: 30, color: Colors.green,),
          title: Text(texte,style: TextStyle(
              fontSize:15
          ),),
        ),
        Container(
          margin: EdgeInsets.only(left: 40),
          child: Divider(
            thickness: 0.8,
          ),
        )
      ],
    );
  }
}
