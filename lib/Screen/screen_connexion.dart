import 'package:flutter/material.dart';
import 'package:tp_flutter/Widget/connect.dart';

class ScreenConnexion extends StatefulWidget {
  const ScreenConnexion({Key? key}) : super(key: key);

  @override
  State<ScreenConnexion> createState() => _ScreenConnexionState();
}

class _ScreenConnexionState extends State<ScreenConnexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Interface de connexion")),
      body: Login(),
    );
  }
}
