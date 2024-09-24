import 'package:flutter/material.dart';



class Categorietile extends StatelessWidget {
  const Categorietile({super.key, required this.path, required this.nom});

  final String path;
  final String nom;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12)
      ),

      child: ListTile(
        leading: Image.asset(path),
        title: Text(nom,style: TextStyle(
            fontSize:15
        ),)
      ),
    );
  }
}
