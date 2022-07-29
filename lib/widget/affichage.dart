import 'package:flutter/material.dart';
import 'connect.dart' as globals;
var text = globals.text;

class AfficheDonnee extends StatefulWidget {
  const AfficheDonnee({Key? key}) : super(key: key);

  @override
  State<AfficheDonnee> createState() => _AfficheDonneeState();
}

class _AfficheDonneeState extends State<AfficheDonnee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Affichage des donnees")),

body: Center(child: Text("Bienvenue: $text",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo,fontSize: 20.0))),
    );
  }
}
