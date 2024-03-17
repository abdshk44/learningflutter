import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name = "";

  get container => null;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            TextField(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/login_image.png",
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
              labelText: "Password"),)],),
            ),

//elevated button can also be replaced with  text button.
            ElevatedButton(child: Text ("login"),
            style: TextButton.styleFrom( minimumSize: Size(120, 50)),
            onPressed: () {
              Navigator. pushNamed(context, MyRoutes.homerouts);
            },
            )
          ],
        ),
      ),
    );
  }
}
