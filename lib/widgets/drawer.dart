
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    
        return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Muhammad Abdullah"),
                accountEmail: Text("abdshk2399@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/hey_image.png"),
                ),
        
              ),
            ),
            ListTile(
             leading: Icon(CupertinoIcons.home),
             iconColor: Colors.white,
             title: Text("Home"),
             textColor: Colors.white,
            ),
              ListTile(
             leading: Icon(CupertinoIcons.profile_circled),
             iconColor: Colors.white,
             title: Text("Profile"),
             textColor: Colors.white,
            ),
              ListTile(
             leading: Icon(CupertinoIcons.mail),
             iconColor: Colors.white,
             title: Text("Email"),
             textColor: Colors.white,
            ),
              
      
          ],
        ),
      ),
    );
  }
}