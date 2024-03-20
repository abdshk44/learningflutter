import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';


class HomePage extends StatelessWidget {
  
   final int days = 30;
   final String name = "Abdullah";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Abd Mart"),
      ),
        body:Center(
          child: Container(
            child: Text("welocome to $days days of flutter by $name")
          ),
        ),
        drawer:  const MyDrawer(),
      );
  }
}