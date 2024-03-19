import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();
  MoveTohome(BuildContext context) async{
    if(_formkey.currentState!.validate()){
                      setState(() {
                      changebutton = true;
                    });
                    await Future.delayed( Duration(seconds: 1),);
                       await Navigator. pushNamed(context, MyRoutes.homerouts);
                       setState(() {
                      changebutton = false;
                    });
  }
  }

  get container => null;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextField(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/hey_image.png",
                fit: BoxFit.cover, ),
              ),
              SizedBox(
                height: 20.0
                ),
          
          
              Text(
                "Welcome $name",
                 style: TextStyle(fontSize: 28 ,
                  fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                height: 20.0
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0 , horizontal : 32.0),
                child: Column(children: [TextFormField(
                  decoration: InputDecoration
                (hintText:"Enter username",
                labelText: "Username"),
                validator: (value){
                  if(value!.isEmpty){
                    return "Username cannot be empty";
                    
                  }
                  return null;
                },
                  onChanged: (value){
                    name = value;
                    setState(() {
          
                    });
                  },
          
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration
                (hintText:"Enter Password",
                labelText: "Password"),
                validator: (value){
                  if(value!.isEmpty){
                    return "Password cannot be empty.";
                  }
                  else if(value.length<6){
                    return "Password length should be 6.";
                  }
                  return null;
                },
                ),],),
              ),
                InkWell(
                  onTap: () => MoveTohome(context),
               child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width:  changebutton ? 50 : 150, 
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  "login",
                style: TextStyle (color: Colors. white,
                 fontWeight: FontWeight.bold, fontSize: 18),),
               decoration:  BoxDecoration( color: Colors. deepPurple,
              //  shape: changebutton? BoxShape.circle : BoxShape.rectangle,
                borderRadius:
                 BorderRadius.circular(
                  changebutton ? 50 : 8)
                ),
                 ),
             )
          //elevated button can also be replaced with  text button.
              // ElevatedButton(child: Text ("login"),
              // style: TextButton.styleFrom( minimumSize: Size(120, 50)),
              // onPressed: () {
              // Navigator. pushNamed(context, MyRoutes.homerouts);
              // },
              // )
            ],
          ),
        ),
      ),
    );
  }
}
