import 'package:flutter/material.dart';
import 'package:tp_flutter/Widget/Affichage.dart';

var text="";
var cond=false;
var cond2=false;
var see = true;
var password = " ";
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SizedBox(
          child: Padding(
              padding: const EdgeInsets.all(28.0),
              child:Form(key: _formKey,child:  Column(
                children: [
                  SizedBox(height: 120,),
                  Center(child: Text("Se connecter",style: TextStyle(fontSize: 40.1, fontWeight: FontWeight.bold,))),
                  SizedBox(height: 30.0,),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Entrer un email:",
                        border: OutlineInputBorder(),
                        label: Text("Email")
                    ),
                    autocorrect: true,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value){
                      //validator
                    },
                    validator: (value){
                      if (value!.isEmpty || !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value))
                      {
                        cond=true;
                        return 'Entrer un email valide!';
                      }else{
                        cond=false;
                      }
                      text=value;
                      return null;
                    },

                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Entrer un mot de passe:",
                        border: OutlineInputBorder(),
                        label: Text("Mot de passe"),

                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.visibility,
                          color: Colors.blue,

                        ),
                        onPressed: () {
                          setState(() {
                            see = !see;

                          }
                          );
                        },
                      ),
                    ),
                    onChanged: ((texte){
                      setState((){
                        password = texte;

                      });
                    }



                    ),
                    keyboardType: TextInputType.visiblePassword,
                    onFieldSubmitted: (value){},
                    validator: (value) {
                      if (value!.isEmpty) {
                        cond2=true;
                        return 'Entrer un mot de passe valide!';
                      }else{cond2=false;}
                      return null;
                    },
                    obscureText: see,
                  ),

                  SizedBox(height: 10.0),
                  ElevatedButton(
                      onPressed:(){
                        _submit();
                        if(cond!=true&&cond2!=true){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AfficheDonnee()));
                        }
                      },
                      child: Text("Se Connecter",),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 72, 72)))),
                ],
              )
                ,)
          ),
        ),
      ),
    );
  }
}