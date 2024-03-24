import "package:flutter/material.dart";
class Home extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        
          child: Container(
            child: Text("welcome to 30 days of flutter  "),
          ),
        ),
        drawer: Drawer(),
      );

  }
}