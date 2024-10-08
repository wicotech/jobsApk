import 'package:flutter/material.dart';



class Typebouton extends StatelessWidget {
  const Typebouton({super.key, required this.typeName});

  final String typeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(typeName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),),
          GestureDetector(
            onTap: (){},
            child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Icon(Icons.remove_red_eye, color: Colors.white, size: 32,)),
          )
        ],
      ),
      
    );
  }
}
