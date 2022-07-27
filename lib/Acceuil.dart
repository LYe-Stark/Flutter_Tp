import 'package:flutter/material.dart';
import 'Screen/screen_connexion.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mon  TP  FLUTTER"),
        backgroundColor: Color.fromARGB(255, 11, 17, 49),
      ),
      body: Center(child: Text("Bienvenue à vous !!! ",style: TextStyle(color: Colors.black,fontSize: 40.1,fontWeight: FontWeight.bold),)),
      drawer: Drawer(child: ListView(children: [

        ListTile(
          title: Text("Menu de Connexion",style: TextStyle(fontSize: 10.1,color: Colors.white)),
          leading: Icon(Icons.menu,color: Colors.white,size: 20.1),
          tileColor: Colors.blue,

        ),
        ListTile(
          title: Text("Favoris",style: TextStyle(color: Colors.indigo,fontSize: 16.0,fontWeight: FontWeight.bold)),
        ),

        ListTile(
          title: Text("Se connecter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.1)),
          leading: Icon(Icons.login,color: Colors.teal),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenConnexion(),));
          },

        ),

        ListTile(
          title: Text("S'inscrire",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.1)),
          leading: Icon(Icons.account_box_sharp,color: Colors.blueAccent),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenConnexion(),));
          },
        )

      ],)
      ),
    );
  }
}
