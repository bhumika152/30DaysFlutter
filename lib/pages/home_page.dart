import "package:firstapp/widgets/drawer.dart";
import "package:flutter/material.dart";
// statelesswidget = that cann't change its state
//Scaffold widget serves as a container for coordinating various
// visual elements of your application, including app bars, drawers,
// snack bars, floating action buttons, and bottom navigation bars
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
        drawer: MyDrawer(),
      );

  }
}