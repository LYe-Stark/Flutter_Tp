import 'package:flutter/material.dart';
import 'acceuil.dart';
void main(){
  runApp(Pratique());
}

class Pratique extends StatelessWidget {
  const Pratique({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Acceuil(),
    );
  }
}

