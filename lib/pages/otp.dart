import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:jobs/composants/bouton_arrondi.dart';
import 'package:jobs/composants/espaces.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 100, 40, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Un code a été envoyé à l'adresse mail "
                "que vous avez renseignée précedement. veuillez "
                "le saisir ici afin de confirmer qu’il s’agit bien du votre",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),),

            EspacesV(hauteur: 30),

            OtpTextField(
              numberOfFields: 4,
              fieldHeight: 60,
              fieldWidth: 50,
              focusedBorderColor: Colors.green,
              filled: true,
              borderColor: Colors.green,
              showFieldAsBox: true,
              onCodeChanged: (String code) {
              },
              onSubmit: (String verificationCode){

              }, // end onSubmit
            ),

            EspacesV(hauteur: 30),

            BoutonArrondi(onTap: (){}, texte: "Envoyer", couleur: Colors.green, couleurTexte: Colors.white,)
          ],
        ),

      )
    );
  }
}
